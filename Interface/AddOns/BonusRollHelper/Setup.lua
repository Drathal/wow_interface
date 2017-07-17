local addonName, addonTable = ...

BonusRollManagerVariables = {} --This WILL be saved between Sessions
BonusRollManagerTable = {} --This WILL NOT be saved between Sessions; Used for "global" constants



BonusRollManagerVariables.selectedClass = "Select your Class"	--Saves the selected Class
BonusRollManagerVariables.selectedSpec = ""						--Saves the selected Spec
BonusRollManagerVariables.selectedLegSlot = {"", ""}
BonusRollManagerVariables.statweights = {[0] = {0,0,0,0,0,0,0,0,0, 0} }		--Saves the selected statweights
BonusRollManagerVariables.showOnlyActive = false				--Saves whether or not inactive statweights should be shown
--BonusRollManagerVariables.selectedRaid = nil					--Saves the selected raid
BonusRollManagerVariables.selectedBosses = {}					--Saves the difficulty bosses will be killed at
BonusRollManagerVariables.calculatedBosses = {0,0,0}			--Saves the calculated bosses
BonusRollManagerVariables.sortedBosses = {}
BonusRollManagerVariables.BiS = {}


BonusRollManagerTable.raidID = 875							--RaidID of the current Raid (Nighthold)
BonusRollManagerTable.numBosses = 9							--Number of Bosses of the current Raid
BonusRollManagerTable.classID = {							--Table of ClassIDs
	["Select your Class"] = 0,
	["Warrior"] = 1,
	["Paladin"] = 2,
	["Hunter"] = 3,
	["Rogue"] = 4,
	["Priest"] = 5,
	["Death Knight"] = 6,
	["Shaman"] = 7,
	["Mage"] = 8,
	["Warlock"] = 9,
	["Monk"] = 10,
	["Druid"] = 11,
	["Demon Hunter"] = 12
}
BonusRollManagerTable.specID = {							--table of SpecIDs
	["Select your Class"] = {[""] = 0},
	["Death Knight"] = {["Blood"] = 250, ["Frost"] = 251, ["Unholy"] = 252},
	["Demon Hunter"] = {["Havoc"] = 577, ["Vengance"] = 581},
	["Druid"] = {["Balance"] = 102, ["Feral"] = 103, ["Guardian"] = 104, ["Restoration"] = 105},
	["Hunter"] = {["Beast Mastery"] = 253, ["Marksmanship"] = 254, ["Survival"] = 255},
	["Mage"] = {["Arcane"] = 62, ["Fire"] = 63, ["Frost"] = 64},
	["Monk"] = {["Brewmaster"] = 268, ["Mistweaver"] = 270, ["Windwalker"] = 269},
	["Paladin"] = {["Holy"] = 65, ["Protection"] = 66, ["Retribution"] = 70},
	["Priest"] = {["Discipline"] = 256, ["Holy"] = 257, ["Shadow"] = 258},
	["Rogue"] = {["Assassination"] = 259, ["Outlaw"] = 260, ["Subtlety"] = 261},
	["Shaman"] = {["Elemental"] = 262, ["Enhancement"] = 263, ["Restoration"] = 264},
	["Warlock"] = {["Affliction"] = 265, ["Demonology"] = 266, ["Destruction"] = 267},
	["Warrior"] = {["Arms"] = 71, ["Fury"] = 72, ["Protection"] = 73}
}
BonusRollManagerTable.frameCreated = false					--Used to determine if mainFrame was already created this Session
BonusRollManagerTable.tierNames = {							--Table of Names of current Tier pieces for all classes
	["Warrior"] = "Titanic Onslaught",
	["Paladin"] = "Radiant Lightbringer",
	["Hunter"] = "Wildstalker",
	["Rogue"] = "Fanged Slayer's",
	["Priest"] = "Blind Absolution",
	["Death Knight"] = "Gravewarden",
	["Shaman"] = "of the Skybreaker",
	["Mage"] = "of the Arcane Tempest",
	["Warlock"] = "Diabolic",
	["Monk"] = "Xuen's",
	["Druid"] = "Stormheart",
	["Demon Hunter"] = "Demonbane"
}
BonusRollManagerTable.tierSlots = {}						--Table of the slots of current Tier Pieces
BonusRollManagerTable.slotNames = {"Head", "Neck", "Shoulder", "Back", "Chest", "Wrist", "Hands", "Waist", "Legs", "Feet", "Finger", "Trinket"}
BonusRollManagerTable.numLoot = {}
BonusRollManagerTable.bossID = {}



BonusRollManagerTable.getSelectedSpecID = function()
	local temp = BonusRollManagerTable.specID[BonusRollManagerVariables.selectedClass][BonusRollManagerVariables.selectedSpec]
	return temp
end



for class, classSpecs in pairs(BonusRollManagerTable.specID) do
	for spec, specID in pairs(classSpecs) do
		BonusRollManagerVariables.statweights[specID] = {0,0,0,0,0,0,0,0,0, 0}
	end
end












