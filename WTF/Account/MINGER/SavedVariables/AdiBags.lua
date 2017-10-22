
AdiBagsDB = {
	["namespaces"] = {
		["ArmourType"] = {
			["profiles"] = {
				["Default"] = {
					["minLevel"] = 600,
					["equippableOnly"] = true,
				},
			},
		},
		["FilterOverride"] = {
			["profiles"] = {
				["Default"] = {
					["version"] = 3,
					["overrides"] = {
						[132457] = "Equipment#Legenday",
						[146666] = "Equipment#Legenday",
						[128941] = "Equipment#Legenday",
						[23247] = "Quest#Quest",
						[128943] = "Equipment#Legenday",
						[144259] = "Equipment#Legenday",
						[138111] = "Quest#Quest",
						[120978] = "Equipment#Legenday",
						[141190] = "Quest#Quest",
						[128866] = "Equipment#Legenday",
						[132374] = "Equipment#Legenday",
						[138019] = "Quest#Quest",
						[141652] = "Quest#Quest",
						[153005] = "Champion Upgrades#Champion Upgrades",
						[128823] = "Equipment#Legenday",
					},
				},
				["Skullflower"] = {
					["version"] = 3,
					["overrides"] = {
						[153005] = "Champion Upgrades#Champion Upgrades",
					},
				},
			},
		},
		["Herbalism"] = {
			["profiles"] = {
				["Default"] = {
					["flagElemental"] = false,
					["flagReagent"] = false,
					["flagOtherMiscellaneous"] = false,
					["flagHerb"] = false,
					["flagOtherConsumables"] = false,
					["flagJunk"] = false,
					["flagMiscWeapons"] = false,
					["flagFoodDrink"] = false,
					["flagOtherTradeGoods"] = false,
					["flagQuest"] = false,
				},
			},
		},
		["Revelry!"] = {
		},
		["DataSource"] = {
		},
		["Junk"] = {
			["profiles"] = {
				["Default"] = {
					["exclude"] = {
						[23247] = true,
					},
				},
			},
		},
		["MoneyFrame"] = {
			["profiles"] = {
				["Skullflower"] = {
					["small"] = true,
				},
			},
		},
		["Chests and Bags"] = {
		},
		["ItemCategory"] = {
			["profiles"] = {
				["Default"] = {
					["splitBySubclass"] = {
						["Recipe"] = false,
						["Tradeskill"] = true,
						["Gem"] = false,
						["Consumable"] = false,
						["Miscellaneous"] = false,
					},
				},
			},
		},
		["Rogue Lockboxes"] = {
		},
		["NewItem"] = {
			["profiles"] = {
				["Default"] = {
					["glowColor"] = {
						0.917647058823529, -- [1]
						nil, -- [2]
						0.301960784313726, -- [3]
						0.700000017881393, -- [4]
					},
					["ignoreJunk"] = true,
				},
			},
		},
		["Emissary, Recompense and Paragon"] = {
		},
		["Equipment"] = {
			["profiles"] = {
				["Default"] = {
					["dispatchRule"] = "slot",
				},
			},
		},
		["Legion"] = {
		},
		["CurrencyFrame"] = {
			["profiles"] = {
				["Default"] = {
					["shown"] = {
						["Ancient Mana"] = false,
						["Elder Charm of Good Fortune"] = false,
						["Seal of Inevitable Fate"] = false,
						["Writhing Essence"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Curious Coin"] = false,
						["Sightless Eye"] = false,
						["Timeless Coin"] = false,
						["Oil"] = false,
						["Apexis Crystal"] = false,
						["Darkmoon Prize Ticket"] = false,
						["Warforged Seal"] = false,
						["Ironpaw Token"] = false,
						["Garrison Resources"] = false,
						["Lingering Soul Fragment"] = false,
						["Timewarped Badge"] = false,
					},
					["text"] = {
						["name"] = "KkthnxUI_Normal",
					},
				},
				["Skullflower"] = {
					["shown"] = {
						["Elder Charm of Good Fortune"] = false,
						["Writhing Essence"] = false,
						["Nethershard"] = false,
						["Valor"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Garrison Resources"] = false,
						["Warforged Seal"] = false,
						["Timewarped Badge"] = false,
						["Sightless Eye"] = false,
						["Timeless Coin"] = false,
						["Apexis Crystal"] = false,
						["Seal of Broken Fate"] = false,
						["Ironpaw Token"] = false,
						["Seal of Inevitable Fate"] = false,
						["Oil"] = false,
						["Lingering Soul Fragment"] = false,
						["Legionfall War Supplies"] = false,
					},
				},
			},
		},
		["AdiBags_TooltipInfo"] = {
		},
		["ItemSets"] = {
		},
		["Bound"] = {
		},
		["ItemLevel"] = {
			["profiles"] = {
				["Default"] = {
					["minLevel"] = 850,
					["colorScheme"] = "level",
				},
				["Skullflower"] = {
					["minLevel"] = 800,
				},
			},
		},
		["Hearthstones"] = {
		},
	},
	["char"] = {
		["Drahmoon - Madmortem"] = {
			["collapsedSections"] = {
				["Broken Shore#Broken Shore"] = true,
				["Hearthstones#Hearthstones"] = true,
				["Equipment#Set: AMR Affliction"] = true,
				["Equipment#Set: AMR Destruction"] = true,
				["Equipment#Legenday"] = true,
				["Equipment#Set: AMR Demonology"] = true,
				["Junk#Junk"] = true,
			},
		},
	},
	["profileKeys"] = {
		["Dranopix - Madmortem"] = "Default",
		["Dronthal - Madmortem"] = "Default",
		["Drahmoon - Madmortem"] = "Default",
		["Drathtix - Madmortem"] = "Default",
		["Drathal - Madmortem"] = "Default",
		["Mythrilblade - Madmortem"] = "Default",
		["Dranathal - Madmortem"] = "Default",
		["Drathia - Madmortem"] = "Skullflower",
	},
	["profiles"] = {
		["Default"] = {
			["columnWidth"] = {
				["Bank"] = 14,
				["Backpack"] = 14,
			},
			["rightClickConfig"] = false,
			["compactLayout"] = true,
			["autoDeposit"] = true,
			["skin"] = {
				["ReagentBankColor"] = {
					nil, -- [1]
					0.145098039215686, -- [2]
				},
				["border"] = "Roth",
				["BankColor"] = {
					[3] = 0,
				},
			},
			["bagFont"] = {
				["name"] = "KkthnxUI_Normal",
			},
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -155.99951171875,
					["yOffset"] = 199,
				},
				["Bank"] = {
					["xOffset"] = -639.400119373531,
					["point"] = "TOPRIGHT",
					["yOffset"] = -99.9988907072548,
				},
				["Backpack"] = {
					["xOffset"] = -27.9994397693372,
					["yOffset"] = 168.000659306827,
				},
			},
			["positionMode"] = "manual",
			["scale"] = 0.9,
		},
		["Skullflower"] = {
			["showBagType"] = false,
			["virtualStacks"] = {
				["stackable"] = true,
				["others"] = true,
			},
			["columnWidth"] = {
				["Backpack"] = 5,
			},
			["maxHeight"] = 0.45,
			["skin"] = {
				["border"] = "Pixel",
			},
			["questIndicator"] = false,
			["sectionFont"] = {
				["size"] = 15,
			},
			["compactLayout"] = true,
			["hideAnchor"] = true,
			["autoDeposit"] = true,
			["positions"] = {
				["Backpack"] = {
					["xOffset"] = -101.000754144799,
					["yOffset"] = 197.999893087147,
				},
			},
			["positionMode"] = "manual",
			["scale"] = 0.9,
		},
	},
}
