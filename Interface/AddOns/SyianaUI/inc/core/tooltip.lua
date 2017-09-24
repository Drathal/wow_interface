-- Config

local awayBusyTextColor    =  "|cff7f7f7f"
local corpseGhostTextColor =  "|cff7f7f7f"
local targetTextColor      =  "|cffffd100"
local targetYouTextColor   =  "|cffffffff"
local targetedByTextColor  =  "|cffffd100"
local raceTextColor        =  "|cffeaeaae"
local YourGuildColor       =  { 0.7, 0.0, 0.8 }

local bossLevelText        =  "|cffff1919??"

local healthTexture        =  "Interface\\TargetingFrame\\UI-TargetingFrame-BarFill"
--local healthTexture        =  "Interface\\TargetingFrame\\UI-StatusBar"
local healthBg             =  false
local healthBgColor        =  { 0.5, 0.5, 0.5, 0.5 }

-------------------------------------

local _G = _G
local next = next
local strfind = strfind
local GameTooltip = GameTooltip
local RAID_CLASS_COLORS = CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS
local format = format
local GetItemQualityColor = GetItemQualityColor
local GetItemInfo = GetItemInfo
local ItemRefTooltip = ItemRefTooltip
local UnitExists = UnitExists
local UnitPlayerControlled = UnitPlayerControlled
local UnitCanAttack = UnitCanAttack
local UnitIsPVP = UnitIsPVP
local UnitReaction = UnitReaction
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local UnitIsConnected = UnitIsConnected
local hooksecurefunc = hooksecurefunc
local GetMouseFocus = GetMouseFocus
local UIParent = UIParent
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local GameTooltipStatusBar = GameTooltipStatusBar
local UnitClass = UnitClass
local UnitIsPlayer = UnitIsPlayer
local UnitPVPName = UnitPVPName
local UnitName = UnitName
local UnitIsUnit = UnitIsUnit
local GameTooltipTextLeft1 = GameTooltipTextLeft1
local GameTooltipTextLeft2 = GameTooltipTextLeft2
local UnitIsAFK = UnitIsAFK
local UnitIsDND = UnitIsDND
local UnitIsDead = UnitIsDead
local UnitIsGhost = UnitIsGhost
local UnitRace = UnitRace
local UnitLevel = UnitLevel
local UnitCreatureFamily = UnitCreatureFamily
local UnitCreatureType = UnitCreatureType
local UnitClassification = UnitClassification
local UnitIsBattlePetCompanion = UnitIsBattlePetCompanion
local UnitIsWildBattlePet = UnitIsWildBattlePet
local UnitBattlePetType = UnitBattlePetType
local GetQuestDifficultyColor = GetQuestDifficultyColor
local GetGuildInfo = GetGuildInfo
local UnitIsInMyGuild = UnitIsInMyGuild
local UnitIsSameServer = UnitIsSameServer
local UnitIsFriend = UnitIsFriend
local GetNumGroupMembers = GetNumGroupMembers
local IsInRaid = IsInRaid
local UnitAffectingCombat = UnitAffectingCombat
local IsShiftKeyDown = IsShiftKeyDown

-------------------------------------
-- PLAYER_LOGIN and CURSOR_UPDATE

FixehTip = {}
local FixehTip = FixehTip

function FixehTip.SavedVariables()
	--------------------------
	-- First login defaults

	if (not FixehTipSV) then
		FixehTipSV = {
			scale = 1.0,

			background_r = 0,
			background_g = 0,
			background_b = 0,
			background_a = 1,

			border_r = 0.6,
			border_g = 0.6,
			border_b = 0.6,
			border_a = 1,

			health_r = 0,
			health_g = 1,
			health_b = 0,
			health_a = 1,

			classNames = true,
			classHealth = true,
			reactionBackground = false,
			reactionBorder = true,
			reactionHealth = true,
			purpleGuild = true,
			itemColors = true,

			font = STANDARD_TEXT_FONT,
			headerSize = "14",
			fontSize = "12",
			headerOutline = true,
			fontOutline = true,

			guildRank = true,
			hidePlayerTitle = false,
			hidePvPText = true,
			statusText = true,
			awayText = format(" (%s)", AFK),
			busyText = format(" (%s)", DND),
			corpseText = " (Corpse)",
			ghostText = " (Ghost)",

			totEnabled = true,
			totTargetText = format("%s: ", TARGET),
			totYouText = format("<< %s >>", strupper(YOU)),
			targetedBy = true,
			targetedByText = "Targeted by: ",

			mouseAnchorLocation = "BOTTOMRIGHT",
			mouseAnchorX = "0",
			mouseAnchorY = "0",
			defaultAnchorLocation = "BOTTOMRIGHT",
			defaultAnchorX = "-90",
			defaultAnchorY = "120",
			healthInside = true,
		}
	end
end

function FixehTip.ApplyFont()
	if (FixehTipSV.headerOutline) then
		GameTooltipHeaderText:SetFont(FixehTipSV.font, FixehTipSV.headerSize, "OUTLINE")
	else
		GameTooltipHeaderText:SetFont(FixehTipSV.font, FixehTipSV.headerSize)
	end

	if (FixehTipSV.fontOutline) then
		GameTooltipText:SetFont(FixehTipSV.font, FixehTipSV.fontSize, "OUTLINE")
		GameTooltipTextSmall:SetFont(FixehTipSV.font, FixehTipSV.fontSize, "OUTLINE")
	else
		GameTooltipText:SetFont(FixehTipSV.font, FixehTipSV.fontSize)
		GameTooltipTextSmall:SetFont(FixehTipSV.font, FixehTipSV.fontSize)
	end
end

local function ItemColors(self)
	local _, item = self:GetItem()
	if (item) then
		local _, _, quality = GetItemInfo(item)
		if (quality) then
			local r, g, b = GetItemQualityColor(quality)
			self:SetBackdropColor(r / 7.5, g / 7.5, b / 7.5)
			self:SetBackdropBorderColor(r, g, b)
		end
	end
end

local TooltipList = {
	GameTooltip,
	ItemRefTooltip,
	ItemRefShoppingTooltip1,
	ItemRefShoppingTooltip2,
	ShoppingTooltip1,
	ShoppingTooltip2,
	DropDownList1MenuBackdrop,
	DropDownList2MenuBackdrop,
	FriendsTooltip,
}

local ClassHex = {}

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("CURSOR_UPDATE")
frame:SetScript("OnEvent", function(_, event)
	if (event == "PLAYER_LOGIN") then
		FixehTip.SavedVariables()

		for k, v in next, RAID_CLASS_COLORS do
			ClassHex[k] = format("|cff%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
		end

		FixehTip.ApplyFont()

		for i = 1, #TooltipList do
			local v = TooltipList[i]
			v:HookScript("OnShow", function(self)
				self:SetScale(FixehTipSV.scale)

				if (not GameTooltip:GetUnit()) then
					self:SetBackdropColor(FixehTipSV.background_r, FixehTipSV.background_g, FixehTipSV.background_b, FixehTipSV.background_a)
					self:SetBackdropBorderColor(FixehTipSV.border_r, FixehTipSV.border_g, FixehTipSV.border_b, FixehTipSV.border_a)
				end

				if (FixehTipSV.itemColors) and (self.GetItem) then
					ItemColors(self)
				end
			end)
		end

		if (FixehTipSV.itemColors) then
			-- On item link click
			ItemRefTooltip:HookScript("OnTooltipSetItem", function(self)
				ItemColors(self)
			end)

			-- Item->non-item link click
			ItemRefTooltip:HookScript("OnTooltipCleared", function(self)
				self:SetBackdropColor(FixehTipSV.background_r, FixehTipSV.background_g, FixehTipSV.background_b, FixehTipSV.background_a)
				self:SetBackdropBorderColor(FixehTipSV.border_r, FixehTipSV.border_g, FixehTipSV.border_b, FixehTipSV.border_a)
			end)
		end

		if (CUSTOM_CLASS_COLORS) then
			CUSTOM_CLASS_COLORS:RegisterCallback(function()
				for k, v in next, CUSTOM_CLASS_COLORS do
					ClassHex[k] = format("|cff%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
				end
			end)
		end
	end

	if (event == "CURSOR_UPDATE") then
		if (FixehTipSV.instantFade or FixehTipSV.mouseAnchor) and (GameTooltip:IsShown()) and (GameTooltip:IsOwned(UIParent)) then
			if (not UnitExists(GameTooltip.unit)) then
				GameTooltip:Hide()
			end
		end
	end
end)

-------------------------------------
-- Create the reaction colors

local NameColors = {
	[1] = {r = 0.8, g = 0.3, b = 0.22},
	[2] = {r = 0.8, g = 0.3, b = 0.22},
	[3] = {r = 0.75, g = 0.27, b = 0.0},
	[4] = {r = 0.9, g = 0.7, b = 0.0},
	[5] = {r = 0.0, g = 0.6, b = 0.1},
	[6] = {r = 0.0, g = 0.6, b = 0.1},
	[7] = {r = 0.0, g = 0.6, b = 0.1},
	[8] = {r = 0.0, g = 0.6, b = 0.1},
	[9] = {r = 0.0, g = 0.7, b = 1.0},
	[10] = {r = 0.5, g = 0.5, b = 0.5},
}

function GameTooltip_UnitColor(unit)
	local r, g, b
	if (UnitPlayerControlled(unit)) then
		if (UnitCanAttack(unit, "player")) then
			if (not UnitCanAttack("player", unit)) then
				r = NameColors[9].r
				g = NameColors[9].g
				b = NameColors[9].b
			else
				r = NameColors[2].r
				g = NameColors[2].g
				b = NameColors[2].b
			end
		elseif (UnitCanAttack("player", unit)) then
			r = NameColors[4].r
			g = NameColors[4].g
			b = NameColors[4].b
		elseif (UnitIsPVP(unit)) then
			r = NameColors[6].r
			g = NameColors[6].g
			b = NameColors[6].b
		else
			r = NameColors[9].r
			g = NameColors[9].g
			b = NameColors[9].b
		end
	else
		local reaction = UnitReaction(unit, "player")
		if (reaction) then
			r = NameColors[reaction].r
			g = NameColors[reaction].g
			b = NameColors[reaction].b
		else
			r = NameColors[9].r
			g = NameColors[9].g
			b = NameColors[9].b
		end
	end
	--[[if (FixehTipSV.purpleGuild) and (UnitIsInMyGuild(unit)) and (UnitIsSameServer(unit, "player")) and (UnitIsFriend(unit, "player")) then
	r = YourGuildColor[1]
	g = YourGuildColor[2]
	b = YourGuildColor[3]
	end]]
	if (UnitIsDeadOrGhost(unit)) or (not UnitIsConnected(unit)) then
		r = NameColors[10].r
		g = NameColors[10].g
		b = NameColors[10].b
	end
	return r, g, b
end
local GameTooltip_UnitColor = GameTooltip_UnitColor

-------------------------------------
-- Tooltip position

local function MouseAnchor(self)
	local x, y = GetCursorPosition()
	local scale = self:GetEffectiveScale()
	self:ClearAllPoints()
	self:SetPoint(FixehTipSV.mouseAnchorLocation, UIParent, "BOTTOMLEFT", x / scale + FixehTipSV.mouseAnchorX, y / scale + FixehTipSV.mouseAnchorY)
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", function(self, parent)
	if (FixehTipSV.mouseAnchor) then
		MouseAnchor(self)
	else
		self:SetOwner(parent, "ANCHOR_NONE")
		self:ClearAllPoints()
		self:SetPoint(FixehTipSV.defaultAnchorLocation, UIParent, FixehTipSV.defaultAnchorLocation, FixehTipSV.defaultAnchorX, FixehTipSV.defaultAnchorY)
	end
end)

-------------------------------------
-- Create a new health bar

local healthBar = CreateFrame("StatusBar", nil, GameTooltip)
healthBar:SetStatusBarTexture(healthTexture)
healthBar:SetHeight(8)

if (healthBg) then
	healthBar.bg = healthBar:CreateTexture(nil, "BACKGROUND")
	healthBar.bg:SetAllPoints()
	healthBar.bg:SetTexture(healthTexture)
	healthBar.bg:SetVertexColor(healthBgColor[1], healthBgColor[2], healthBgColor[3], healthBgColor[4])
end

healthBar:Hide()

local function SetHealthValues(unit)
	local health = UnitHealth(unit)
	local maxHealth = UnitHealthMax(unit)

	healthBar:SetMinMaxValues(0, maxHealth)
	healthBar:SetValue(health)
end

local function CreateHealthBar(unit)
	GameTooltipStatusBar:Hide()

	if (FixehTipSV.hideHealthBar) then return end

	if (not UnitIsDeadOrGhost(unit)) and (UnitIsConnected(unit)) and (UnitHealth(unit) > 0) then
		healthBar:ClearAllPoints()

		if (FixehTipSV.healthInside) then
			healthBar:SetPoint("BOTTOMLEFT", GameTooltip, "BOTTOMLEFT", 10, 10)
			healthBar:SetPoint("BOTTOMRIGHT", GameTooltip, "BOTTOMRIGHT", -10, -10)
		else
			healthBar:SetPoint("BOTTOMLEFT", GameTooltip, "BOTTOMLEFT", 2, -9)
			healthBar:SetPoint("BOTTOMRIGHT", GameTooltip, "BOTTOMRIGHT", -2, -9)
		end

		healthBar:SetStatusBarColor(FixehTipSV.health_r, FixehTipSV.health_g, FixehTipSV.health_b, FixehTipSV.health_a)

		if (FixehTipSV.reactionHealth) then
			local r, g, b = GameTooltip_UnitColor(unit)
			healthBar:SetStatusBarColor(r, g, b, FixehTipSV.health_a)
		end

		if (FixehTipSV.classHealth) and (UnitIsPlayer(unit)) then
			local _, class = UnitClass(unit)
			healthBar:SetStatusBarColor(RAID_CLASS_COLORS[class].r, RAID_CLASS_COLORS[class].g, RAID_CLASS_COLORS[class].b, FixehTipSV.health_a)
		end

		SetHealthValues(unit)

		healthBar:Show()
	end
end

-------------------------------------
-- OnUpdate for the mouse anchor, instant fade, the health bar (Update values, add height to tip), and fixing broken mailbox and sign colors

local lastUpdate = 0
local updateFrequency = 0.5

GameTooltip:HookScript("OnUpdate", function(self, elapsed)
	if (FixehTipSV.mouseAnchor) then
		MouseAnchor(self)
	end

	if (FixehTipSV.instantFade or FixehTipSV.mouseAnchor) and (self.unit) then
		if (self:IsOwned(UIParent)) then
			if (not UnitExists(self.unit)) then
				self:Hide()
			end
		else
			if (GetMouseFocus() == WorldFrame) then
				self:Hide()
			end
		end
	end

	if (healthBar:IsShown()) and (UnitExists(self.unit)) then
		lastUpdate = lastUpdate + elapsed

		if (lastUpdate > updateFrequency) then
			SetHealthValues(self.unit)
			lastUpdate = 0
		end

		if (FixehTipSV.healthInside) and (not self.health) then
			self:SetHeight(self:GetHeight() + 12)
			self.health = true
		end
	end

	if (self:IsOwned(UIParent)) and (not self:GetUnit()) then
		self:SetBackdropColor(FixehTipSV.background_r, FixehTipSV.background_g, FixehTipSV.background_b, FixehTipSV.background_a)
		self:SetBackdropBorderColor(FixehTipSV.border_r, FixehTipSV.border_g, FixehTipSV.border_b, FixehTipSV.border_a)
	end
end)

-------------------------------------
-- Modify the Tooltip for units

local TargetedByNumber = {}

GameTooltip:HookScript("OnTooltipSetUnit", function(self)
	local _, unit = self:GetUnit()
	if (not unit) then
		local focus = GetMouseFocus()
		unit = focus and focus:GetAttribute("unit")
	end
	if (not unit) and (UnitExists("mouseover")) then
		unit = "mouseover"
	end
	if (not unit) then
		return self:Hide()
	end
	if (UnitIsUnit(unit, "mouseover")) then
		unit = "mouseover"
	end
	self.unit = unit

	-------------------------------------------------
	-- Name line

	local unitName, unitServer = UnitName(unit)
	local className, class = UnitClass(unit)

	if (UnitIsPlayer(unit)) then
		if (not class) then return self:Hide() end

		if (UnitPVPName(unit)) and (not FixehTipSV.hidePlayerTitle) then
			unitName = UnitPVPName(unit)
		end

		if (unitServer) and (unitServer ~= "") and (not FixehTipSV.hidePlayerServer) then
			GameTooltipTextLeft1:SetFormattedText("%s (%s)", unitName, unitServer)
		else
			GameTooltipTextLeft1:SetFormattedText("%s", unitName)
		end

		if (FixehTipSV.classNames) then
			GameTooltipTextLeft1:SetFormattedText("%s%s", ClassHex[class], GameTooltipTextLeft1:GetText())
		end
	end

	if (FixehTipSV.statusText) then
		if (UnitIsAFK(unit)) then
			self:AppendText(awayBusyTextColor .. FixehTipSV.awayText)
		elseif (UnitIsDND(unit)) then
			self:AppendText(awayBusyTextColor .. FixehTipSV.busyText)
		end

		if (UnitIsDead(unit)) then
			self:AppendText(corpseGhostTextColor .. FixehTipSV.corpseText)
		elseif (UnitIsGhost(unit)) then
			self:AppendText(corpseGhostTextColor .. FixehTipSV.ghostText)
		end
	end

	-------------------------------------------------
	-- Level line and Pet/NPC guild

	local r, g, b = GameTooltip_UnitColor(unit)
	local reactionHex = format("|cff%02x%02x%02x", r * 255, g * 255, b * 255)

	local unitLevel = UnitLevel(unit)
	local unitRace = format(" %s", UnitRace(unit) or "")
	local creatureFamily = UnitCreatureFamily(unit) or UnitCreatureType(unit) or ""
	local unitClassification = UnitClassification(unit)

	if (UnitIsBattlePetCompanion(unit)) or (UnitIsWildBattlePet(unit)) then
		unitLevel = UnitBattlePetLevel(unit)
		creatureFamily = _G["BATTLE_PET_NAME_" .. UnitBattlePetType(unit) or 5]
	end

	local difficultyColor = GetQuestDifficultyColor(unitLevel)
	local questHex = format("|cff%02x%02x%02x", difficultyColor.r * 255, difficultyColor.g * 255, difficultyColor.b * 255)

	if (unitLevel == -1) then
		unitLevel = bossLevelText
	elseif (unitLevel == 0) then
		unitLevel = "|cffffffff??" -- Out of range raid pets
	end

	if (creatureFamily == "Not specified") then
		creatureFamily = ""
	end

	if (FixehTipSV.hidePlayerRace) then
		unitRace = ""
	end

	if (UnitIsWildBattlePet(unit)) then
		GameTooltipTextLeft2:SetFormattedText("%s%s%s %s %s", questHex, unitLevel, raceTextColor, PET, creatureFamily)
	elseif (UnitIsBattlePetCompanion(unit)) then
		for i = 2, self:NumLines() do
			local petLine = _G["GameTooltipTextLeft" .. i]
			if (strfind(petLine:GetText(), unitLevel)) then
				petLine:SetFormattedText("%s%s%s %s %s", questHex, unitLevel, raceTextColor, PET, creatureFamily)
				petLine = _G["GameTooltipTextLeft" .. i - 1]
				petLine:SetTextColor(r, g, b)
				petLine:SetFormattedText("<%s>", petLine:GetText())
			end
		end
	else
		for i = 2, self:NumLines() do
			local levelLine = _G["GameTooltipTextLeft" .. i]
			if (levelLine:IsShown()) then
				if (strfind(levelLine:GetText(), UNIT_LEVEL_TEMPLATE)) or (strfind(levelLine:GetText(), UNIT_LETHAL_LEVEL_TEMPLATE)) then
					if (UnitIsPlayer(unit)) then
						levelLine:SetFormattedText("%s%s%s%s %s%s", questHex, unitLevel, raceTextColor, unitRace, ClassHex[class], className)
					elseif (unitClassification == "worldboss") or (strfind(levelLine:GetText(), BOSS)) then
						levelLine:SetFormattedText("%s%s%s %s %s", questHex, unitLevel, raceTextColor, BOSS, creatureFamily)
					elseif (unitClassification == "rare") then
						levelLine:SetFormattedText("%s%s%s %s %s", questHex, unitLevel, raceTextColor, ITEM_QUALITY3_DESC, creatureFamily)
					elseif (unitClassification == "rareelite") then
						levelLine:SetFormattedText("%s%s%s %s %s %s", questHex, unitLevel, raceTextColor, ITEM_QUALITY3_DESC, ELITE, creatureFamily)
					elseif (unitClassification == "elite") then
						levelLine:SetFormattedText("%s%s%s %s %s", questHex, unitLevel, raceTextColor, ELITE, creatureFamily)
					else
						levelLine:SetFormattedText("%s%s%s %s", questHex, unitLevel, raceTextColor, creatureFamily)
					end
				end
			end
		end

		if (GameTooltipTextLeft2:IsShown()) and (not strfind(GameTooltipTextLeft2:GetText(), unitLevel)) and (not UnitIsPlayer(unit)) then
			GameTooltipTextLeft2:SetFormattedText("<%s>", GameTooltipTextLeft2:GetText())
			GameTooltipTextLeft2:SetTextColor(r, g, b)
		end
	end

	-------------------------------------------------
	-- Player guild

	local guildName, guildRank = GetGuildInfo(unit)

	if (guildName) then
		if (FixehTipSV.purpleGuild) and (UnitIsInMyGuild(unit)) and (UnitIsSameServer(unit, "player")) and (UnitIsFriend(unit, "player")) then
			GameTooltipTextLeft2:SetTextColor(YourGuildColor[1], YourGuildColor[2], YourGuildColor[3])
		else
			GameTooltipTextLeft2:SetTextColor(r, g, b)
		end

		if (FixehTipSV.guildRank) then
			GameTooltipTextLeft2:SetFormattedText("<%s>|cff7f7f7f %s", GameTooltipTextLeft2:GetText(), guildRank)
		else
			GameTooltipTextLeft2:SetFormattedText("<%s>", GameTooltipTextLeft2:GetText())
		end
	end

	-------------------------------------------------
	-- Background and border colors

	self:SetBackdropColor(FixehTipSV.background_r, FixehTipSV.background_g, FixehTipSV.background_b, FixehTipSV.background_a)
	self:SetBackdropBorderColor(FixehTipSV.border_r, FixehTipSV.border_g, FixehTipSV.border_b, FixehTipSV.border_a)

	if (FixehTipSV.reactionBackground) then
		self:SetBackdropColor(r / 7.5, g / 7.5, b / 7.5, FixehTipSV.background_a)
	end

	if (FixehTipSV.reactionBorder) then
		self:SetBackdropBorderColor(r, g, b, FixehTipSV.border_a)
	end

	if (FixehTipSV.classBorder) and (UnitIsPlayer(unit)) then
		self:SetBackdropBorderColor(RAID_CLASS_COLORS[class].r, RAID_CLASS_COLORS[class].g, RAID_CLASS_COLORS[class].b, FixehTipSV.border_a)
	end

	-------------------------------------------------
	-- Hide text

	if (FixehTipSV.hidePvPText) then
		for i = 3, self:NumLines() do
			local pvpLine = _G["GameTooltipTextLeft" .. i]
			if (pvpLine:GetText() == PVP_ENABLED) then
				pvpLine:SetText(nil)
			end
		end
	end

	if (FixehTipSV.hideFactionText) then
		for i = 3, self:NumLines() do
			local factionLine = _G["GameTooltipTextLeft" .. i]
			if (factionLine:GetText() == FACTION_ALLIANCE) or (factionLine:GetText() == FACTION_HORDE) then
				factionLine:SetText(nil)
			end
		end
	end

	-------------------------------------------------
	-- Target of target

	if (FixehTipSV.totEnabled) then
		local targetUnit = unit .. "target"

		if (UnitExists(targetUnit)) then
			local r, g, b = GameTooltip_UnitColor(targetUnit)
			local reactionHex = format("|cff%02x%02x%02x", r * 255, g * 255, b * 255)
			local _, class = UnitClass(targetUnit)

			local totLevel = ""
			if (FixehTipSV.totLevel) then
				local unitLevel = UnitLevel(targetUnit)

				if (UnitIsWildBattlePet(targetUnit)) or (UnitIsBattlePetCompanion(targetUnit)) then
					unitLevel = UnitBattlePetLevel(targetUnit)
				end

				local difficultyColor = GetQuestDifficultyColor(unitLevel)
				local questHex = format("|cff%02x%02x%02x", difficultyColor.r * 255, difficultyColor.g * 255, difficultyColor.b * 255)

				if (unitLevel == -1) then
					unitLevel = bossLevelText
				end

				totLevel = " " .. questHex .. unitLevel
			end

			if (UnitIsUnit("player", targetUnit)) then
				self:AddLine(targetTextColor .. FixehTipSV.totTargetText .. targetYouTextColor .. FixehTipSV.totYouText)
			elseif (UnitIsPlayer(targetUnit)) then
				if (not class) then return self:Hide() end

				self:AddLine(targetTextColor .. FixehTipSV.totTargetText .. ClassHex[class] .. UnitName(targetUnit) .. totLevel)
			else
				self:AddLine(targetTextColor .. FixehTipSV.totTargetText .. reactionHex .. UnitName(targetUnit) .. totLevel)
			end
		end
	end

	---------------------------------------------
	-- How many people are targeting something in raid?

	if (FixehTipSV.targetedBy) then
		local inRaid = IsInRaid()

		if (inRaid) then
			local groupMembers = GetNumGroupMembers()

			for i = 1, groupMembers do
				local raidUnit = "raid" .. i

				if (UnitIsUnit(raidUnit .. "target", unit)) then
					TargetedByNumber[#TargetedByNumber + 1] = raidUnit
				end
			end

			if (#TargetedByNumber > 0) then
				self:AddLine(targetedByTextColor .. FixehTipSV.targetedByText .. "|cffffffff" .. #TargetedByNumber)
				for k in next, TargetedByNumber do TargetedByNumber[k] = nil end
			end
		end
	end

	-------------------------------------------------
	-- Create the health bar

	CreateHealthBar(unit)

	-------------------------------------------------
	-- If you are in combat, hide the Tooltip

	if (FixehTipSV.inCombat) and (UnitAffectingCombat("player")) then
		if not (FixehTipSV.shiftCombat and IsShiftKeyDown()) then
			self:Hide()
		end
	end
end)

    --func TooltipAddSpellID
  	local function TooltipAddSpellID(self,spellid)
  	if not spellid then return end
  	self:AddDoubleLine("|cffffffffSpell ID|r",spellid)
  	self:Show()
	end

	GameTooltip:HookScript("OnTooltipSetSpell", function(self)
  	TooltipAddSpellID(self,select(3,self:GetSpell()))
	end)


	GameTooltip:HookScript("OnTooltipCleared", function(self)
	self.unit = nil
	self.health = nil
	healthBar:Hide()
	lastUpdate = 0
	end)
