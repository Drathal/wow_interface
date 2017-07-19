local K, C, L = unpack(select(2, ...))

-- Lua API
local _G = _G
local select = select
local tostring = tostring
local unpack = unpack

-- Wow API
local CreateFrame = _G.CreateFrame
local GetActiveSpecGroup = _G.GetActiveSpecGroup
local GetNumShapeshiftForms = _G.GetNumShapeshiftForms
local GetNumSpecializations = _G.GetNumSpecializations
local GetSpecialization = _G.GetSpecialization
local GetSpecializationInfo = _G.GetSpecializationInfo
local InCombatLockdown = _G.InCombatLockdown
local IsShiftKeyDown = _G.IsShiftKeyDown
local SetSpecialization = _G.SetSpecialization
local UIParent = _G.UIParent

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: UIErrorsFrame, ERR_NOT_IN_COMBAT, Lib_EasyMenu, Recount_MainWindow
-- GLOBALS: Skada, UIConfigMain, CreateUIConfig, HideUIPanel, Menu, GameTooltip

local Movers = K.Movers

-- Bottom bars anchor
local BottomBarAnchor = CreateFrame("Frame", "ActionBarAnchor", PetBattleFrameHider)
BottomBarAnchor:CreatePanel("Invisible", 1, 1, "BOTTOM", "UIParent", "BOTTOM", 0, 4)
BottomBarAnchor:SetWidth((C.ActionBar.ButtonSize * 12) + (C.ActionBar.ButtonSpace * 11))
if C.ActionBar.BottomBars == 2 then
	BottomBarAnchor:SetHeight((C.ActionBar.ButtonSize * 2) + C.ActionBar.ButtonSpace)
elseif C.ActionBar.BottomBars == 3 then
	if C.ActionBar.SplitBars == true then
		BottomBarAnchor:SetHeight((C.ActionBar.ButtonSize * 2) + C.ActionBar.ButtonSpace)
	else
		BottomBarAnchor:SetHeight((C.ActionBar.ButtonSize * 3) + (C.ActionBar.ButtonSpace * 2))
	end
else
	BottomBarAnchor:SetHeight(C.ActionBar.ButtonSize)
end
BottomBarAnchor:SetFrameStrata("LOW")
Movers:RegisterFrame(BottomBarAnchor)

-- Right bars anchor
local RightBarAnchor = CreateFrame("Frame", "RightActionBarAnchor", PetBattleFrameHider)
RightBarAnchor:CreatePanel("Invisible", 1, 1, unpack(C.Position.RightBars))
RightBarAnchor:SetHeight((C.ActionBar.ButtonSize * 12) + (C.ActionBar.ButtonSpace * 11))
if C.ActionBar.RightBars == 1 then
	RightBarAnchor:SetWidth(C.ActionBar.ButtonSize)
elseif C.ActionBar.RightBars == 2 then
	RightBarAnchor:SetWidth((C.ActionBar.ButtonSize * 2) + C.ActionBar.ButtonSpace)
elseif C.ActionBar.RightBars == 3 then
	RightBarAnchor:SetWidth((C.ActionBar.ButtonSize * 3) + (C.ActionBar.ButtonSpace * 2))
else
	RightBarAnchor:Hide()
end
RightBarAnchor:SetFrameStrata("LOW")
Movers:RegisterFrame(RightBarAnchor)

-- Split bar anchor
if C.ActionBar.SplitBars == true then
	local SplitBarLeft = CreateFrame("Frame", "SplitBarLeft", PetBattleFrameHider)
	SplitBarLeft:CreatePanel("Invisible", (C.ActionBar.ButtonSize * 3) + (C.ActionBar.ButtonSpace * 2), (C.ActionBar.ButtonSize * 2) + C.ActionBar.ButtonSpace, "BOTTOMRIGHT", ActionBarAnchor, "BOTTOMLEFT", -C.ActionBar.ButtonSpace, 0)
	SplitBarLeft:SetFrameStrata("LOW")

	local SplitBarRight = CreateFrame("Frame", "SplitBarRight", PetBattleFrameHider)
	SplitBarRight:CreatePanel("Invisible", (C.ActionBar.ButtonSize * 3) + (C.ActionBar.ButtonSpace * 2), (C.ActionBar.ButtonSize * 2) + C.ActionBar.ButtonSpace, "BOTTOMLEFT", ActionBarAnchor, "BOTTOMRIGHT", C.ActionBar.ButtonSpace, 0)
	SplitBarRight:SetFrameStrata("LOW")
end

-- Pet bar anchor
local PetBarAnchor = CreateFrame("Frame", "PetActionBarAnchor", PetBattleFrameHider)
if C.ActionBar.PetBarHorizontal == true then
	PetBarAnchor:CreatePanel("Invisible", (C.ActionBar.ButtonSize * 10) + (C.ActionBar.ButtonSpace * 9), (C.ActionBar.ButtonSize + C.ActionBar.ButtonSpace), unpack(C.Position.PetHorizontal))
elseif C.ActionBar.RightBars > 0 then
	PetBarAnchor:CreatePanel("Invisible", C.ActionBar.ButtonSize + 3, (C.ActionBar.ButtonSize * 10) + (C.ActionBar.ButtonSpace * 9), "RIGHT", RightBarAnchor, "LEFT", 0, 0)
else
	PetBarAnchor:CreatePanel("Invisible", (C.ActionBar.ButtonSize + C.ActionBar.ButtonSpace), (C.ActionBar.ButtonSize * 10) + (C.ActionBar.ButtonSpace * 9), unpack(C.Position.RightBars))
end
PetBarAnchor:SetFrameStrata("LOW")
RegisterStateDriver(PetBarAnchor, "visibility", "[pet,novehicleui,nopossessbar,nopetbattle] show hide")
Movers:RegisterFrame(PetBarAnchor)

-- Stance bar anchor
local ShiftAnchor = CreateFrame("Frame", "ShapeShiftBarAnchor", PetBattleFrameHider)
ShiftAnchor:RegisterEvent("PLAYER_LOGIN")
ShiftAnchor:RegisterEvent("PLAYER_ENTERING_WORLD")
ShiftAnchor:RegisterEvent("UPDATE_SHAPESHIFT_FORMS")
ShiftAnchor:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
ShiftAnchor:SetScript("OnEvent", function(self, event, ...)
	local Forms = GetNumShapeshiftForms()
	if Forms > 0 then
		if C.ActionBar.StanceBarHorizontal ~= true then
			ShiftAnchor:SetWidth(C.ActionBar.ButtonSize + 3)
			ShiftAnchor:SetHeight((C.ActionBar.ButtonSize * Forms) + ((C.ActionBar.ButtonSpace * Forms) - 3))
			ShiftAnchor:SetPoint("TOPLEFT", _G["StanceButton1"], "TOPLEFT")
		else
			ShiftAnchor:SetWidth((C.ActionBar.ButtonSize * Forms) + ((C.ActionBar.ButtonSpace * Forms) - 3))
			ShiftAnchor:SetHeight(C.ActionBar.ButtonSize)
			ShiftAnchor:SetPoint("TOPLEFT", _G["StanceButton1"], "TOPLEFT")
		end
	end
end)

-- This is a single panel outside the Minimap
if Minimap and C.Minimap.Enable and C.DataText.System == true then
	local MinimapStats = CreateFrame("Frame", "KkthnxUIMinimapStats", UIParent)
	MinimapStats:SetTemplate()
	if C.General.ToggleButton == true then
		MinimapStats:SetSize(Minimap:GetWidth(), 28)
		MinimapStats:SetPoint("RIGHT", Minimap, "LEFT", -4, 0)
		MinimapStats:SetPoint("LEFT", Minimap, "RIGHT", -22, 0)
		MinimapStats:SetPoint("TOP", Minimap, "BOTTOM", 0, -2)
	else
		MinimapStats:SetSize(Minimap:GetWidth(), 28)
		MinimapStats:SetPoint("RIGHT", Minimap, "LEFT", -4, 0)
		MinimapStats:SetPoint("LEFT", Minimap, "RIGHT", 4, 0)
		MinimapStats:SetPoint("TOP", Minimap, "BOTTOM", 0, -2)
	end
	MinimapStats:SetFrameStrata("LOW")
	Movers:RegisterFrame(MinimapStats)

	if C.Blizzard.ColorTextures == true then
		MinimapStats:SetBackdropBorderColor(C.Blizzard.TexturesColor[1], C.Blizzard.TexturesColor[2], C.Blizzard.TexturesColor[3])
	end
end

if C.General.ToggleButton == true and C.DataText.System == true then
	local ToggleButton = CreateFrame("Frame", "KkthnxUIToggleButton", UIParent)
	ToggleButton:SetSize(20, 20)
	ToggleButton:SetPoint("LEFT", KkthnxUIMinimapStats, "RIGHT", 2, 0)
	ToggleButton:SetFrameStrata("LOW")
	ToggleButton:SkinButton()

	ToggleButton.Text = ToggleButton:CreateFontString(nil, "OVERLAY")
	ToggleButton.Text:SetFont(C.Media.Font, C.Media.Font_Size, C.Media.Font_Style)
	ToggleButton.Text:SetShadowOffset(0, 0)
	ToggleButton.Text:SetText("|cff3c9bedK|r")
	ToggleButton.Text:SetPoint("CENTER", ToggleButton, "CENTER", 0, 0)
	ToggleButton.Text:SetHeight(C.Media.Font_Size)
	ToggleButton.Text:SetJustifyH("CENTER")

	ToggleButton:SetScript("OnMouseDown", function(self, button)
		if (InCombatLockdown() and not button == "RightButton") then
			K.Print(ERR_NOT_IN_COMBAT)
			return
		end

		if button == "LeftButton" then
			local Movers = K.Movers
			Movers:StartOrStopMoving()
		end

		if button == "RightButton" then
			if K.CheckAddOn("Recount") then
				if Recount_MainWindow:IsShown() then
					Recount_MainWindow:Hide()
				else
					Recount_MainWindow:Show()
				end
			end
			if K.CheckAddOn("Skada") then
				Skada:ToggleWindow()
			end
		end

		if button == "MiddleButton" then
			if UIConfigMain and UIConfigMain:IsShown() then
				UIConfigMain:Hide()
			else
				CreateUIConfig()
				HideUIPanel(Menu)
			end
		end
	end)

	ToggleButton:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_NONE")
		GameTooltip:SetPoint(K.GetAnchors(self))
		GameTooltip:ClearLines()

		GameTooltip:AddLine(L.ToggleButton.Functions)
		GameTooltip:AddLine(" ")
		GameTooltip:AddDoubleLine(L.ToggleButton.LeftClick, L.ToggleButton.MoveUI, 0.93, 0.647, 0.372, 0.2, 1, 0.2)
		if K.CheckAddOn("Recount") then
			GameTooltip:AddDoubleLine(L.ToggleButton.RightClick, L.ToggleButton.Recount, 0.93, 0.647, 0.372, 0.2, 1, 0.2)
		end
		if K.CheckAddOn("Skada") then
			GameTooltip:AddDoubleLine(L.ToggleButton.RightClick, L.ToggleButton.Skada, 0.93, 0.647, 0.372, 0.2, 1, 0.2)
		end
		GameTooltip:AddDoubleLine(L.ToggleButton.MiddleClick, L.ToggleButton.Config, 0.93, 0.647, 0.372, 0.2, 1, 0.2)

		GameTooltip:Show()
	end)

	ToggleButton:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)
end