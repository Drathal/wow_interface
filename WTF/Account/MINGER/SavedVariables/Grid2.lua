
Grid2DB = {
	["namespaces"] = {
		["Grid2AoeHeals"] = {
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["baseProfile"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["enabledModules"] = {
						["Legion"] = true,
						["Cataclysm"] = true,
						["The Burning Crusade"] = true,
						["Mists of Pandaria"] = true,
						["The Lich King"] = true,
						["Warlords of Draenor"] = true,
					},
				},
			},
		},
		["Grid2Layout"] = {
			["profiles"] = {
				["baseProfile"] = {
					["BorderB"] = 0.501960784313726,
					["layoutBySize"] = {
						[30] = "By Group",
						[10] = "By Group",
						[20] = "By Group",
					},
					["layouts"] = {
						["raid"] = "By Group",
						["solo"] = "Solo",
						["party"] = "Party",
					},
					["BackgroundR"] = 0,
					["FrameLock"] = true,
					["BorderR"] = 0.501960784313726,
					["PosX"] = 549.778355326434,
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["minimapPos"] = 201.967257452281,
					},
					["PosY"] = -538.304852444444,
					["BorderTexture"] = "None",
					["BackgroundA"] = 0,
					["BorderG"] = 0.501960784313726,
					["BackgroundB"] = 0,
					["Spacing"] = 4,
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["Grid2Options"] = {
		},
		["Grid2Frame"] = {
			["profiles"] = {
				["baseProfile"] = {
					["font"] = "KkthnxUI_Normal",
					["menuDisabled"] = true,
					["orientation"] = "HORIZONTAL",
					["frameTexture"] = "Grid2 Flat",
					["frameWidth"] = 74,
					["frameHeights"] = {
						[30] = 35,
						[25] = 45,
						[40] = 28,
					},
				},
			},
		},
		["Grid2Utils"] = {
		},
	},
	["baseProfile"] = {
	},
	["profileKeys"] = {
		["Drathtix - Madmortem"] = "baseProfile",
	},
	["profiles"] = {
		["Drathtix - Madmortem"] = {
			["statuses"] = {
				["buff-RenewingMist-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.5,
					},
					["useSpellId"] = true,
					["mine"] = true,
					["spellName"] = 119611,
				},
				["buff-EnvelopingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 1,
						["r"] = 0.2,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 124682,
				},
				["buff-LifeCocoon"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.8,
						["g"] = 0,
						["r"] = 0.4,
					},
					["spellName"] = 116849,
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-top"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
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
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-EnvelopingMist-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["side-top"] = {
					["buff-LifeCocoon"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["corner-top-right"] = {
					["buff-RenewingMist-mine"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 80,
					["health-low"] = 55,
					["debuff-Poison"] = 90,
					["target"] = 50,
					["debuff-Magic"] = 70,
					["debuff-Curse"] = 60,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
		},
		["baseProfile"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "square",
					["duration"] = true,
					["width"] = 12,
					["borderSize"] = 1,
					["font"] = "Friz Quadrata TT",
					["fontSize"] = 8,
					["height"] = 7,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
					["level"] = 9,
					["textlength"] = 12,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["side-top"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["width"] = 12,
					["borderSize"] = 1,
					["fontSize"] = 8,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["height"] = 7,
					["level"] = 8,
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["text-down"] = {
					["fontSize"] = 10,
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["shadowDisabled"] = true,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
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
					["fontSize"] = 8,
					["location"] = {
						["y"] = 3,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 13,
				},
				["bar-bottom-right"] = {
					["type"] = "bar",
					["opacity"] = 1,
					["width"] = 10,
					["duration"] = true,
					["location"] = {
						["y"] = 2,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -2,
					},
					["height"] = 5,
					["level"] = 8,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["top-bar-color"] = {
					["type"] = "bar-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["bar-top-left-color"] = {
					["type"] = "bar-color",
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
				["top-bar"] = {
					["type"] = "bar",
					["opacity"] = 1,
					["width"] = 10,
					["duration"] = true,
					["height"] = 5,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 8,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["text-up"] = {
					["fontSize"] = 10,
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["shadowDisabled"] = true,
					["location"] = {
						["y"] = -16,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "OUTLINE",
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
				["bar-top-right"] = {
					["texture"] = "Gradient",
					["type"] = "bar",
					["height"] = 5,
					["level"] = 9,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -2,
					},
					["duration"] = true,
					["orientation"] = "HORIZONTAL",
					["width"] = 10,
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
				["bar-top-left"] = {
					["texture"] = "Gradient",
					["type"] = "bar",
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 2,
					},
					["level"] = 9,
					["height"] = 5,
					["duration"] = true,
					["orientation"] = "HORIZONTAL",
					["width"] = 10,
				},
				["top"] = {
					["disableOmniCC"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["font"] = "KkthnxUI_Normal",
					["borderSize"] = 1,
					["type"] = "square",
					["height"] = 7,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 6,
					["fontSize"] = 10,
					["width"] = 12,
				},
				["bar-top-right-color"] = {
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
				["corner-bottom-left"] = {
					["width"] = 12,
					["type"] = "square",
					["borderSize"] = 1,
					["height"] = 7,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["type"] = "square",
					["duration"] = true,
					["width"] = 12,
					["borderSize"] = 1,
					["font"] = "Friz Quadrata TT",
					["fontSize"] = 8,
					["height"] = 7,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["level"] = 5,
					["textlength"] = 12,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
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
				["buff-EnvelopingMist-mine"] = {
					["spellName"] = 124682,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.976470588235294,
						["g"] = 0.988235294117647,
						["b"] = 0.368627450980392,
					},
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
				["dungeon-role"] = {
					["hideDamagers"] = true,
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
				["buff-RenewingMist-mine"] = {
					["type"] = "buff",
					["spellName"] = 119611,
					["useSpellId"] = true,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5,
						["g"] = 1,
						["b"] = 0,
					},
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
				["color-timeroverlay"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.5,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
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
				["buff-LifeCocoon"] = {
					["type"] = "buff",
					["spellName"] = 116849,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.96078431372549,
						["g"] = 1,
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
				["buff-SoothingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.298039215686275,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 115175,
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
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 1,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-EnvelopingMist-mine"] = 99,
				},
				["side-top"] = {
				},
				["corner-bottom-right"] = {
					["buff-SoothingMist-mine"] = 50,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
					["debuff-Disease"] = 80,
					["health-low"] = 55,
					["debuff-Poison"] = 90,
					["banzai-threat"] = 50,
					["target"] = 50,
					["debuff-Magic"] = 70,
					["debuff-Curse"] = 60,
				},
				["role"] = {
					["dungeon-role"] = 51,
				},
				["bar-bottom-right"] = {
					["buff-SoothingMist-mine"] = 50,
				},
				["top-bar-color"] = {
					["color-timeroverlay"] = 52,
				},
				["bar-top-left-color"] = {
					["color-timeroverlay"] = 50,
				},
				["text-down-color"] = {
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
				["top-bar"] = {
					["buff-LifeCocoon"] = 52,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["resurrection"] = 98,
					["feign-death"] = 95,
					["death"] = 93,
					["afk"] = 97,
					["offline"] = 96,
					["vehicle"] = 70,
					["health-deficit"] = 50,
				},
				["icon-right"] = {
					["raid-icon-target"] = 50,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["bar-top-right"] = {
					["buff-RenewingMist-mine"] = 50,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["bar-bottom-right-color"] = {
					["color-timeroverlay"] = 51,
				},
				["top"] = {
					["buff-LifeCocoon"] = 50,
				},
				["bar-top-left"] = {
					["buff-EnvelopingMist-mine"] = 50,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["bar-top-right-color"] = {
					["color-timeroverlay"] = 50,
				},
				["corner-bottom-left"] = {
					["buff-AuraofMercy-mine"] = 52,
					["threat"] = 99,
					["buff-DevotionAura-mine"] = 51,
					["buff-AuraofSacrifice-mine"] = 50,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["corner-top-right"] = {
					["buff-RenewingMist-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
			},
		},
	},
}
