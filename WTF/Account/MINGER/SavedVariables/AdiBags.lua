
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
						[23247] = "Quest#Quest",
						[128941] = "Equipment#Legenday",
						[128943] = "Equipment#Legenday",
						[128823] = "Equipment#Legenday",
						[138111] = "Quest#Quest",
						[120978] = "Equipment#Legenday",
						[141190] = "Quest#Quest",
						[128866] = "Equipment#Legenday",
						[132374] = "Equipment#Legenday",
						[138019] = "Quest#Quest",
						[141652] = "Quest#Quest",
						[153005] = "Champion Upgrades#Champion Upgrades",
						[144259] = "Equipment#Legenday",
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
						["Garrison Resources"] = false,
						["Writhing Essence"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Oil"] = false,
						["Sightless Eye"] = false,
						["Timeless Coin"] = false,
						["Curious Coin"] = false,
						["Apexis Crystal"] = false,
						["Darkmoon Prize Ticket"] = false,
						["Warforged Seal"] = false,
						["Ironpaw Token"] = false,
						["Seal of Inevitable Fate"] = false,
						["Lingering Soul Fragment"] = false,
						["Timewarped Badge"] = false,
					},
					["text"] = {
						["name"] = "KkthnxUI_Normal",
						["size"] = 15,
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
			},
		},
		["Hearthstones"] = {
		},
	},
	["char"] = {
		["Drahmoon - Madmortem"] = {
			["collapsedSections"] = {
				["Broken Shore#Broken Shore"] = true,
				["Junk#Junk"] = true,
				["Hearthstones#Hearthstones"] = true,
				["Equipment#Set: AMR Destruction"] = true,
				["Equipment#Legenday"] = true,
				["Equipment#Set: AMR Demonology"] = true,
				["Equipment#Set: AMR Affliction"] = true,
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
		["Drathia - Madmortem"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["columnWidth"] = {
				["Bank"] = 14,
				["Backpack"] = 14,
			},
			["skin"] = {
				["ReagentBankColor"] = {
					nil, -- [1]
					0.145098039215686, -- [2]
				},
				["BankColor"] = {
					[3] = 0,
				},
				["border"] = "Roth",
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
			["compactLayout"] = true,
			["rightClickConfig"] = false,
			["autoDeposit"] = true,
			["positionMode"] = "manual",
			["scale"] = 0.9,
		},
	},
}
