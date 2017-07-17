-------------------------------------------------
--   R A C E   D A T A B A S E   M O D U L E   --
-------------------------------------------------
local a = AllTheThings;
a.RaceDB = {
	["Human"] = 1,
	["Orc"] = 2,
	["Dwarf"] = 3,
	["NightElf"] = 4,
	["Night Elf"] = 4,
	["Undead"] = 5,
	["Tauren"] = 6,
	["Gnome"] = 7,
	["Troll"] = 8,
	["Goblin"] = 9,
	["BloodElf"] = 10,
	["Blood Elf"] = 10,
	["Draenei"] = 11,
	["Worgen"] = 22,
	["Pandaren"] = { -- NOTE: Faction Group dictates this.
		["Neutral"] = 24,
		["Alliance"] = 25, 
		["Horde"] = 26, 
	}
};