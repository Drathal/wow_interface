
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
						[144259] = "Equipment#Legenday",
						[128943] = "Equipment#Legenday",
						[138111] = "Quest#Quest",
						[141652] = "Quest#Quest",
						[141190] = "Quest#Quest",
						[138019] = "Quest#Quest",
						[132374] = "Equipment#Legenday",
						[128866] = "Equipment#Legenday",
						[120978] = "Equipment#Legenday",
						[128823] = "Equipment#Legenday",
						[23247] = "Quest#Quest",
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
		["ItemLevel"] = {
			["profiles"] = {
				["Default"] = {
					["minLevel"] = 850,
					["colorScheme"] = "level",
				},
			},
		},
		["AdiBags_TooltipInfo"] = {
		},
		["ItemSets"] = {
		},
		["Bound"] = {
		},
		["CurrencyFrame"] = {
			["profiles"] = {
				["Default"] = {
					["shown"] = {
						["Ancient Mana"] = false,
						["Elder Charm of Good Fortune"] = false,
						["Curious Coin"] = false,
						["Writhing Essence"] = false,
						["Timeless Coin"] = false,
						["Garrison Resources"] = false,
						["Sightless Eye"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Seal of Inevitable Fate"] = false,
						["Apexis Crystal"] = false,
						["Darkmoon Prize Ticket"] = false,
						["Warforged Seal"] = false,
						["Ironpaw Token"] = false,
						["Oil"] = false,
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
		["Hearthstones"] = {
		},
	},
	["char"] = {
		["Drahmoon - Madmortem"] = {
			["collapsedSections"] = {
				["Broken Shore#Broken Shore"] = true,
				["Hearthstones#Hearthstones"] = true,
				["Equipment#Set: AMR Affliction"] = true,
				["Equipment#Legenday"] = true,
				["Equipment#Set: AMR Destruction"] = true,
				["Equipment#Set: AMR Demonology"] = true,
				["Junk#Junk"] = true,
			},
		},
	},
	["profileKeys"] = {
		["Drathia - Madmortem"] = "Default",
		["Dronthal - Madmortem"] = "Default",
		["Mythrilblade - Madmortem"] = "Default",
		["Drathtix - Madmortem"] = "Default",
		["Drathal - Madmortem"] = "Default",
		["Drahmoon - Madmortem"] = "Default",
		["Dranathal - Madmortem"] = "Default",
		["Dranopix - Madmortem"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["scale"] = 0.9,
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
				["Backpack"] = {
					["xOffset"] = -178.999814187162,
					["yOffset"] = 160.000552707234,
				},
				["Bank"] = {
					["xOffset"] = -685.750008282397,
					["point"] = "TOPRIGHT",
					["yOffset"] = -125.999134159109,
				},
			},
			["compactLayout"] = true,
			["rightClickConfig"] = false,
			["autoDeposit"] = true,
			["positionMode"] = "manual",
			["columnWidth"] = {
				["Backpack"] = 14,
				["Bank"] = 14,
			},
		},
	},
}
