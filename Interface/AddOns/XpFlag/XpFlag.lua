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
local playerBar = nil;

local LibStub = LibStub;
local XpFlag = LibStub("AceAddon-3.0"):NewAddon("XpFlag", "AceEvent-3.0");

local maxWidth = _G['UIParent']:GetWidth()

local defaults = {
  version = version,
  showself = true,
  selfcolor = {0.25, 0.5, 1, 0.8},
  selfcolorrested = {0.5, 0.25, 1, 0.8},
  flipmarkers = true,
  width = 16,
  height = 16
};

function XpFlag:OnInitialize()
	self.db = defaults;
		
	XpFlag:RegisterEvent("PLAYER_ENTERING_WORLD");
	XpFlag:RegisterEvent("PLAYER_XP_UPDATE");
	XpFlag:RegisterEvent("PLAYER_LEVEL_UP");
	XpFlag:RegisterEvent("CHAT_MSG_ADDON");
	XpFlag:RegisterEvent("FRIENDLIST_UPDATE");

	RegisterAddonMessagePrefix("XpFlag")
	RegisterAddonMessagePrefix("XpFlagRequest")	
	RegisterAddonMessagePrefix("XpFlagCancel")	

end

function XpFlag:PLAYER_ENTERING_WORLD(event)

	if XpFlag.db.showself then
		XpFlag.UpdateMark(playerNameRealm,UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
		XpFlag.CreateBar(UnitXP("PLAYER"), UnitXPMax("PLAYER"))
	end

	ShowFriends();
	XpFlag:FRIENDLIST_UPDATE();

	XpFlag:UnregisterEvent("PLAYER_ENTERING_WORLD");

end

function XpFlag:PLAYER_XP_UPDATE(event,unit)
	if unit == "player" then	
		local value,maxvalue = UnitXP("PLAYER"),UnitXPMax("PLAYER");

		for k,v in pairs(friends) do
			SendAddonMessage("XpFlag",value..":"..maxvalue..":"..playerLevel..":"..playerClass,"WHISPER",k);
		end

		if XpFlag.db.showself then
			XpFlag.UpdateMark(playerNameRealm,value,maxvalue,playerLevel,playerClass);
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
			end
		elseif pre == "XpFlagCancel" then
			if chan == "WHISPER" then
				if marks[sender] then
					XpFlag.DeleteMark(sender);
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

function XpFlag.RefreshMarks()
	for k,v in pairs(marks) do
		if not (friends[k] or (k == playerNameRealm)) then
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
				GameTooltip:AddLine("XP: "..v.value.." / "..v.maxvalue.." ("..string.format("%.2f",v.value/v.maxvalue*100).."%)", 1, 1, 1, 1);				

				local rested = GetXPExhaustion()
				if rested and v.player then
					GameTooltip:AddLine("Rested: "..rested.." ("..string.format("%.2f",rested/v.maxvalue*100).."%)", 1, 1, 1, 1);
				end

			end
		end
		GameTooltip:Show();
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

	if GetXPExhaustion() then
		playerBar.texture:SetVertexColor(unpack(XpFlag.db.selfcolorrested));	
	else		
		playerBar.texture:SetVertexColor(unpack(XpFlag.db.selfcolor));	
	end

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
	marks[name]:SetPoint("TOP", _G['UIParent'], "TOPLEFT", 0, 0);	
	marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle.tga");
	marks[name]:SetFrameStrata("DIALOG");
	marks[name]:Show();

	if XpFlag.db.flipmarkers then
		marks[name].texture:SetTexCoord(0,1,1,0);
	else
		marks[name].texture:SetTexCoord(0,1,0,1);
	end

	if name == playerNameRealm then

		if GetXPExhaustion() then
			marks[name].texture:SetVertexColor(unpack(XpFlag.db.selfcolorrested));
		else
			marks[name].texture:SetVertexColor(unpack(XpFlag.db.selfcolor));		
		end

		marks[name]:SetFrameLevel(5)
		marks[name].player = true;
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
	elseif tonumber(level) > playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle-plus.tga");
	else
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle.tga");		
	end
	
	if marks[name] then		
		marks[name]:ClearAllPoints();	
		marks[name]:SetPoint("TOPLEFT", _G['UIParent'], maxWidth * value/maxvalue, 0);	
	end

	if marks[name].player == true and playerBar then	
		playerBar:SetWidth((maxWidth * value/maxvalue) + 8);
		if GetXPExhaustion() then
			marks[name].texture:SetVertexColor(unpack(XpFlag.db.selfcolorrested));
			playerBar.texture:SetVertexColor(unpack(XpFlag.db.selfcolorrested));
		else
			marks[name].texture:SetVertexColor(unpack(XpFlag.db.selfcolor));
			playerBar.texture:SetVertexColor(unpack(XpFlag.db.selfcolor));
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

--[[
https://us.battle.net/forums/en/wow/topic/20741994059
http://www.wowinterface.com/forums/showthread.php?t=35104
https://github.com/zorker/rothui/blob/bd702c2abaa670c05c5fdd14cd4d2519a2dc201e/wow7.0/_AddonTests/rAnimationWidget/core.lua
]]--
