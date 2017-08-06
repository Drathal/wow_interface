local addonName, addonTable = ...


--local selectedClass
--local selectedSpec




--local Variables:
--Functions:
local createMainFrame		--Function creating the mainFrame
--Frames:
local mainFrame				--The big Frame cointaining all UI elements
local closeButton			--The "X" button at the top right
local classSelect			--The Class Select drop down menu at the top left
local showActiveStatweights	--Checkbox selecting whether only active stats should be shown
local resultButton = {}		--Table containing the EJ-style buttons displaying calculation results
local bossCheckBoxes = {}	--2D table containing all checkboxes for selecting bosses you expect to kill
local calcButton			--Button triggering the calculation
local statWeightBoxes = {}			--Table containing all statweight boxes
local activeStatweightBoxes = {}	--Table containing all active statweight boxes
local legSlotSelect	= {}--Table containing the legendary slot select Dropdowns
local printBossButton
local BiSOutput
local BiSButton
--Labels:
local statweightsLabel		--The big label above all statweights
local statLabel = {}		--Table containing the labels for each statweight box
local difficultyLabels = {}	--Table containing the Labels for each difficulty
local bossSelectLabel		--The big label above the boss select checkboxes
local legSlotSelectLabel
--Variables:
local classes = {"Death Knight", "Demon Hunter", "Druid", "Hunter", "Mage", "Monk", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior"}
local specs = {
["Death Knight"] = {"Blood", "Frost", "Unholy"},
["Demon Hunter"] = {"Havoc", "Vengance"},
["Druid"] = {"Balance", "Feral", "Guardian", "Restoration"},
["Hunter"] = {"Beast Mastery", "Marksmanship", "Survival"},
["Mage"] = {"Arcane", "Fire", "Frost"},
["Monk"] = {"Brewmaster", "Mistweaver", "Windwalker"},
["Paladin"] = {"Holy", "Protection", "Retribution"},
["Priest"] = {"Discipline", "Holy", "Shadow"},
["Rogue"] = {"Assassination", "Outlaw", "Subtlety"},
["Shaman"] = {"Elemental", "Enhancement", "Restoration"},
["Warlock"] = {"Affliction", "Demonology", "Destruction"},
["Warrior"] = {"Arms", "Fury", "Protection"}
}
local classColors = {
["Death Knight"] = "|cFFC41F3B",
["Demon Hunter"] = "|cFFA330C9",
["Druid"] = "|cFFFF7D0A",
["Hunter"] = "|cFFABD473",
["Mage"] = "|cFF69CCF0",
["Monk"] = "|cFF00FF96",
["Paladin"] = "|cFFF58CBA",
["Priest"] = "|cFFFFFFFF",
["Rogue"] = "|cFFFFF569",
["Shaman"] = "|cFF0070DE",
["Warlock"] = "|cFF9482C9",
["Warrior"] = "|cFFC79C6E",
[""] = "",
["Select your Class"] = ""
}
local statNames = {"Strength", "Agility", "Intellect", "Stamina", "Crit", "Haste", "Versatility", "Mastery", "Extra Ilvl", "Tier Bonus", "Armor"}
local bosses = {}		--Table containing names of all bosses in the current Raid
local difficulties = {"Normal", "Heroic", "Mythic"}	--Table containing names of difficulties
local difficultiesAlignment = {"RIGHT", "", "LEFT"}	--Table containing alignments for the difficulties
--Local copies of global Variables:
local statweights = {}	--Copy of BonusRollManagerVariables.statweights
local brmV				--Copy of BonusRollManagerVariables
local brmT				--Copy of BonusRollManagerTable






--Sets up Slash Commands
SLASH_BONUSROLLMANAGER1, SLASH_BONUSROLLMANAGER2, SLASH_BONUSROLLMANAGER3 = "/brm", "/bonusrollhelper", "/brh"
function SlashCmdList.BONUSROLLMANAGER(msg, editbox)
	if BonusRollManagerTable.frameCreated == false then
		BonusRollManagerTable.frameCreated = true
		createMainFrame()
	else
		BonusRollHelperMain:SetParent(UIParent)
		BonusRollHelperMain:Show()
	end
end


--Local Functions:

--Is called when the player inputs something into a statweight box. Saves that input.
local function setStatweights(self)
	local index = nil
	for i, value in ipairs(statWeightBoxes) do
		if self == value then
			index = i
		end
	end
	if self:GetText() == "" then
		self:SetText(0)
	end
	statweights[brmT.getSelectedSpecID()][index] = self:GetNumber()
	self:HighlightText(0,0)
	self:ClearFocus()
 end
 
 --Is called when the player presses enter when inputting statweights. Saves that imput and moves the curser to the next Statweight.
 local function setStatweightsEnter(self)
	local index = nil
	for i, value in ipairs(statWeightBoxes) do
		if self == value then
			index = i
		end
	end
	if self:GetText() == "" then
		self:SetText(0)
	end
	statweights[brmT.getSelectedSpecID()][index] = self:GetNumber()
	self:HighlightText(0,0)
	self:ClearFocus()
	
	for i, value in ipairs(activeStatweightBoxes) do
		if self == value then
			index = i
		end
	end
	local nextBox = activeStatweightBoxes[index + 1]
	if nextBox then
		nextBox:SetFocus()
		nextBox:HighlightText()
	end
 end

--Is called when the player selects a class from the dropdown menu. Saves that selection.
local function setClass(self, class, spec)
	brmV.selectedClass = class
	brmV.selectedSpec = spec
	UIDropDownMenu_SetText(classSelect, classColors[class]..spec.." "..class)
	CloseDropDownMenus()
	for i, value in ipairs(statWeightBoxes) do
		statWeightBoxes[i]:SetText(statweights[brmT.getSelectedSpecID()][i])
	end
end

--Is called when the player selects a legendary slot from the dropdown menu. Saves that selection.
local function setLegSlot(self, i, slot)
	brmV.selectedLegSlot[i] = slot
	UIDropDownMenu_SetText(legSlotSelect[i], slot)
	CloseDropDownMenus()
end

--Is called when the player clicks on the "Show only active stats" box. Hides/Shows inactive boxes.
local function hideStatweights(self)
	if self:GetChecked() then
		brmV.showOnlyActive = true
		local j = 1
		activeStatweightBoxes = {}
		for i, box in ipairs(statWeightBoxes) do
			if box:GetNumber() == 0 then
				box:Hide()
			else
			activeStatweightBoxes[j] = box
				j = j + 1
			end
		end
		for i, box in ipairs(activeStatweightBoxes) do
			activeStatweightBoxes[i]:ClearAllPoints()
			activeStatweightBoxes[i]:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 160, -30*i-70)
		end
	else
		brmV.showOnlyActive = false
		for i, box in ipairs(statWeightBoxes) do
			activeStatweightBoxes[i] = box
			box:Show()
			box:ClearAllPoints()
			box:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 160, -30*i-70)
		end
	end
end

--Is called when the player clicks on one of the boss checkboxes. Saves the selected difficulty.
local function setBosses(self)
	local boss = 0
	local diff = 0
	for i = 1, brmT.numBosses, 1 do
		for j = 1, 3, 1 do
			if self == bossCheckBoxes[i][j] then
				boss, diff = i, j
			end
		end
	end
	if boss == 0 or diff == 0 then 
		print("ERROR: 001")
	end
	if self:GetChecked() then
		brmV.selectedBosses[boss] = diff
		bossCheckBoxes[boss][1]:SetChecked(false)
		bossCheckBoxes[boss][2]:SetChecked(false)
		bossCheckBoxes[boss][3]:SetChecked(false)
		bossCheckBoxes[boss][diff]:SetChecked(true)
	else
		brmV.selectedBosses[boss] = 0
	end
end

--Is called when new recommended bosses are colculated. Puts their info into the calclated boss buttons.
local function setCalculatedBossInfo()
	printBossButton:SetPoint("TOPLEFT", calcButton, "BOTTOMLEFT", 0, -30)
	printBossButton:Show()
	for i = 1, 3, 1 do
		local name, description, bossID, rootSectionID, link = EJ_GetEncounterInfoByIndex(brmV.sortedBosses[i].index, brmT.raidID)
		resultButton[i].link = link
		resultButton[i]:SetText(name)
		resultButton[i].encounterID = bossID
		local _, _, _, _, bossImage = EJ_GetCreatureInfo(1, bossID)
		bossImage = bossImage or "Interface\\EncounterJournal\\UI-EJ-BOSS-Default"
		resultButton[i].creature:SetTexture(bossImage)
		if brmV.sortedBosses[i].score <= 0 then
			resultButton[i]:Hide()
		else
			resultButton[i]:Show()
			printBossButton:SetPoint("TOPLEFT", resultButton[i], "BOTTOMLEFT", 0, -30)
		end
	end
end

--Is called when the class select dropdown menu is initialized. Creates the menu entries.
local function classSelectInitialize(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	if level == 1 or level == nil then
		for i, value in ipairs(classes) do
			info = UIDropDownMenu_CreateInfo()
			info.text, info.hasArrow, info.checked = value, true, brmV.selectedClass == value
			info.menuList = value
			info.keepShownOnClick = true
			info.colorCode = classColors[value]
			UIDropDownMenu_AddButton(info)
		end
	else
		for index, value in ipairs(specs[menuList]) do
			info = UIDropDownMenu_CreateInfo()
			info.func = setClass
			info.arg1, info.arg2 = menuList, value
			info.text, info.checked = value, brmV.selectedSpec == value
			info.colorCode = classColors[menuList]
			UIDropDownMenu_AddButton(info, level)
		end
	end
end

--Is called when the legendary select dropdown menu is initialized.
local function legSelectInitialize(frame, level, menuList)
	index = tonumber(frame:GetName():reverse():sub(1, 1))	
	local info = UIDropDownMenu_CreateInfo()
	for i, slot in ipairs(brmT.slotNames) do
		info = UIDropDownMenu_CreateInfo()
		info.text, info.hasArrow, info.checked = slot, false, slot == brmV.selectedLegSlot[index]
		info.keepShownOnClick = false
		info.func = setLegSlot
		info.arg1, info.arg2 = index, slot
		UIDropDownMenu_AddButton(info)
	end
end

local function showBiS()
	if not brmV.BiS["Head"] then
		print("You need to calculate your BiS list first.")
	elseif not BiSOutput:IsShown() then
		BiSOutput:Show()
		BiSOutput.EditBox:SetText(brmT.printBiS())
		BiSButton:SetText("Hide BiS list")
		printBossButton:Hide()
		for i, button in ipairs(resultButton) do
			button:Hide()
		end
	else
		BiSOutput:Hide()
		BiSButton:SetText("Show BiS list")
		printBossButton:Show()
		for i, button in ipairs(resultButton) do
			button:Show()
		end
	end
end

--Is called when the player clicks on the "calculate boss" button. Calls the function to calculate the recommended bosses.
local function calcBosses(self)
	if not IsAddOnLoaded("Blizzard_EncounterJournal") then
		print("WoW has not finished loading. Wait a second then try again.")
		return false
	end
	if brmV.selectedSpec == "" then
		print("Select a class and spec.")
		return false
	end
	local numSelectedBosses = 0
	for i, diff in ipairs(brmV.selectedBosses) do
		numSelectedBosses = numSelectedBosses + (diff > 0 and 1 or 0)
	end
	if numSelectedBosses < 4 then
		print("Select more than 3 Bosses.")
		return false
	end
	
	--print("Calculating")
	if not brmT.calc() then
		if BiSOutput:IsShown() then
			showBiS()
		end
		setCalculatedBossInfo()
	else
		return false
	end
end

--Is called when you click on the calculated boss' frames. Opens that boss' EJ loot page.
local function openEJ(self)
	local buttonIndex, diff = 0, 0
	for i = 1, 3, 1 do
		if self == resultButton[i] then
			buttonIndex = i
		end
	end
	for i = 1, brmT.numBosses, 1 do
		local _, _, id = EJ_GetEncounterInfoByIndex(i, brmT.raidID)
		if id == resultButton[buttonIndex].encounterID then
			diff = brmV.selectedBosses[i] + 13
		end
	end
	if diff <= 13 or diff >= 17 then
		print("ERROR: 002")
		diff = 15
	end
		EncounterJournal_OpenJournal(diff, brmT.raidID, resultButton[buttonIndex].encounterID, nil, nil, true)
end

local function printBossScores()
	print("All Boss scores:")
	for index, boss in ipairs(brmV.sortedBosses) do
		local _, _, _, _, link = EJ_GetEncounterInfoByIndex(boss.index, brmT.raidID)
		local normBossScore = 0
		if brmV.sortedBosses[3].score > 0 then
			normBossScore = boss.score / brmV.sortedBosses[3].score
		elseif brmV.sortedBosses[2].score > 0 then
			normBossScore = boss.score / brmV.sortedBosses[2].score
		elseif brmV.sortedBosses[1].score > 0 then
			normBossScore = boss.score / brmV.sortedBosses[1].score
		end
		normBossScore = math.floor(normBossScore * 100) /100
		print(link, ": ", normBossScore)
	end
end

local function printBossScoresTrue()
	print("Boss scores:")
	for index, boss in ipairs(brmV.sortedBosses) do
		local _, _, _, _, link = EJ_GetEncounterInfoByIndex(boss.index, brmT.raidID)
		print(link, ": ", boss.score)
	end
end

--Opens and creates the big frame
createMainFrame = function()
--copies the Saved Variables into local ones
	brmT = BonusRollManagerTable
	brmV = BonusRollManagerVariables
	statweights = brmV.statweights
		

--Loads the Encounter Journal
	local loaded, reason = LoadAddOn("Blizzard_EncounterJournal")
	if not loaded then
		print("ERROR: EJ not loaded. Reason: "..reason)
	end
	EJMicroButton:Click("LeftButton", true)
	EJMicroButton:Click("LeftButton", true)
	for i = 1, brmT.numBosses, 1 do
		_, _, brmT.bossID[i] = EJ_GetEncounterInfoByIndex(i, brmT.raidID)
	end
	
--Sets up the main frame
 	mainFrame = CreateFrame("Frame", addonName.."Main", UIParent)
 	mainFrame:SetBackdrop({
      bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
      edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
      tile=1, tileSize=32, edgeSize=32, 
      insets={left=12, right=12, top=12, bottom=12}})
 	mainFrame:SetSize(900, 600)
 	mainFrame:SetPoint("CENTER",UIParent, "CENTER", 0, 100)
 	mainFrame:EnableMouse(true)
 	mainFrame:EnableKeyboard(true)
 	mainFrame:SetMovable(true)
 	mainFrame:RegisterForDrag("LeftButton")
 	mainFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
 	mainFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
 	mainFrame:SetFrameStrata("MEDIUM")
 	tinsert(UISpecialFrames, mainFrame:GetName())
	
	--[[mainFrame:RegisterEvent("EJ_LOOT_DATA_RECIEVED")
	mainFrame:SetScript("OnEvent", function (self, event, ...)
			print(event)
			print(...)
		end)]]--
	

--Sets up the close button on the top right
 	closeButton = CreateFrame("Button",addonName.."Close", mainFrame, "UIPanelCloseButton")
 	closeButton:SetSize(30, 30)
 	closeButton:SetPoint("TOPRIGHT", mainFrame, "TOPRIGHT", -3, -3)
 	closeButton:SetScript("OnClick", function(self) PlaySound("igMainMenuOption") self:GetParent():Hide() self:GetParent():SetParent(nil) end)

--Sets up the class select dropdown menu
 	classSelect = CreateFrame("Button", addonName.."classSelect", mainFrame, "UIDropDownMenuTemplate")
 	classSelect:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 20, -20)
 	UIDropDownMenu_SetWidth(classSelect, 160)
 	UIDropDownMenu_JustifyText(classSelect, "LEFT")
	UIDropDownMenu_SetText(classSelect, classColors[brmV.selectedClass]..brmV.selectedSpec.." "..brmV.selectedClass)
	UIDropDownMenu_Initialize(classSelect, classSelectInitialize)
	
--Sets up the textboxes for statweights and their labels
 	for i, value in ipairs(statNames) do
 		statWeightBoxes[i] = CreateFrame("EditBox", addonName.."statWeightBox"..i, mainFrame, "InputBoxTemplate")
 		statWeightBoxes[i]:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 160, -30*i-70)
 		statWeightBoxes[i]:SetSize(50, 35)
 		statWeightBoxes[i]:SetFontObject(GameFontNormal)
 		statWeightBoxes[i]:SetNumeric(true)
 		statWeightBoxes[i]:SetText(statweights[brmT.getSelectedSpecID()][i] or 0)
		statWeightBoxes[i]:SetAutoFocus(false)
		statWeightBoxes[i]:SetMaxLetters(5)
 		statWeightBoxes[i]:SetScript("OnEditFocusLost", setStatweights)
 		statWeightBoxes[i]:SetScript("OnEnterPressed", setStatweightsEnter)
 		--statWeightBoxes[i]:SetScript("OnChar", setStatweights)
		
		statLabel[i] = statWeightBoxes[i]:CreateFontString(addonName.."statWeightBox"..i.."Label", "OVERLAY", "GameFontNormal")
		statLabel[i]:SetSize(100, 35)
		statLabel[i]:SetPoint("TOPLEFT", statWeightBoxes[i], "TOPLEFT", -100, 0)
		statLabel[i]:SetText(statNames[i])
 	end
	
--Sets up the "Stat Weights:" label
	statweightsLabel = mainFrame:CreateFontString(addonName.."StatweightsLabel", "OVERLAY", "GameFontNormal")
	statweightsLabel:SetSize(160, 35)
	statweightsLabel:SetPoint("TOPRIGHT", mainFrame, "TOPLEFT", 160, -50)
	statweightsLabel:SetText("Stat Weights:")
	statweightsLabel:SetJustifyH("RIGHT")
	
--Sets up the "Show only active" Checkbox
	showActiveStatweights = CreateFrame("CheckButton", addonName.."showActiveStatweightsButton", mainFrame, "UICheckButtonTemplate")
	showActiveStatweights:SetSize(30, 30)
	showActiveStatweights:SetPoint("TOPRIGHT", statWeightBoxes[1], "TOPRIGHT", 0, 25)
	showActiveStatweights:SetScript("OnClick", hideStatweights)
	if (brmV.showOnlyActive == true) then
		showActiveStatweights:SetChecked(true)
		hideStatweights(showActiveStatweights)
	end
	
	_G[showActiveStatweights:GetName().."Text"]:SetText("Show only active stats")
	_G[showActiveStatweights:GetName().."Text"]:ClearAllPoints()
	_G[showActiveStatweights:GetName().."Text"]:SetPoint("TOPRIGHT", showActiveStatweights, "TOPLEFT", 0, 0)
	_G[showActiveStatweights:GetName().."Text"]:SetJustifyH("RIGHT")
	_G[showActiveStatweights:GetName().."Text"]:SetSize(200, 30)
	
	
	
--Following is both unfinished and pointless!
--Sets up the Dropdown selecting the Raid
--[[	local raidID = {786}
	local raidSelectText
	local raidSelect = CreateFrame("Button", addonName.."RaidSelect", mainFrame, "UIDropDownMenuTemplate")
	
	if BonusRollManager_SelectedRaid == nil then
		raidSelectText = "Select Raid"
	else
		raidSelectText = select(1, EJ_GetInstanceInfo(BonusRollManager_SelectedRaid))
	end
	
	function raidSelect.SetValue(self, raid, arg2)
		BonusRollManager_SelectedRaid = raid
		UIDropDownMenu_SetText(raidSelect, select(1, EJ_GetInstanceInfo(raid)))
		CloseDropDownMenus()
	end
	
	raidSelect:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 260, -20)
	UIDropDownMenu_SetWidth(raidSelect, 160)
 	UIDropDownMenu_JustifyText(raidSelect, "LEFT")
	UIDropDownMenu_SetText(raidSelect, raidSelectText)
	UIDropDownMenu_Initialize(raidSelect, function(frame, level, menuList)
		local info = UIDropDownMenu_CreateInfo()
			if level == 1 or level == nil then
				for index, value in ipairs(raidID) do
					info.text = select(1, EJ_GetInstanceInfo(value))
					info.checked = raidID[index] == index
					info.arg1 = value
					info.func = raidSelect.SetValue
					UIDropDownMenu_AddButton(info)
				end
			end
		end)
]]--



--Sets up Checkboxes and labels for Bosses
	if next(brmV.selectedBosses) == nil then
		for i = 1, brmT.numBosses, 1 do
			brmV.selectedBosses[i] = 0
		end
	end
	
	for i = 1, brmT.numBosses, 1 do
		bossCheckBoxes[i] = {}
		for j = 1, 3, 1 do
			bosses[i] = EJ_GetEncounterInfoByIndex(i, brmT.raidID)
			bossCheckBoxes[i][j] = CreateFrame("CheckButton", addonName.."BossCheckBoxes"..i.."_"..j, mainFrame, "UICheckButtonTemplate")
			bossCheckBoxes[i][j]:SetSize(30, 30)
			bossCheckBoxes[i][j]:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 340 + j*40, -45 - i*30)
			bossCheckBoxes[i][j]:SetScript("OnClick", setBosses)
			if brmV.selectedBosses[i] == j then
				bossCheckBoxes[i][j]:SetChecked(true)
			end
		end
		_G[bossCheckBoxes[i][1]:GetName().."Text"]:SetText(bosses[i])
		_G[bossCheckBoxes[i][1]:GetName().."Text"]:ClearAllPoints()
		_G[bossCheckBoxes[i][1]:GetName().."Text"]:SetPoint("TOPRIGHT", bossCheckBoxes[i][1], "TOPLEFT", 0, 0)
		_G[bossCheckBoxes[i][1]:GetName().."Text"]:SetJustifyH("RIGHT")
		_G[bossCheckBoxes[i][1]:GetName().."Text"]:SetSize(200, 30)
	end
	for i = 1, 3, 1 do
		difficultyLabels[i] = bossCheckBoxes[1][i]:CreateFontString(addonName.."DifficultyLabel"..i, "OVERLAY", "GameFontNormal")
		difficultyLabels[i]:SetSize(60, 13)
		difficultyLabels[i]:SetPoint("BOTTOM"..difficultiesAlignment[i], bossCheckBoxes[1][i], "TOP"..difficultiesAlignment[i], 0, 5)
		difficultyLabels[i]:SetText(difficulties[i])
	end
	bossSelectLabel = bossCheckBoxes[1][1]:CreateFontString(addonName.."bossSelectLabel", "OVERLAY", "GameFontNormal")
	bossSelectLabel:SetSize(120, 13)
	bossSelectLabel:SetPoint("BOTTOM", bossCheckBoxes[1][1], "TOP", 0, 30)
	bossSelectLabel:SetText("Select Bosses:")
	bossSelectLabel:SetFont("Fonts\\FRIZQT__.TTF", 16)
	
--Sets up calculate Button
	calcButton = CreateFrame("Button", addonName.."CalcButton", mainFrame, "UIPanelButtonTemplate")
	calcButton:SetSize(150, 30)
	calcButton:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 550, -75)
	calcButton:SetText("Calculate Bonus Rolls")
	calcButton:SetScript("OnClick", calcBosses)
	
--Sets up print all Boss Scores button
	printBossButton = CreateFrame("Button", addonName.."ShowAllBossScoresButton", mainFrame, "UIPanelButtonTemplate")
	printBossButton:SetSize(150, 30)
	printBossButton:SetPoint("TOPLEFT", mainFrame, "BOTTOMLEFT", 0, -30)
	printBossButton:SetText("Print all boss scores")
	printBossButton:SetScript("OnClick", printBossScores)
	printBossButton:Hide()
	
--Sets up show BiS Button
	BiSButton = CreateFrame("Button", addonName.."BiSButton", mainFrame, "UIPanelButtonTemplate")
	BiSButton:SetSize(100, 30)
	BiSButton:SetPoint("LEFT", calcButton, "RIGHT", 30, 0)
	BiSButton:SetText("Show BiS list")
	BiSButton:SetScript("OnClick", showBiS)
	
--Sets up the BiS output frame
	BiSOutput = CreateFrame("ScrollFrame", addonName.."OutputFrame", mainFrame, "InputScrollFrameTemplate")
	BiSOutput:SetSize(360, 400)
 	BiSOutput:SetPoint("TOPLEFT", calcButton, "BOTTOMLEFT", -25, -15)
 	BiSOutput.EditBox:SetText("")
	BiSOutput.EditBox:SetFont("Fonts\\FRIZQT__.TTF", 14)
	BiSOutput.EditBox:SetMaxLetters(0)
	BiSOutput.EditBox:Enable()
	BiSOutput.EditBox:SetWidth(BiSOutput:GetWidth())
	BiSOutput:SetFrameLevel(5)
	BiSOutput.CharCount:Hide()
	BiSOutput:Hide()

	
--Sets up frames to show calculation Results
	for i = 1, 3, 1 do
		resultButton[i] = CreateFrame("BUTTON", addonName.."ResultButton"..i, mainFrame, "EncounterBossButtonTemplate")
		if i > 1 then
			resultButton[i]:SetPoint("TOPLEFT", resultButton[i-1], "BOTTOMLEFT", 0, -15)
		else
			resultButton[i]:SetPoint("TOPLEFT", calcButton, "BOTTOMLEFT", 0, -15)
		end
		resultButton[i]:Show()
		resultButton[i]:SetScript("OnClick", openEJ)
	end
	if brmV.BiS["Head"] then
		setCalculatedBossInfo()
	end
	--print("DONE")
	
--Sets up Legendary Dropdowns
	for i = 1, 2, 1 do
		legSlotSelect[i] = CreateFrame("Button", addonName.."LegSlotSelect"..i, mainFrame, "UIDropDownMenuTemplate")
		legSlotSelect[i]:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 50, -450 - 30 * i)
		UIDropDownMenu_SetWidth(legSlotSelect[i], 100)
		UIDropDownMenu_JustifyText(legSlotSelect[i], "LEFT")
		UIDropDownMenu_SetText(legSlotSelect[i], brmV.selectedLegSlot[i])
		UIDropDownMenu_Initialize(legSlotSelect[i], legSelectInitialize, "", 1, i)
	end
	legSlotSelectLabel = legSlotSelect[1]:CreateFontString(addonName.."LegSlotSelectLabel", "OVERLAY", "GameFontNormal")
	legSlotSelectLabel:SetSize(200, 35)
	legSlotSelectLabel:SetPoint("BOTTOMLEFT", legSlotSelect[1], "TOPLEFT")
	legSlotSelectLabel:SetText("Legenday slots:")
	legSlotSelectLabel:SetJustifyH("LEFT")
	

	
end





























