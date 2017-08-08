
setupGrid2DB = {
	["profileKeys"] = {
		["Dronthal - Madmortem"] = "Dronthal - Madmortem",
	},
	["namespaces"] = {
		["Grid2Frame"] = {
			["profiles"] = {
				["Dronthal - Madmortem"] = {
					["font"] = "KkthnxUI_Normal",
					["menuDisabled"] = true,
					["frameHeights"] = {
						[30] = 35,
						[25] = 45,
						[40] = 28,
					},
					["frameTexture"] = "Grid2 Flat",
					["frameWidth"] = 74,
					["orientation"] = "HORIZONTAL",
				},
			},
		},
		["Grid2Layout"] = {
			["profiles"] = {
				["Dronthal - Madmortem"] = {
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["minimapPos"] = 201.967257452281,
						["hide"] = false,
					},
					["BorderB"] = 0.501960784313726,
					["layoutBySize"] = {
						[30] = "By Group",
						[10] = "By Group",
						[20] = "By Group",
					},
					["layouts"] = {
						["raid"] = "By Group",
						["solo"] = "None",
						["party"] = "Party",
					},
					["BackgroundB"] = 0,
					["PosY"] = -538.304852444444,
					["FrameLock"] = true,
					["BackgroundA"] = 0,
					["BorderR"] = 0.501960784313726,
					["Spacing"] = 4,
					["BorderTexture"] = "None",
					["BorderG"] = 0.501960784313726,
					["BackgroundR"] = 0,
					["PosX"] = 549.778355326434,
				},
			},
		},
		["Grid2Options"] = {
			["profiles"] = {
				["Dronthal - Madmortem"] = {
					["L"] = {
						["indicators"] = {
							["top-bar"] = "bar-top",
						},
					},
				},
			},
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Dronthal - Madmortem"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["enabledModules"] = {
						["Legion"] = true,
						["Cataclysm"] = true,
						["Mists of Pandaria"] = true,
						["The Burning Crusade"] = true,
						["The Lich King"] = true,
						["Warlords of Draenor"] = true,
					},
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
	},
	["global"] = {
		["LoadOnDemandDisabled"] = true,
	},
	["profiles"] = {	
		["Dronthal - Madmortem"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "square",
					["duration"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["font"] = "Friz Quadrata TT",
					["borderSize"] = 1,
					["fontSize"] = 8,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
					["height"] = 7,
					["level"] = 9,
					["textlength"] = 12,
					["width"] = 12,
				},
				["corner-bottom-right"] = {
					["width"] = 12,
					["type"] = "square",
					["fontSize"] = 8,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["height"] = 7,
					["level"] = 8,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["text-down"] = {
					["font"] = "Friz Quadrata TT",
					["type"] = "text",
					["fontSize"] = 10,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["shadowDisabled"] = true,
					["level"] = 6,
					["textlength"] = 5,
					["fontFlags"] = "OUTLINE",
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["role"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 3,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 13,
				},
				["bar-bottom-right"] = {
					["type"] = "bar",
					["duration"] = true,
					["width"] = 10,
					["opacity"] = 1,
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 2,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -2,
					},
					["level"] = 8,
					["height"] = 5,
					["texture"] = "Grid2 Flat",
				},
				["bar-top-left-color"] = {
					["type"] = "bar-color",
				},
				["bar-top-right"] = {
					["texture"] = "Gradient",
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["level"] = 9,
					["height"] = 5,
					["duration"] = true,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -2,
					},
					["width"] = 10,
				},
				["bar-top-left"] = {
					["texture"] = "Gradient",
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["level"] = 9,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 2,
					},
					["duration"] = true,
					["height"] = 5,
					["width"] = 10,
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 20,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Grid2 Flat",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["height"] = 7,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["level"] = 5,
					["borderSize"] = 1,
					["width"] = 12,
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-right"] = {
					["type"] = "square",
					["duration"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["font"] = "Friz Quadrata TT",
					["borderSize"] = 1,
					["fontSize"] = 8,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["height"] = 7,
					["level"] = 5,
					["textlength"] = 12,
					["width"] = 12,
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["top"] = {
					["fontSize"] = 10,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["font"] = "KkthnxUI_Normal",
					["type"] = "square",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["height"] = 7,
					["level"] = 6,
					["disableOmniCC"] = true,
					["width"] = 12,
				},
				["top-bar-color"] = {
					["type"] = "bar-color",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Blizzard Raid Bar",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["bar-bottom-right-color"] = {
					["type"] = "bar-color",
				},
				["text-up"] = {
					["fontSize"] = 10,
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["location"] = {
						["y"] = -16,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["shadowDisabled"] = true,
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "OUTLINE",
				},
				["top-bar"] = {
					["type"] = "bar",
					["duration"] = true,
					["width"] = 10,
					["opacity"] = 1,
					["orientation"] = "HORIZONTAL",
					["height"] = 5,
					["level"] = 8,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["texture"] = "Grid2 Flat",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["bar-top-right-color"] = {
					["type"] = "bar-color",
				},
			},
			["statuses"] = {
				["debuff-Forbearance"] = {
					["type"] = "debuff",
					["spellName"] = 25771,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.298039215686275,
						["b"] = 0,
					},
				},
				["buff-BeaconOfLight-mine"] = {
					["spellName"] = 53563,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.956862745098039,
						["g"] = 0.180392156862745,
						["b"] = 0.96078431372549,
					},
				},
				["buff-DevotionAura-mine"] = {
					["spellName"] = "Devotion Aura",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.172549019607843,
						["g"] = 0.564705882352941,
						["b"] = 0.952941176470588,
					},
				},
				["buff-BestowFaith-mine"] = {
					["spellName"] = "Bestow Faith",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.83921568627451,
						["b"] = 0,
					},
				},
				["buff-BlessingofSacrifice-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.0980392156862745,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Blessing of Sacrifice",
				},
				["buff-BlessingofProtection-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.580392156862745,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Blessing of Protection",
				},
				["buff-AuraofMercy-mine"] = {
					["spellName"] = "Aura of Mercy",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.403921568627451,
						["g"] = 0.262745098039216,
						["b"] = 0.964705882352941,
					},
				},
				["buff-BlessingofFreedom-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.36078431372549,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Blessing of Freedom",
				},
				["buff-Tyr'sDeliverance-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.76078431372549,
						["r"] = 0.976470588235294,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Tyr's Deliverance",
				},
				["role"] = {
					["hideInCombat"] = true,
				},
				["color-timeroverlay"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.5,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["buff-BeaconofFaith-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.4,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 156910,
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
				},
				["buff-BeaconofVirtue-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.6,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Beacon of Virtue",
				},
				["buff-AuraofSacrifice-mine"] = {
					["spellName"] = "Aura of Sacrifice",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.180392156862745,
						["b"] = 0,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-BeaconOfLight-mine"] = 101,
					["buff-BeaconofVirtue-mine"] = 102,
					["buff-BeaconofFaith-mine"] = 100,
				},
				["corner-bottom-right"] = {
					["buff-BestowFaith-mine"] = 50,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
					["banzai-threat"] = 50,
				},
				["role"] = {
					["dungeon-role"] = 51,
				},
				["bar-bottom-right"] = {
					["buff-BestowFaith-mine"] = 51,
				},
				["bar-top-left"] = {
					["buff-BeaconofVirtue-mine"] = 50,
				},
				["bar-top-right"] = {
					["buff-BlessingofSacrifice-mine"] = 52,
					["buff-BlessingofProtection-mine"] = 51,
					["buff-BlessingofFreedom-mine"] = 50,
				},
				["text-down-color"] = {
					["debuff-Forbearance"] = 53,
				},
				["bar-top-left-color"] = {
					["color-timeroverlay"] = 50,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-bottom-left"] = {
					["buff-AuraofSacrifice-mine"] = 50,
					["buff-DevotionAura-mine"] = 51,
					["buff-AuraofMercy-mine"] = 52,
				},
				["corner-top-right"] = {
					["buff-BlessingofSacrifice-mine"] = 51,
					["buff-BlessingofProtection-mine"] = 52,
					["buff-BlessingofFreedom-mine"] = 50,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-right"] = {
					["raid-icon-target"] = 50,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["top-bar-color"] = {
					["color-timeroverlay"] = 52,
				},
				["top"] = {
					["buff-Tyr'sDeliverance-mine"] = 51,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["bar-bottom-right-color"] = {
					["color-timeroverlay"] = 51,
				},
				["text-up"] = {
					["resurrection"] = 98,
					["feign-death"] = 95,
					["death"] = 93,
					["afk"] = 97,
					["offline"] = 96,
					["vehicle"] = 70,
					["charmed"] = 65,
				},
				["top-bar"] = {
					["buff-Tyr'sDeliverance-mine"] = 51,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["bar-top-right-color"] = {
					["color-timeroverlay"] = 50,
				},
			},
		},
	},
}
