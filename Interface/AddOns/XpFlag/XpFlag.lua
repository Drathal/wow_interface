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
local GetFramerate = GetFramerate
local wipe, pairs = wipe, pairs;
local IsInGuild,GetNumGuildMembers,GetGuildRosterInfo = IsInGuild,GetNumGuildMembers,GetGuildRosterInfo;
local f = CreateFrame('Frame');
local min = math.min;
local max = math.max;

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

f.delay = 1
f:SetScript('OnUpdate', function(self, elapsed)
	self.delay = self.delay - elapsed;	
	if self.delay > 0 then return end
	self.delay = 0.05;

	local limit = 30/GetFramerate()

	XpFlag.animateBar(playerBar, limit)

	for _, mark in pairs(marks) do
		if mark and mark.to then
			XpFlag.animateMark(mark, limit)
		end
	end	
end)

function XpFlag.animateBar(self, limit)

	if not self then return end
	if not self.to then return end	
			
	local cur = self:GetWidth()
	local new = cur + min((self.to-cur)/3, max(self.to-cur, limit))

	if cur == self.to or abs(new - self.to) < 2 then
		new = self.to
		self.to = nil
	end

	self:SetWidth(new);

end

function XpFlag.animateMark(self, limit)

	if not self then return end
	if not self.to then return end	
			
	local cur = self.cur or 0
	local new = cur + min((self.to-cur)/3, max(self.to-cur, limit))
	
	if cur == self.to or abs(new - self.to) < 2 then
		new = self.to
		self.to = nil
	end

	self:ClearAllPoints();	
	self:SetPoint("TOPLEFT", _G['UIParent'], new, 0);
	self.cur = new		

end

XpFlag.tooltip = CreateFrame("Frame");
XpFlag.tooltip:Hide();
XpFlag.tooltip.delay = 0.25;
XpFlag.tooltip:SetScript("OnUpdate",function(self,elapsed)
	XpFlag.tooltip.delay = XpFlag.tooltip.delay - elapsed;
	if XpFlag.tooltip.delay <= 0 then
		for k,v in pairs(marks) do
			if v:IsMouseOver() and v.class and v.name and v.level then

				GameTooltip:ClearLines();
				GameTooltip:AddLine("XpFlag");			
				GameTooltip:AddLine(k, RAID_CLASS_COLORS[v.class].r, RAID_CLASS_COLORS[v.class].g, RAID_CLASS_COLORS[v.class].b, 1);
				GameTooltip:AddLine("Level: "..v.level, 1, 1, 1, 1);
				GameTooltip:AddLine("XP: "..v.value.." / "..v.maxvalue.." ("..string.format("%.2f",v.value/v.maxvalue*100).."%)", 1, 1, 1, 1);				

				local rested = GetXPExhaustion()
				if rested and v.player then
					GameTooltip:AddLine("Rested: "..rested.." ("..string.format("%.2f",rested/v.maxvalue*100).."%)", 1, 1, 1, 1);
				end

			end
		end
		XpFlag.tooltip.delay = 0.25;
		GameTooltip:Show();
	end
end);

function XpFlag:OnInitialize()
	self.db = defaults;
		
	XpFlag:RegisterEvent("PLAYER_ENTERING_WORLD");
	XpFlag:RegisterEvent("PLAYER_XP_UPDATE");
	XpFlag:RegisterEvent("PLAYER_LEVEL_UP");
	XpFlag:RegisterEvent("CHAT_MSG_ADDON");
	XpFlag:RegisterEvent("FRIENDLIST_UPDATE");

	RegisterAddonMessagePrefix("XpFlag")
end

function XpFlag.CreateBar(value, maxvalue) 

	if playerLevel == MAX_PLAYER_LEVEL then return end

	playerBar = CreateFrame("Frame",'XPFLag-Playerbar');
	playerBar.texture = playerBar:CreateTexture(nil,"OVERLAY");  
	playerBar:SetHeight(1);
	playerBar:SetWidth(0);
	playerBar.to = (maxWidth * value/maxvalue) + 8
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

end

function XpFlag.UpdateMark(name, value, maxvalue, level, class)

	if not marks[name] then
		XpFlag.CreateMark(name, class);
	end
  
	marks[name].value = value;
	marks[name].maxvalue = maxvalue;
	marks[name].level = level;

	marks[name].to = maxWidth * value/maxvalue;		
	
	if tonumber(level) < playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle-minus.tga");	
	elseif tonumber(level) > playerLevel then
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle-plus.tga");
	else
		marks[name].texture:SetTexture("Interface\\AddOns\\XpFlag\\circle.tga");		
	end
	
	if not marks[name].player then return end

	local color = GetXPExhaustion() and XpFlag.db.selfcolorrested or XpFlag.db.selfcolor;
	marks[name].texture:SetVertexColor(unpack(color));

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

	playerBar.to = (maxWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER")) + 8

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

function XpFlag:PLAYER_ENTERING_WORLD(event)

	if XpFlag.db.showself then
		XpFlag.UpdateMark(playerNameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
		XpFlag.CreateBar(UnitXP("PLAYER"), UnitXPMax("PLAYER"))
	end

	ShowFriends();
	XpFlag:FRIENDLIST_UPDATE();

	XpFlag:UnregisterEvent("PLAYER_ENTERING_WORLD");
end


function XpFlag:FRIENDLIST_UPDATE()
	local allFriends, onlineFriends = GetNumFriends()
	 
	for i=1, allFriends do
		local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i);
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


--[[
	https://us.battle.net/forums/en/wow/topic/20741994059
	http://www.wowinterface.com/forums/showthread.php?t=35104
	https://github.com/zorker/rothui/blob/bd702c2abaa670c05c5fdd14cd4d2519a2dc201e/wow7.0/_AddonTests/rAnimationWidget/core.lua
]]--
