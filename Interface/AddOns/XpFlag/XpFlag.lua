local version = GetAddOnMetadata("XpFlag", "Version");
local playerClass = select(2,UnitClass("PLAYER"));
local playerName = UnitName("PLAYER");
local playerLevel = UnitLevel("PLAYER");
local playerFaction = UnitFactionGroup("PLAYER") == "Alliance" and 1 or 0;
local playerRealm = GetRealmName();
local playerNameRealm = playerName.."-"..playerRealm

local MAX_PLAYER_LEVEL,BNET_CLIENT_WOW = MAX_PLAYER_LEVEL,BNET_CLIENT_WOW;
local RAID_CLASS_COLORS = RAID_CLASS_COLORS;
local UnitXP,UnitXPMax = UnitXP,UnitXPMax;
local GetNumFriends, GetFriendInfo = GetNumFriends, GetFriendInfo;
local BNGetNumFriends,BNGetFriendInfo,BNGetNumFriendGameAccounts,BNGetFriendGameAccountInfo = BNGetNumFriends,BNGetFriendInfo,BNGetNumFriendGameAccounts,BNGetFriendGameAccountInfo;
local SendAddonMessage = SendAddonMessage;
local wipe,pairs = wipe,pairs;
local IsInGuild,GetNumGuildMembers,GetGuildRosterInfo = IsInGuild,GetNumGuildMembers,GetGuildRosterInfo;

local marks = {};
local friends = {};
local battlenet = {};
local guild = {};
local playerBar = nil;

local LibStub = LibStub;
local XpFlag = LibStub("AceAddon-3.0"):NewAddon("XpFlag", "AceEvent-3.0");

local maxWidth = 1920

local defaults = {
  version = version,
  showself = true,
  selfcolor = {Red = 0.25, Green = 0.5, Blue = 1},
  selfcolorrested = {Red = 0.5, Green = 0.25, Blue = 1},
  flipmarkers = true,
  width = 16,
  height = 16,
  opacity = 0.5,
  voffset = 0,
  guild = true,
};

function XpFlag:OnInitialize()
	self.db = defaults;
		
	XpFlag:RegisterEvent("PLAYER_ENTERING_WORLD");
	XpFlag:RegisterEvent("PLAYER_XP_UPDATE");
	XpFlag:RegisterEvent("PLAYER_LEVEL_UP");
	XpFlag:RegisterEvent("CHAT_MSG_ADDON");
	XpFlag:RegisterEvent("FRIENDLIST_UPDATE");

	XpFlag:RegisterEvent("BN_FRIEND_TOON_ONLINE","BATTLENET");
	XpFlag:RegisterEvent("BN_FRIEND_TOON_OFFLINE","BATTLENET");
	XpFlag:RegisterEvent("BN_FRIEND_ACCOUNT_ONLINE","BATTLENET");
	XpFlag:RegisterEvent("BN_FRIEND_ACCOUNT_OFFLINE","BATTLENET");
  
	if XpFlag.db.guild then
		XpFlag:RegisterEvent("GUILD_ROSTER_UPDATE");
	end

	RegisterAddonMessagePrefix("XpFlag")
	RegisterAddonMessagePrefix("XpFlagRequest")	
	RegisterAddonMessagePrefix("XpFlagCancel")	

end

function XpFlag:PLAYER_ENTERING_WORLD(event)

    maxWidth = _G['UIParent']:GetWidth()

    XpFlag:UnregisterEvent("PLAYER_ENTERING_WORLD");
  
	if XpFlag.db.showself then
		XpFlag.UpdateMark(playerNameRealm,UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
		XpFlag.CreateBar(UnitXP("PLAYER"), UnitXPMax("PLAYER"))
	end

	if XpFlag.db.guild then
		XpFlag:RegisterEvent("PLAYER_GUILD_UPDATE");
	end

	ShowFriends();
	XpFlag:FRIENDLIST_UPDATE();

	if BNGetNumFriends() > 0 then
		XpFlag:BATTLENET();
	end
end

function XpFlag:PLAYER_GUILD_UPDATE(event,unit)
	if unit == "player" then
		if IsInGuild() then
			if XpFlag.db.guild then
				SendAddonMessage("XpFlag",UnitXP("PLAYER")..":"..UnitXPMax("PLAYER")..":"..playerLevel..":"..playerClass,"GUILD");
				SendAddonMessage("XpFlagRequest",version,"GUILD");
			end
			GuildRoster();
		end
		XpFlag:UnregisterEvent("PLAYER_GUILD_UPDATE");
	end
end

function XpFlag:PLAYER_XP_UPDATE(event,unit)
	if unit == "player" then	
		local value,maxvalue = UnitXP("PLAYER"),UnitXPMax("PLAYER");
		for k,v in pairs(friends) do
			SendAddonMessage("XpFlag",value..":"..maxvalue..":"..playerLevel..":"..playerClass,"WHISPER",k);
		end
		for k,v in pairs(battlenet) do
			SendAddonMessage("XpFlag",value..":"..maxvalue..":"..playerLevel..":"..playerClass,"WHISPER",k);
		end
		if XpFlag.db.showself then
			XpFlag.UpdateMark(playerNameRealm,value,maxvalue,playerLevel,playerClass);
		end
		if XpFlag.db.guild and IsInGuild() then
			SendAddonMessage("XpFlag",value..":"..maxvalue..":"..playerLevel..":"..playerClass,"GUILD");
		end
	end
end

function XpFlag:PLAYER_LEVEL_UP(event,level)
	playerLevel = tonumber(level);
end

function XpFlag:CHAT_MSG_ADDON(event,pre,msg,chan,sender)

	if sender ~= playerNameRealm then
		if pre == "XpFlag" then
			if chan == "WHISPER" then
				if friends[sender] or battlenet[sender] then
					local value,maxvalue,level,class = msg:match("^(.-):(.-):(.-):(.-)$");
					--print("Received",value,maxvalue,level,class)
					XpFlag.UpdateMark(sender,value,maxvalue,level,class);
				end
			elseif chan == "GUILD" then
				if XpFlag.db.guild then
					local value,maxvalue,level,class = msg:match("^(.-):(.-):(.-):(.-)$");
					XpFlag.UpdateMark(sender,value,maxvalue,level,class);
				end
			end
		elseif pre == "XpFlagRequest" then
			if chan == "WHISPER" then

				

				if friends[sender] or battlenet[sender] then

					--print("receive XpFlagRequest WHISPER", sender)

					SendAddonMessage("XpFlag",UnitXP("PLAYER")..":"..UnitXPMax("PLAYER")..":"..playerLevel..":"..playerClass,"WHISPER",sender);
					if not marks[sender] then
						SendAddonMessage("XpFlagRequest",version,"WHISPER",sender);
					end
				end
			elseif chan == "GUILD" then
				if XpFlag.db.guild then
					SendAddonMessage("XpFlag",UnitXP("PLAYER")..":"..UnitXPMax("PLAYER")..":"..playerLevel..":"..playerClass,"GUILD");
				end
			end
		elseif pre == "XpFlagCancel" then
			if chan == "WHISPER" then
				if marks[sender] then
					XpFlag.DeleteMark(sender);
				end
			elseif chan == "GUILD" then
				if marks[sender] then
					guild[sender] = nil;
					XpFlag.RefreshMarks();
				end
			end
		end
	end
end

function XpFlag:FRIENDLIST_UPDATE()
	local allFriends, onlineFriends = GetNumFriends()
	
	for i=1,allFriends do
		local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i);		
		if name and connected and not friends[name.."-"..playerRealm] then
			friends[name.."-"..playerRealm] = true;
			SendAddonMessage("XpFlagRequest",version,"WHISPER",name.."-"..playerRealm);
			--print("send - FRIENDLIST_UPDATE XpFlagRequest", version,"WHISPER",name.."-"..playerRealm)
		elseif name and not connected and friends[name.."-"..playerRealm] then 								
			friends[name.."-"..playerRealm] = nil;
		end		
	end

	XpFlag.RefreshMarks();
end

function XpFlag:BATTLENET()
	wipe(battlenet);
	for i=1,BNGetNumFriends() do
		local presenceID, givenName, surname, toonName, toonID, client, isOnline = BNGetFriendInfo(i);
		if isOnline then
			for x=1,BNGetNumFriendGameAccounts(i) do
				local _,name,client,realm,faction = BNGetFriendGameAccountInfo(i,x);
				if name and (client == BNET_CLIENT_WOW) and (faction == playerFaction) and (realm == playerRealm) then
					if XpFlag.db.friends[playerNameRealm] then
						if not marks[name] then
							SendAddonMessage("XpFlagRequest",version,"WHISPER",name);
						end
						battlenet[name] = true;
					end
				end
			end
		end
	end
	XpFlag.RefreshMarks();
end

function XpFlag:GUILD_ROSTER_UPDATE()
	wipe(guild);
	for i=1,GetNumGuildMembers(true) do
		local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile = GetGuildRosterInfo(i);
		if name and online then
			guild[name] = true;
		end
	end
	XpFlag.RefreshMarks();
end

function XpFlag.RefreshMarks()
	for k,v in pairs(marks) do
		if not (friends[k] or battlenet[k] or (XpFlag.db.guild and guild[k]) or (k == playerNameRealm)) then
			XpFlag.DeleteMark(k);
		end
	end
end

XpFlag.tooltip = CreateFrame("Frame");
XpFlag.tooltip:Hide();
XpFlag.tooltip.delay = 0.2;
XpFlag.tooltip:SetScript("OnUpdate",function(self,elapsed)
	XpFlag.tooltip.delay = XpFlag.tooltip.delay - elapsed;
	if XpFlag.tooltip.delay <= 0 then
		GameTooltip:ClearLines();
		GameTooltip:AddLine("XpFlag");

		for k,v in pairs(marks) do
			if v:IsMouseOver() then
				GameTooltip:AddLine(" ");
				GameTooltip:AddLine(k, RAID_CLASS_COLORS[v.class].r, RAID_CLASS_COLORS[v.class].g, RAID_CLASS_COLORS[v.class].b, 1);
				GameTooltip:AddLine("Level: "..v.level, 1, 1, 1, 1);
				GameTooltip:AddLine("XP: "..v.value.." / "..v.maxvalue, 1, 1, 1, 1);
				GameTooltip:AddLine("Percentage: "..string.format("%.2f",v.value/v.maxvalue*100).."%", 1, 1, 1, 1);
			end
		end
		GameTooltip:Show();
		delay = 0.1;
	end
end);


function XpFlag.CreateBar(value, maxvalue) 
	playerBar = CreateFrame("Frame",'XPFLag-Playerbar');
	playerBar.texture = playerBar:CreateTexture(nil,"OVERLAY");  
	playerBar:SetHeight(1);
	playerBar:SetWidth((maxWidth * value/maxvalue) + 8);
	playerBar:SetParent(_G['UIParent']);
	playerBar.texture:SetAllPoints(playerBar);
	playerBar:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0);	
	playerBar.texture:SetTexture("Interface\\AddOns\\XpFlag\\bar.blp");
	playerBar.texture:SetVertexColor(XpFlag.db.selfcolor.Red,XpFlag.db.selfcolor.Green,XpFlag.db.selfcolor.Blue,XpFlag.db.opacity);
	playerBar:SetFrameLevel(5)
	playerBar:SetFrameStrata("DIALOG");
	playerBar:Show();
end

function XpFlag.CreateMark(name, class)
    
	if marks[name] then return end

	--print("CreateMark", name)

	marks[name] = CreateFrame("Frame",'XPFLag-'..name);
	marks[name].texture = marks[name]:CreateTexture(nil,"OVERLAY");  
	marks[name]:SetHeight(XpFlag.db.height);
	marks[name]:SetWidth(XpFlag.db.width);
	marks[name]:SetParent(_G['UIParent']);
	marks[name].texture:SetAllPoints(marks[name]);
	marks[name]:SetPoint("TOP", _G['UIParent'], "TOPLEFT", 0, XpFlag.db.voffset);	
	marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle.tga");
	marks[name]:SetFrameStrata("DIALOG");
	marks[name]:Show();

	if XpFlag.db.flipmarkers then
		marks[name].texture:SetTexCoord(0,1,1,0);
	else
		marks[name].texture:SetTexCoord(0,1,0,1);
	end

	if name == playerNameRealm then
		marks[name]:SetFrameLevel(5)
		marks[name].player = true;
		marks[name].texture:SetVertexColor(XpFlag.db.selfcolor.Red,XpFlag.db.selfcolor.Green,XpFlag.db.selfcolor.Blue,1);
	else
		local uclass = class:upper()
		marks[name]:SetFrameLevel(1)
		marks[name].texture:SetVertexColor(
			RAID_CLASS_COLORS[uclass].r,
			RAID_CLASS_COLORS[uclass].g,
			RAID_CLASS_COLORS[uclass].b,
			1
		);
	end

	marks[name]:EnableMouse();

	marks[name]:SetScript("OnEnter",function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		XpFlag.tooltip:Show();
	end);

	marks[name]:SetScript("OnLeave",function(self)
		XpFlag.tooltip:Hide();
		GameTooltip:Hide();
	end);

end

function XpFlag.UpdateMark(name, value, maxvalue, level, class)

	--print("UpdateMark", name)

	if not marks[name] then
		--print("before create", name)
		XpFlag.CreateMark(name, class);
	end
  
	if value then
		marks[name].value = value;
	else
		value = marks[name].value;
	end

  
	if maxvalue then
		marks[name].maxvalue = maxvalue;
	else
		maxvalue = marks[name].maxvalue;
	end
  

	if level then
		marks[name].level = level;
	else
		level = marks[name].level;
	end

	
	if class then
		marks[name].class = class;
	else
		class = marks[name].class;
	end

	
	if tonumber(level) < playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle-minus.tga");
		marks[name]:SetHeight(XpFlag.db.height * 0.8);
		marks[name]:SetWidth(XpFlag.db.width * 0.8);		
	elseif tonumber(level) > playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle-plus.tga");
		marks[name]:SetHeight(XpFlag.db.height * 1.2);
		marks[name]:SetWidth(XpFlag.db.width * 1.2);
	else
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle.tga");		
		marks[name]:SetHeight(XpFlag.db.height);
		marks[name]:SetWidth(XpFlag.db.width);
	end
	
	if marks[name] then		
		marks[name]:ClearAllPoints();	
		marks[name]:SetPoint("TOPLEFT", _G['UIParent'], maxWidth * value/maxvalue, XpFlag.db.voffset);	
	end


	if marks[name].player == true and playerBar then	
		playerBar:SetWidth((maxWidth * value/maxvalue) + 8);
		if GetXPExhaustion() > 0 then
			marks[name].texture:SetVertexColor(XpFlag.db.selfcolorrested.Red,XpFlag.db.selfcolorrested.Green,XpFlag.db.selfcolorrested.Blue,1);
			playerBar.texture:SetVertexColor(XpFlag.db.selfcolorrested.Red,XpFlag.db.selfcolorrested.Green,XpFlag.db.selfcolorrested.Blue,1);
		else
			marks[name].texture:SetVertexColor(XpFlag.db.selfcolor.Red,XpFlag.db.selfcolor.Green,XpFlag.db.selfcolor.Blue,1);
			playerBar.texture:SetVertexColor(XpFlag.db.selfcolor.Red,XpFlag.db.selfcolor.Green,XpFlag.db.selfcolor.Blue,1);
		end
	end

	if level == MAX_PLAYER_LEVEL then
		playerBar:Hide();
		marks[name]:Hide();
	end
	
end

function XpFlag.DeleteMark(name)
	if not marks[name] then return end
	marks[name]:Hide();
	marks[name] = nil;
end
