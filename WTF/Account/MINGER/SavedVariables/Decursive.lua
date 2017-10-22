
DecursiveDB = {
	["profileKeys"] = {
		["Darlaxle - Blackhand"] = "Default",
		["Mythrilblade - Madmortem"] = "Default",
		["Drathia - Madmortem"] = "Skullflower",
		["Dronthal - Madmortem"] = "Default",
		["Drathtix - Madmortem"] = "Default",
		["Drathal - Madmortem"] = "Default",
		["Drahmoon - Madmortem"] = "Default",
		["Dranathal - Madmortem"] = "Default",
		["Dranopix - Madmortem"] = "Default",
	},
	["class"] = {
		["HUNTER"] = {
			["CureOrder"] = {
				-11, -- [1]
				-15, -- [2]
				nil, -- [3]
				-12, -- [4]
				[8] = -13,
				[16] = -14,
				[32] = -16,
			},
		},
		["PALADIN"] = {
			["CureOrder"] = {
				-13, -- [1]
				-15, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = 1,
				[16] = 2,
				[32] = -16,
			},
		},
		["WARLOCK"] = {
			["CureOrder"] = {
				-13, -- [1]
				-12, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = -15,
				[16] = -16,
				[32] = 1,
			},
		},
		["ROGUE"] = {
			["CureOrder"] = {
				-11, -- [1]
				-15, -- [2]
				nil, -- [3]
				-12, -- [4]
				[8] = -13,
				[16] = -14,
				[32] = -16,
			},
		},
		["SHAMAN"] = {
			["CureOrder"] = {
				nil, -- [1]
				-15, -- [2]
				[8] = -13,
				[16] = -14,
				[32] = -16,
			},
		},
		["DRUID"] = {
			["CureOrder"] = {
				3, -- [1]
				-15, -- [2]
				nil, -- [3]
				1, -- [4]
				[8] = 2,
				[16] = -14,
				[32] = -16,
			},
		},
		["MONK"] = {
			["CureOrder"] = {
				nil, -- [1]
				-15, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = 2,
				[16] = 3,
				[32] = -16,
			},
		},
		["PRIEST"] = {
			["CureOrder"] = {
				3, -- [1]
				2, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = -15,
				[16] = 1,
				[32] = -16,
			},
		},
	},
	["global"] = {
		["LastVersionAnnounce"] = 1508691453,
	},
	["profiles"] = {
		["Default"] = {
			["Print_CustomFrame"] = false,
			["DebuffsFrameStickToRight"] = true,
			["AutoHideMUFs"] = 2,
			["AfflictionTooltips"] = false,
			["DebuffsFrameElemAlpha"] = 1,
			["DebuffsFrameShowHelp"] = false,
			["DebuffsFrameContainer_y"] = 152.177744102455,
			["DebuffsFrameElemScale"] = 1.14,
			["DebuffsFrameContainer_x"] = 538.311868451929,
			["HideLiveList"] = true,
			["Amount_Of_Afflicted"] = 1,
			["MainBarX"] = 3.55539423756738,
			["ShowDebuffsFrame"] = false,
			["MainBarY"] = -195.555386679698,
			["DebuffsFrameMaxCount"] = 40,
			["Print_Error"] = false,
			["Scan_Pets"] = false,
			["Print_ChatFrame"] = false,
			["DebuffsFrameElemBorderShow"] = false,
			["DebuffsFrameElemBorderAlpha"] = 0.5,
			["Show_Stealthed_Status"] = false,
		},
		["Skullflower"] = {
			["Print_Error"] = false,
			["AutoHideMUFs"] = 2,
			["DebuffsFrameContainer_y"] = 187.022118243904,
			["Show_Stealthed_Status"] = false,
			["MainBarX"] = 682.666683197022,
			["MainBarY"] = -95.9999914738864,
			["ShowDebuffsFrame"] = false,
			["DebuffsFramePerline"] = 5,
			["AfflictionTooltips"] = false,
			["Print_CustomFrame"] = false,
			["DebuffsFrameContainer_x"] = 397.511033931041,
			["HideLiveList"] = true,
			["DebuffsFrameMaxCount"] = 40,
			["Print_ChatFrame"] = false,
		},
	},
}
