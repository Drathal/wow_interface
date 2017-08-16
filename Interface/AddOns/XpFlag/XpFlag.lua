local D, C, L = unpack(select(2, ...))

local version = GetAddOnMetadata("XpFlag", "Version");
local playerClass = select(2,UnitClass("PLAYER"));
local playerName = UnitName("PLAYER");
local playerLevel = UnitLevel("PLAYER");
local playerFaction = UnitFactionGroup("PLAYER") == "Alliance" and 1 or 0;
local playerRealm = GetRealmName();
local playerNameRealm = playerName.."-"..playerRealm

local MAX_PLAYER_LEVEL,BNET_CLIENT_WOW = MAX_PLAYER_LEVEL,BNET_CLIENT_WOW;
local BONUS_OBJECTIVE_EXPERIENCE_FORMAT = BONUS_OBJECTIVE_EXPERIENCE_FORMAT;
local RAID_CLASS_COLORS = RAID_CLASS_COLORS;
local UnitXP,UnitXPMax = UnitXP,UnitXPMax;
local GetNumFriends, GetFriendInfo = GetNumFriends, GetFriendInfo;
local BNGetNumFriends,BNGetFriendInfo,BNGetNumFriendGameAccounts,BNGetFriendGameAccountInfo = BNGetNumFriends,BNGetFriendInfo,BNGetNumFriendGameAccounts,BNGetFriendGameAccountInfo;
local SendAddonMessage = SendAddonMessage;
local GetFramerate = GetFramerate
local wipe, pairs = wipe, pairs;
local IsInGuild,GetNumGuildMembers,GetGuildRosterInfo = IsInGuild,GetNumGuildMembers,GetGuildRosterInfo;

local min = math.min;
local max = math.max;

local marks = {};
local friends = {};
local playerBar = nil;

local XpFlag = D;
local f = D.f

local defaults = {
  version = version,
  showself = true,
  selfcolor = {0.25, 0.5, 1, 1},
  selfcolorrested = {0.5, 0.25, 1, 1},
  flipmarkers = true,
  width = 15,
  height = 15
}

D.tooltip = D.createTooltip(marks);

D.f:SetScript('OnUpdate', function(self, elapsed)
	if D.throttle(self, elapsed) then return end

	D.animateWidth(playerBar)
	D.animateMarks(marks)
end)

function D:OnInitialize()
	self.db = defaults;
		
	D:RegisterEvent("PLAYER_ENTERING_WORLD");
	D:RegisterEvent("PLAYER_XP_UPDATE");
	D:RegisterEvent("PLAYER_LEVEL_UP");
	D:RegisterEvent("CHAT_MSG_ADDON");
	D:RegisterEvent("FRIENDLIST_UPDATE");
	D:RegisterEvent("PLAYER_UPDATE_RESTING");

	D:RegisterMessage("XpFlag-sparkmodel-show", D.onShowSparkModel)
	D:RegisterMessage("XpFlag-sparkmodel-hide", D.onHideSparkModel)
	
	RegisterAddonMessagePrefix("XpFlag")
end

function XpFlag.CreateMark(name, class)
    
	if marks[name] then return end

	marks[name] = CreateFrame("Frame",'XPFLag-'..name);
	marks[name].texture = marks[name]:CreateTexture(nil,"OVERLAY");  
	marks[name]:SetHeight(XpFlag.db.height);
	marks[name]:SetWidth(XpFlag.db.width);
	marks[name]:SetParent(_G['UIParent']);
	marks[name].texture:SetAllPoints(marks[name]);
	marks[name]:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0);	
	marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\media\\circle.tga");
	marks[name]:SetFrameStrata("DIALOG");
	marks[name]:Show();

	marks[name].name = name
	marks[name].class = class

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

	if name ~= playerNameRealm then return end
	

	marks[name].model = D.createSparkModel(marks[name])

	marks[name].xp = {}

	for i = 1, 10, 1 do
		marks[name].xp[i] = XpFlag.AddSpark(marks[name], i)
	end

	marks[name].Play = function(xp)
		--print("try play")
		for k,spark in pairs(marks[name].xp) do
			if not spark.ag:IsPlaying() then
			
				local _, _, _, xOfs, yOfs = marks[name]:GetPoint()
				local x = xOfs * UIParent:GetScale()

				spark:ClearAllPoints()
				spark:SetPoint("TOP", _G[UIParent], "TOPLEFT", x + 16, -20);

				local d = math.random(1,2)
		        spark.ag.a1:SetOffset( math.random(-15,15), math.random(-120,-80))    
		    	spark.ag.a1:SetDuration(d)
		    	spark.ag.a2:SetDuration(d)

		    	spark.xp = xp
				spark.ag:Play()
				break 
			end
		end			
	end

end

function XpFlag.AddSpark(parent, num)	

	local f = CreateFrame("Frame");
	f:SetHeight(16);
	f:SetWidth(32);
	f:SetParent( _G[UIParent] );	
	f:SetPoint("TOP", _G[UIParent], "TOPLEFT", 960, -20);		

	--local t = f:CreateTexture(nil, "BACKGROUND", nil, 0)
	--t:SetTexture(1,0,1)
	--t:SetVertexColor(1,0,1)
	--t:SetAllPoints()

	--f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	--f.text:SetPoint("CENTER")
	
	f.text = f:CreateFontString(nil, "OVERLAY")
  	f.text:SetPoint("CENTER")
  	f.text:SetFont( GameFontNormal:GetFont(), 8, "OUTLINE")
  	f.text:SetShadowColor(0, 0, 0, 0)
  	f.text:SetShadowOffset(0, 0)
  	f.text:SetTextColor(1,0.82,0,1)
  	f.text:SetText("")

	f.ag = f:CreateAnimationGroup() 
	--f.ag:SetLooping("REPEAT")
	    
    f.ag.a1 = f.ag:CreateAnimation("Translation")
    f.ag.a1:SetParent(f.ag);
    f.ag.a1:SetOffset(0,0)    
    f.ag.a1:SetDuration(2)
    f.ag.a1:SetSmoothing("IN_OUT")

    f.ag.a2 = f.ag:CreateAnimation("Alpha")	
    f.ag.a2:SetParent(f.ag);
	f.ag.a2:SetFromAlpha(1)
	f.ag.a2:SetToAlpha(0)
    f.ag.a2:SetDuration(2)
    f.ag.a2:SetSmoothing("IN_OUT")   

    f.ag:HookScript("OnPlay", function(self)
    	--print("OnPlay", num)
    	local xp = self:GetParent().xp    	
    	if not xp or xp == "0" then    
			self:GetParent().text:SetText("")
			f.ag:Stop()
			--print("OnPlay stop", num)
    	else    		
			self:GetParent().text:SetFormattedText("%s XP" , tostring(xp))
    	end  		
	end) 

    f.ag:HookScript("OnFinished", function(self)
    	--print("OnFinished", num)
    	self:GetParent().text:SetText("")
	end) 

    return f

end	

function XpFlag.UpdateMark(name, value, maxvalue, level, class)

	if not marks[name] then
		XpFlag.CreateMark(name, class);
	end

	marks[name].prev = marks[name].value or value;  
	marks[name].value = value;
	marks[name].maxvalue = maxvalue;
	marks[name].level = level;
	marks[name].gain = tonumber(value) - tonumber(marks[name].prev) or 0

	marks[name].to = D.screenWidth * value/maxvalue;	

	if marks[name].player and marks[name].gain > 0 then		
		D:SendMessage("XpFlag-sparkmodel-show", marks[name])
	end	
	
	if tonumber(level) < playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\media\\circle-minus.tga");	
	elseif tonumber(level) > playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\media\\circle-plus.tga");
	else
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\media\\circle.tga");		
	end
	
	if not marks[name].player then return end

	local color = GetXPExhaustion() and XpFlag.db.selfcolorrested or XpFlag.db.selfcolor;
	marks[name].texture:SetVertexColor(unpack(color));

	if marks[name].gain > 0 then
		marks[name].Play(marks[name].gain) 
	end

	if level == MAX_PLAYER_LEVEL then
		marks[name]:Hide();
	end	
	
end

function XpFlag.UpdatePlayerBar()
	if not playerBar then return end

	if playerLevel == MAX_PLAYER_LEVEL then
		playerBar:Hide();
		return
	end

	playerBar.to = (D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER"))

	local color = GetXPExhaustion() and XpFlag.db.selfcolorrested or XpFlag.db.selfcolor;
	playerBar.texture:SetVertexColor(unpack(color));
end

function XpFlag.RefreshMarks()
	for k, _ in pairs(marks) do
		if not (friends[k] or (k == playerNameRealm)) then
			XpFlag.DeleteMark(k);
		end
	end
end

function XpFlag.DeleteMark(name)
	if not marks[name] then return end
	marks[name]:Hide();
	marks[name] = nil;
end

function XpFlag.createMessage(msgtype, xp, maxxp)	
	return (msgtype or "XpFlag")..":"..(xp or UnitXP("PLAYER"))..":"..(maxxp or UnitXPMax("PLAYER"))..":"..playerLevel..":"..playerClass
end

function XpFlag.decodeMessage(msg)
	local msgtype, xp, maxxp, level, class = msg:match("^(.-):(.-):(.-):(.-):(.-)$");

	return {
		msgtype = msgtype,
		xp = xp,
		maxxp = maxxp,
		level = level,
		class = class
	}
end

function D:PLAYER_ENTERING_WORLD(event)

	if C.player.show then
		XpFlag.UpdateMark(playerNameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);		
	end

	if C.player.show and C.bar.show then	
		playerBar = D.createBar()
		playerBar.to = (D.screenWidth * UnitXP("PLAYER")/UnitXPMax("PLAYER"))
	end

	ShowFriends();
	XpFlag:FRIENDLIST_UPDATE();

	XpFlag:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function XpFlag:PLAYER_UPDATE_RESTING(event) 
	if XpFlag.db.showself then
		XpFlag.UpdateMark(playerNameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
		XpFlag.UpdatePlayerBar()
	end
end


function XpFlag:FRIENDLIST_UPDATE()
	local allFriends, onlineFriends = GetNumFriends()
	 
	for i=1, allFriends do
		local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i);
		if not name then break end

		local friendNameRealm = name.."-"..playerRealm

		if connected and not friends[friendNameRealm] then
			friends[friendNameRealm] = true;
			SendAddonMessage("XpFlag", XpFlag.createMessage("XpFlagRequest"), "WHISPER", friendNameRealm);
		elseif not connected and friends[friendNameRealm] then 								
			friends[friendNameRealm] = nil;
		end		
	end

	XpFlag.RefreshMarks();
end

function XpFlag:PLAYER_XP_UPDATE(event, unit)
	if unit ~= "player" then return end

	for target, _ in pairs(friends) do
		if target then
			SendAddonMessage("XpFlag", XpFlag.createMessage("XpFlag"), "WHISPER", target);
		end
	end

	if XpFlag.db.showself then		
		--print("PLAYER_XP_UPDATE")		
		XpFlag.UpdateMark(playerNameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
		XpFlag.UpdatePlayerBar()
	end
end

function XpFlag:PLAYER_LEVEL_UP(event,level)
	playerLevel = tonumber(level);
end

function XpFlag:CHAT_MSG_ADDON(event, pre, msg, chan, sender)

	if pre ~= "XpFlag" then return end 
	if sender == playerNameRealm then return end
	if not msg or msg == "" then return end

	local message = XpFlag.decodeMessage(msg)

	if message.msgtype == "XpFlagRequest" then
		SendAddonMessage("XpFlag", XpFlag.createMessage(), "WHISPER", sender);
	end

	friends[sender] = true
	XpFlag.UpdateMark(sender, message.xp, message.maxxp, message.level, message.class);		
end
