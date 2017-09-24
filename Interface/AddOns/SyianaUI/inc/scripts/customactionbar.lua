local addon, ns = ...
local cfg = ns.cfg
local activate = cfg.activation.customactionbar

if not activate then return

else

local size = 35
local spacing = 6

local invisible = CreateFrame("Frame", nil)
invisible:EnableMouse(false)
invisible:Hide()

--###Cleaning up###--
local BlizzArt = {
	MainMenuBarTexture0, MainMenuBarTexture1,
	MainMenuBarTexture2,MainMenuBarTexture3,
	MainMenuBarLeftEndCap, MainMenuBarRightEndCap,
	MainMenuBarPageNumber, ActionBarUpButton, ActionBarDownButton,
	CharacterBag0Slot, CharacterBag1Slot, CharacterBag2Slot, CharacterBag3Slot,
	MainMenuBarBackpackButton,
	StanceBarFrame,
	ReputationWatchBar, MainMenuExpBar, ArtifactWatchBar,
}

for _, frame in pairs(BlizzArt) do
	frame:SetParent(invisible)
end

local MicroButtons = {
	CharacterMicroButton, SpellbookMicroButton, TalentMicroButton, 
	AchievementMicroButton, QuestLogMicroButton, GuildMicroButton, 
	PVPMicroButton, LFDMicroButton, CompanionsMicroButton,
	EJMicroButton, HelpMicroButton, MainMenuMicroButton,
	StoreMicroButton, CollectionsMicroButton
}

for _, frame in pairs(MicroButtons) do
	frame:SetParent(invisible)
	frame:SetScale(0.0000001)
end

--###Forming Blizz' bars###--
--Set our bars in place
local holder = CreateFrame("Frame", "MainMenuBarHolderFrame", UIParent, "SecureHandlerStateTemplate")
holder:SetSize(size*12+spacing*11, size)
holder:SetPoint("BOTTOM", UIParent, 0, 22)
holder:RegisterEvent("PLAYER_LOGIN")
holder:RegisterEvent("PLAYER_ENTERING_WORLD")

ActionButton1:ClearAllPoints()
ActionButton1:SetPoint("BOTTOMLEFT", holder, 0, 0)

MultiBarBottomLeftButton1:ClearAllPoints()
MultiBarBottomLeftButton1:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 5)

MultiBarBottomRightButton1:ClearAllPoints()  
MultiBarBottomRightButton1:SetPoint("BOTTOMLEFT", MultiBarBottomLeftButton1, "TOPLEFT", 0, 6)

MultiBarLeftButton1:ClearAllPoints()
MultiBarLeftButton1:SetPoint("TOPLEFT", MultiBarRightButton1, "TOPLEFT", -43, 0)

MultiBarRightButton1:ClearAllPoints()
MultiBarRightButton1:SetPoint("RIGHT", UIParent, "RIGHT", -2, 150)

PetActionButton1:ClearAllPoints()
PetActionButton1:SetPoint("BOTTOMLEFT", MultiBarBottomRightButton1, "TOPLEFT", 25, 55)
PetActionBarFrame:SetFrameStrata('HIGH')

PossessButton1:ClearAllPoints()
PossessButton1:SetPoint("BOTTOMLEFT", MultiBarBottomRightButton1, "TOPLEFT", 25, 30)

--Setting size
for i = 1, NUM_ACTIONBAR_BUTTONS do
	local ab = _G["ActionButton"..i]
	local mbbl = _G["MultiBarBottomLeftButton"..i]
	local mbbr = _G["MultiBarBottomRightButton"..i]
	local mbl = _G["MultiBarLeftButton"..i]
	local mbr = _G["MultiBarRightButton"..i]
	local pab = _G["PetActionButton"..i]
	local mcab = _G["MultiCastActionButton"..i]
	local pb = _G["PossessButton"..i]
	
	ab:SetSize(size, size)
	
	mbbl:SetSize(size, size)
	
	mbbr:SetSize(size, size)
	
	mbl:SetSize(size, size)
	
	mbr:SetSize(size, size)
	
	if pab then
		pab:SetSize(size, size)
	end
	
	if pb then
		pb:SetSize(size, size)
	end
end
end

