
ElvDB = {
	["profileKeys"] = {
		["Dronthal - Madmortem"] = "Hetsig",
		["Drathia - Madmortem"] = "Hetsig",
		["Drathtix - Madmortem"] = "Hetsig",
		["Drathal - Madmortem"] = "Hetsig",
		["Drahmoon - Madmortem"] = "Hetsig",
		["Dranathal - Madmortem"] = "Hetsig",
		["Dranopix - Madmortem"] = "Hetsig",
	},
	["global"] = {
		["general"] = {
			["mapAlphaWhenMoving"] = 1,
			["WorldMapCoordinates"] = {
				["position"] = "TOPLEFT",
			},
			["disableOrderHallBar"] = true,
			["autoScale"] = false,
			["valuecolor"] = {
				["a"] = 1,
				["b"] = 0.988235294117647,
				["g"] = 0.733333333333333,
				["r"] = 0.164705882352941,
			},
			["animateConfig"] = false,
			["fadeMapWhenMoving"] = false,
			["commandBarSetting"] = "ENABLED",
		},
		["uiScale"] = "0.71111111111111",
		["userInformedNewChanges1"] = true,
		["unitframe"] = {
			["buffwatch"] = {
				["PALADIN"] = {
					[200025] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["color"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 1,
						},
						["id"] = 200025,
						["xOffset"] = 0,
						["style"] = "coloredIcon",
						["yOffset"] = 0,
					},
					[183415] = {
						["enabled"] = false,
						["anyUnit"] = false,
						["point"] = "BOTTOMLEFT",
						["id"] = 183415,
						["yOffset"] = 0,
						["style"] = "coloredIcon",
						["color"] = {
							["b"] = 0.96862745098039,
							["g"] = 1,
							["r"] = 0.72549019607843,
						},
						["xOffset"] = 0,
						["onlyShowMissing"] = false,
					},
					[31821] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "BOTTOMRIGHT",
						["id"] = 31821,
						["yOffset"] = 0,
						["style"] = "coloredIcon",
						["color"] = {
							["b"] = 0,
							["g"] = 0.87450980392157,
							["r"] = 1,
						},
						["xOffset"] = 0,
						["onlyShowMissing"] = false,
					},
					[223306] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["id"] = 223306,
						["yOffset"] = 0,
						["style"] = "coloredIcon",
						["color"] = {
							["b"] = 0.62745098039216,
							["g"] = 0.39607843137255,
							["r"] = 1,
						},
						["xOffset"] = -10,
						["onlyShowMissing"] = false,
					},
				},
				["PRIEST"] = {
					[202685] = {
						["enabled"] = false,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["id"] = 202685,
						["style"] = "coloredIcon",
						["xOffset"] = 0,
						["yOffset"] = 0,
					},
				},
				["MONK"] = {
					[202685] = {
						["enabled"] = false,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["id"] = 202685,
						["style"] = "coloredIcon",
						["xOffset"] = 0,
						["yOffset"] = 0,
					},
				},
			},
			["ChannelTicks"] = {
				["Penance"] = 3,
			},
		},
		["sle"] = {
			["advanced"] = {
				["optionsLimits"] = true,
				["confirmed"] = true,
				["general"] = true,
				["cyrillics"] = {
					["commands"] = true,
				},
			},
		},
	},
	["sle"] = {
		["TimePlayed"] = {
			["Madmortem"] = {
				["Drathia"] = {
					["Level"] = 110,
					["Class"] = "PRIEST",
					["LevelTime"] = 466003,
					["TotalTime"] = 1465751,
				},
				["Drahmoon"] = {
					["LevelTime"] = 988681,
					["Class"] = "WARLOCK",
					["TotalTime"] = 4174665,
					["Level"] = 110,
				},
			},
		},
	},
	["faction"] = {
		["Madmortem"] = {
			["Horde"] = {
			},
			["Alliance"] = {
				["Drathia"] = 398061187,
				["Drahmoon"] = 507261290,
			},
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Madmortem"] = {
			["Drathia"] = "PRIEST",
			["Drahmoon"] = "WARLOCK",
		},
	},
	["gold"] = {
		["Madmortem"] = {
			["Drathal"] = 26496445,
			["Dranathal"] = 134090,
			["Dronthal"] = 196136852,
			["Dranopix"] = 92,
			["Drahmoon"] = 507261290,
			["Drathia"] = 398061187,
			["Drathtix"] = 87029292,
		},
	},
	["profiles"] = {
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["fontSize"] = 11,
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["assist"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
		},
		["Drathia - Madmortem"] = {
		},
		["Hetsig"] = {
			["databars"] = {
				["artifact"] = {
					["enable"] = false,
					["width"] = 5,
					["font"] = "Friz Quadrata TT",
					["height"] = 151,
					["textSize"] = 12,
				},
				["reputation"] = {
					["textFormat"] = "PERCENT",
					["width"] = 395,
					["font"] = "Friz Quadrata TT",
					["height"] = 32,
					["textSize"] = 12,
					["orientation"] = "HORIZONTAL",
				},
				["experience"] = {
					["textFormat"] = "CURPERC",
					["enable"] = false,
					["width"] = 395,
					["font"] = "Friz Quadrata TT",
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 32,
				},
				["honor"] = {
					["textFormat"] = "PERCENT",
					["enable"] = false,
					["mouseover"] = true,
					["width"] = 395,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 32,
				},
			},
			["sle"] = {
				["raidmarkers"] = {
					["buttonSize"] = 24,
					["enable"] = false,
					["visibility"] = "INPARTY",
				},
				["media"] = {
					["fonts"] = {
						["gossip"] = {
							["font"] = "Friz Quadrata TT",
							["size"] = 11,
						},
						["zone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["subzone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["questFontSuperHuge"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objectiveHeader"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
						},
						["mail"] = {
							["font"] = "Friz Quadrata TT",
							["size"] = 11,
						},
						["objective"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
						},
						["editbox"] = {
							["font"] = "Friz Quadrata TT",
							["size"] = 11,
						},
						["pvp"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
				["Armory"] = {
					["Character"] = {
						["Enchant"] = {
							["FontSize"] = 11,
							["Font"] = "Friz Quadrata TT",
						},
						["Stats"] = {
							["IlvlFull"] = true,
							["AverageColor"] = {
								["a"] = 1,
								["b"] = 0.92941176470588,
								["g"] = 0.52941176470588,
								["r"] = 0.52941176470588,
							},
							["List"] = {
								["HEALTH"] = true,
								["ALTERNATEMANA"] = true,
								["RUNE_REGEN"] = true,
								["MOVESPEED"] = true,
								["ATTACK_ATTACKSPEED"] = true,
								["POWER"] = true,
								["ENERGY_REGEN"] = true,
								["FOCUS_REGEN"] = true,
							},
							["ItemLevel"] = {
								["font"] = "Friz Quadrata TT",
								["size"] = 20,
							},
						},
						["Backdrop"] = {
							["SelectedBG"] = "HIDE",
						},
						["Gem"] = {
							["SocketSize"] = 12,
						},
						["Durability"] = {
							["Font"] = "Friz Quadrata TT",
							["FontSize"] = 12,
						},
						["Artifact"] = {
							["FontSize"] = 11,
							["Font"] = "Friz Quadrata TT",
						},
						["Level"] = {
							["Font"] = "Friz Quadrata TT",
							["FontSize"] = 12,
							["ShowUpgradeLevel"] = true,
						},
						["Gradation"] = {
							["Display"] = false,
							["Color"] = {
								0.52941176470588, -- [1]
								0.52941176470588, -- [2]
								0.92941176470588, -- [3]
								1, -- [4]
							},
						},
					},
					["Inspect"] = {
						["Enchant"] = {
							["FontSize"] = 11,
							["Font"] = "Friz Quadrata TT",
						},
						["Backdrop"] = {
							["SelectedBG"] = "HIDE",
						},
						["Gem"] = {
							["WarningSize"] = 15,
							["SocketSize"] = 12,
						},
						["Level"] = {
							["Font"] = "Friz Quadrata TT",
							["FontSize"] = 12,
							["ShowUpgradeLevel"] = true,
						},
						["Gradation"] = {
							["Display"] = false,
							["CurrentClassColor"] = true,
						},
					},
				},
				["chat"] = {
					["tab"] = {
						["select"] = true,
						["style"] = "HALFDEFAULT",
					},
					["invite"] = {
						["altInv"] = true,
					},
				},
				["loot"] = {
					["enable"] = true,
				},
				["skins"] = {
					["objectiveTracker"] = {
						["scenarioBG"] = true,
					},
				},
				["bags"] = {
					["lootflash"] = false,
					["artifactPower"] = {
						["fonts"] = {
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = true,
						["short"] = true,
					},
				},
				["tooltip"] = {
					["RaidProg"] = {
						["enable"] = true,
						["raids"] = {
							["trial"] = false,
							["nightmare"] = false,
						},
					},
				},
				["screensaver"] = {
					["subtitle"] = {
						["font"] = "Friz Quadrata TT",
					},
					["date"] = {
						["font"] = "Friz Quadrata TT",
					},
					["tips"] = {
						["font"] = "Friz Quadrata TT",
					},
					["player"] = {
						["font"] = "Friz Quadrata TT",
					},
					["title"] = {
						["font"] = "Friz Quadrata TT",
					},
				},
				["raidmanager"] = {
					["roles"] = true,
				},
				["orderhall"] = {
					["autoOrder"] = {
						["enable"] = true,
						["autoEquip"] = true,
					},
				},
				["datatexts"] = {
					["chathandle"] = false,
					["panel1"] = {
						["enabled"] = true,
						["transparent"] = true,
						["noback"] = true,
						["width"] = 305,
					},
				},
				["unitframes"] = {
					["roleicons"] = "SupervillainUI",
					["unit"] = {
						["party"] = {
							["offline"] = {
								["enable"] = true,
								["yOffset"] = 3,
								["size"] = 18,
							},
						},
						["raid40"] = {
							["offline"] = {
								["enable"] = true,
								["yOffset"] = 3,
								["size"] = 18,
							},
						},
						["raid"] = {
							["offline"] = {
								["enable"] = true,
								["yOffset"] = 3,
								["size"] = 18,
							},
						},
					},
				},
				["minimap"] = {
					["locPanel"] = {
						["autowidth"] = true,
					},
					["mapicons"] = {
						["iconsize"] = 22,
						["iconmouseover"] = true,
						["spacing"] = 2,
						["iconperrow"] = 30,
					},
				},
				["quests"] = {
					["visibility"] = {
						["enable"] = true,
					},
					["autoReward"] = true,
				},
			},
			["ElvUI_SmartQuestTracker"] = {
				["ShowDailies"] = true,
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["lfgIcons"] = false,
				["fontOutline"] = "OUTLINE",
				["panelHeightRight"] = 200,
				["font"] = "Friz Quadrata TT",
				["panelWidth"] = 450,
				["emotionIcons"] = false,
				["panelHeight"] = 188,
				["panelWidthRight"] = 450,
				["panelBackdrop"] = "HIDEBOTH",
				["tabFont"] = "Friz Quadrata TT",
			},
			["thinBorderColorSet"] = true,
			["bagSortIgnoreItemsReset"] = true,
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,282",
				["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,231",
				["MinimapButtonAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-26,-185",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1122,373",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,30",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30",
				["BuffsMover"] = "TOPRIGHT,Minimap,TOPLEFT,-5,0",
				["TargetPowerBarMover"] = "TOP,ElvUF_Target,BOTTOM,0,1",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-30",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,-264.65004089355,130",
				["LootFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,300,530",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,264.65004089355,130",
				["DebuffsMover"] = "BOTTOMRIGHT,Minimap,BOTTOMLEFT,-5,0",
				["SLE_DataPanel_1_Mover"] = "TOP,ElvUIParent,TOP,0,0",
				["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1162,373",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["PlayerPowerBarMover"] = "TOP,ElvUF_Player,BOTTOM,0,1",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-296.25004577637,383.39995666504",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,281",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-297",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,30",
				["ClassBarMover"] = "BOTTOM,ElvUF_Player,TOP,0,1",
				["MicrobarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,205",
				["SquareMinimapBar"] = "TOPRIGHT,Minimap,BOTTOMRIGHT,0,0",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,198",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUF_Target,BOTTOM,0,1",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,296.25004577637,383.39995666504",
				["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,150",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-490",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1122,378",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,205",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,33",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,66",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,30",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUI_Bar1,BOTTOMLEFT,-1,0",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-193,248",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-100",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,99",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUI_Bar1,BOTTOMRIGHT,1,0",
				["ArtifactBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-177,-31",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,205",
				["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-337",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,207",
				["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,165",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,415.25995306396",
				["HonorBarMover"] = "TOP,ElvUIParent,TOP,0,-66",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-325",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-29,232",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,30,894",
				["SLE_Location_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-81,-30",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-300",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,325",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,30",
				["AlertFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,300,530",
				["ComboBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,313",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-340",
			},
			["tooltip"] = {
				["itemCount"] = "NONE",
				["fontOutline"] = "OUTLINE",
				["healthBar"] = {
					["fontSize"] = 11,
					["height"] = 10,
					["font"] = "Friz Quadrata TT",
				},
				["guildRanks"] = false,
				["textFontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["targetInfo"] = false,
				["smallTextFontSize"] = 11,
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
					["size"] = 43,
					["growthDirection"] = "HORIZONTAL",
				},
				["fontSize"] = 11,
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["icons"] = {
						["lfgEye"] = {
							["scale"] = 0.9,
							["yOffset"] = -2,
							["xOffset"] = 0,
							["position"] = "BOTTOMLEFT",
						},
						["classHall"] = {
							["position"] = "BOTTOMRIGHT",
							["scale"] = 0.5,
						},
						["vehicleLeave"] = {
							["size"] = 25,
						},
					},
					["size"] = 200,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["objectiveFrameHeight"] = 500,
				["chatBubbleFont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
					["position"] = "LEFTCHAT",
				},
				["backdropcolor"] = {
					["b"] = 0.0470588235294118,
					["g"] = 0.0470588235294118,
					["r"] = 0.0470588235294118,
				},
				["topPanel"] = false,
				["namefont"] = "Friz Quadrata TT",
				["font"] = "Friz Quadrata TT",
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 0.164705882352941,
					["g"] = 0.733333333333333,
					["b"] = 0.988235294117647,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["talkingHeadFrameScale"] = 0.7,
				["vendorGrays"] = true,
			},
			["unitframe"] = {
				["fontSize"] = 11,
				["smoothbars"] = true,
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["buffIndicator"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["priority"] = "blockNoDuration",
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["enable"] = false,
							["yOffset"] = -1,
							["numrows"] = 3,
							["onlyDispellable"] = true,
							["perrow"] = 1,
							["anchorPoint"] = "BOTTOM",
						},
						["targetsGroup"] = {
							["xOffset"] = 0,
							["height"] = 16,
							["yOffset"] = 1,
							["width"] = 65,
						},
						["healPrediction"] = true,
						["infoPanel"] = {
							["transparent"] = true,
						},
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:short]",
						},
						["height"] = 45,
						["verticalSpacing"] = 1,
						["horizontalSpacing"] = 1,
						["growthDirection"] = "LEFT_DOWN",
						["roleIcon"] = {
							["damager"] = false,
							["position"] = "BOTTOM",
							["size"] = 11,
						},
						["power"] = {
							["text_format"] = "[powercolor]",
							["height"] = 4,
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["buffs"] = {
							["sizeOverride"] = 20,
							["xOffset"] = -47,
							["perrow"] = 2,
							["anchorPoint"] = "RIGHT",
						},
					},
					["pet"] = {
						["rangeCheck"] = false,
						["buffIndicator"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["insideInfoPanel"] = false,
						["width"] = 85,
						["name"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["spark"] = false,
							["iconAttached"] = false,
							["width"] = 85,
							["iconXOffset"] = -1,
							["height"] = 25,
							["iconSize"] = 25,
						},
						["height"] = 25,
						["buffs"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "Health",
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[name:short]",
						},
						["power"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["sizeOverride"] = 46,
							["xOffset"] = -1,
							["anchorPoint"] = "LEFT",
							["yOffset"] = -8,
							["attachTo"] = "Frame",
							["fontSize"] = 16,
							["enable"] = false,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["additionalPowerText"] = false,
							["detachedWidth"] = 184,
							["height"] = 15,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "BUFFS",
							["height"] = 18,
						},
						["threatStyle"] = "ICONBOTTOMLEFT",
						["power"] = {
							["detachFromFrame"] = true,
							["druidMana"] = false,
							["yOffset"] = -22,
							["height"] = 15,
							["detachedWidth"] = 184,
							["text_format"] = "[power:current]",
						},
						["customTexts"] = {
							["HealthText"] = {
								["attachTextTo"] = "Health",
								["font"] = "Friz Quadrata TT",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 11,
								["yOffset"] = -11,
								["text_format"] = "",
								["size"] = 32,
							},
						},
						["combatfade"] = true,
						["width"] = 184,
						["stagger"] = {
							["enable"] = false,
						},
						["raidicon"] = {
							["enable"] = false,
						},
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["fontsize"] = 13,
							["format"] = "Remaining",
							["width"] = 324,
							["attachTo"] = "",
							["font"] = "Friz Quadrata TT",
							["height"] = 20,
						},
						["height"] = 30,
						["buffs"] = {
							["yOffset"] = 4,
							["anchorPoint"] = "CENTER",
							["priority"] = "Whitelist,Blacklist,Personal,PlayerBuffs,blockNoDuration,nonPersonal",
							["attachTo"] = "Frame",
						},
						["combatIcon"] = false,
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["yOffset"] = -1,
							["numrows"] = 3,
							["onlyDispellable"] = true,
							["perrow"] = 1,
							["anchorPoint"] = "CENTER",
						},
						["healPrediction"] = true,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["startFromCenter"] = false,
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 20,
							["xOffset"] = -47,
							["perrow"] = 2,
							["anchorPoint"] = "RIGHT",
						},
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_DOWN",
						["roleIcon"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
							["position"] = "BOTTOM",
							["damager"] = false,
							["size"] = 11,
						},
						["raidWideSorting"] = false,
						["power"] = {
							["text_format"] = "[powercolor]",
							["yOffset"] = 0,
							["position"] = "RIGHT",
							["height"] = 4,
						},
						["width"] = 64,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["text_format"] = "",
							["yOffset"] = 0,
						},
						["orientation"] = "LEFT",
						["verticalSpacing"] = 1,
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 35,
							["xOffset"] = 3,
							["fontSize"] = 22,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
						},
						["power"] = {
							["enable"] = false,
						},
						["health"] = {
							["position"] = "RIGHT",
							["text_format"] = "[health:percent]",
						},
						["width"] = 175,
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["castbar"] = {
							["width"] = 175,
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 35,
							["enable"] = false,
							["fontSize"] = 22,
							["yOffset"] = 0,
							["xOffset"] = -3,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["sizeOverride"] = 30,
							["yOffset"] = -1,
							["numrows"] = 3,
							["onlyDispellable"] = true,
							["perrow"] = 1,
							["anchorPoint"] = "BOTTOM",
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["rdebuffs"] = {
							["size"] = 26,
						},
						["growthDirection"] = "LEFT_DOWN",
						["name"] = {
							["xOffset"] = 1,
							["text_format"] = "[name:short]",
						},
						["height"] = 29,
						["roleIcon"] = {
							["xOffset"] = 0,
							["yOffset"] = 0,
							["position"] = "BOTTOM",
							["damager"] = false,
							["enable"] = true,
							["size"] = 11,
						},
						["power"] = {
							["enable"] = true,
							["text_format"] = "[powercolor]",
							["yOffset"] = 0,
							["position"] = "RIGHT",
							["height"] = 4,
						},
						["healPrediction"] = true,
						["width"] = 64,
						["infoPanel"] = {
							["height"] = 15,
							["transparent"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["text_format"] = "",
							["yOffset"] = 0,
						},
						["buffs"] = {
							["xOffset"] = -47,
							["perrow"] = 2,
							["anchorPoint"] = "RIGHT",
							["priority"] = "HetsigRaid,Blacklist,TurtleBuffs",
							["sizeOverride"] = 20,
						},
						["orientation"] = "LEFT",
						["verticalSpacing"] = 1,
					},
					["focus"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["spark"] = false,
							["width"] = 179,
							["height"] = 28,
							["format"] = "Remaining",
							["icon"] = false,
						},
						["health"] = {
							["position"] = "CENTER",
							["xOffset"] = 0,
							["text_format"] = "[name]",
						},
						["power"] = {
							["enable"] = false,
							["text_format"] = "[name]",
							["height"] = 3,
							["attachTextTo"] = "Frame",
						},
						["width"] = 179,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "",
						},
						["height"] = 30,
						["rangeCheck"] = false,
					},
					["target"] = {
						["debuffs"] = {
							["fontSize"] = 11,
							["enable"] = false,
							["anchorPoint"] = "BOTTOMLEFT",
							["yOffset"] = 31,
							["attachTo"] = "FRAME",
						},
						["health"] = {
							["text_format"] = "",
						},
						["aurabar"] = {
							["anchorPoint"] = "Below",
							["attachTo"] = "Debuffs",
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Boss,RaidDebuffs",
						},
						["threatStyle"] = "NONE",
						["power"] = {
							["attachTextTo"] = "Power",
							["xOffset"] = 0,
							["text_format"] = "[health:percent]",
							["yOffset"] = -1,
							["strataAndLevel"] = {
								["frameLevel"] = 2,
							},
							["height"] = 15,
							["detachFromFrame"] = true,
							["detachedWidth"] = 184,
						},
						["customTexts"] = {
							["HealthText"] = {
								["attachTextTo"] = "Health",
								["justifyH"] = "Right",
								["xOffset"] = -11,
								["size"] = 32,
								["text_format"] = "[health:current]",
								["yOffset"] = -11,
							},
						},
						["width"] = 184,
						["name"] = {
							["position"] = "LEFT",
							["text_format"] = "",
						},
						["classicon"] = {
							["enable"] = false,
						},
						["height"] = 30,
						["buffs"] = {
							["fontSize"] = 11,
							["yOffset"] = -1,
							["attachTo"] = "POWER",
							["priority"] = "Blacklist,Whitelist,blockNoDuration,Personal,Boss,PlayerBuffs,nonPersonal",
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["castbar"] = {
							["spark"] = false,
							["width"] = 184,
							["height"] = 17,
							["format"] = "Remaining",
							["icon"] = false,
							["latency"] = false,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["sizeOverride"] = 18,
							["fontSize"] = 11,
							["yOffset"] = -10,
							["xOffset"] = 2,
						},
						["castbar"] = {
							["spark"] = false,
							["width"] = 225,
							["height"] = 10,
							["format"] = "",
							["icon"] = false,
						},
						["width"] = 225,
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["height"] = 40,
						["buffs"] = {
							["fontSize"] = 11,
							["xOffset"] = 2,
							["sizeOverride"] = 18,
							["yOffset"] = 10,
							["anchorPoint"] = "RIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["health"] = {
							["text_format"] = "[health:current]",
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["power"] = {
							["enable"] = false,
						},
						["rangeCheck"] = false,
						["width"] = 85,
						["name"] = {
							["text_format"] = "[name:veryshort]",
						},
						["height"] = 25,
					},
				},
				["statusbar"] = "Skullflower",
				["colors"] = {
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["b"] = 0.070588235294118,
						["g"] = 0.070588235294118,
						["r"] = 0.070588235294118,
					},
					["classResources"] = {
						["bgColor"] = {
							["b"] = 0.070588235294118,
							["g"] = 0.070588235294118,
							["r"] = 0.070588235294118,
						},
						["MONK"] = {
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [1]
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [2]
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [3]
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [4]
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [5]
							{
								["b"] = 0.58823529411765,
								["g"] = 1,
								["r"] = 0,
							}, -- [6]
						},
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0.90196078431373,
							["g"] = 0.74509803921569,
							["r"] = 0,
						},
						["FOCUS"] = {
							["b"] = 0.23529411764706,
							["g"] = 0.54901960784314,
							["r"] = 0.90196078431373,
						},
						["RUNIC_POWER"] = {
							["b"] = 0.27450980392157,
							["g"] = 0.27450980392157,
							["r"] = 0.27450980392157,
						},
						["ENERGY"] = {
							["b"] = 0.27450980392157,
							["g"] = 0.27450980392157,
							["r"] = 0.27450980392157,
						},
						["RAGE"] = {
							["b"] = 0.27450980392157,
							["g"] = 0.27450980392157,
							["r"] = 0.27450980392157,
						},
					},
					["castColor"] = {
						["b"] = 0.27450980392157,
						["g"] = 0.27450980392157,
						["r"] = 0.27450980392157,
					},
					["disconnected"] = {
						["b"] = 0.85098039215686,
						["g"] = 0.7921568627451,
						["r"] = 0.76470588235294,
					},
					["castNoInterrupt"] = {
						["b"] = 0.27450980392157,
						["g"] = 0.27450980392157,
						["r"] = 0.3921568627451,
					},
					["tapped"] = {
						["b"] = 0.85098039215686,
						["g"] = 0.7921568627451,
						["r"] = 0.76470588235294,
					},
					["health"] = {
						["b"] = 0.40392156862745,
						["g"] = 1,
						["r"] = 0.41960784313726,
					},
					["reaction"] = {
						["BAD"] = {
							["b"] = 0.19555555555556,
							["g"] = 0.13777777777778,
							["r"] = 1,
						},
						["NEUTRAL"] = {
							["b"] = 0.36862745098039,
							["g"] = 0.97647058823529,
							["r"] = 1,
						},
						["GOOD"] = {
							["b"] = 0.40392156862745,
							["g"] = 1,
							["r"] = 0.41960784313726,
						},
					},
				},
				["smartRaidFilter"] = false,
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["RightMiniPanel"] = "",
					["SLE_DataPanel_1"] = {
						["right"] = "Guild",
						["left"] = "Friends",
						["middle"] = "Talent/Loot Specialization",
					},
					["BottomMiniPanel"] = "Time",
				},
				["actionbar3"] = false,
				["leftChatPanel"] = false,
				["rightChatPanel"] = false,
				["minimapBottom"] = true,
				["font"] = "Friz Quadrata TT",
				["actionbar5"] = false,
				["actionbar1"] = false,
				["fontOutline"] = "OUTLINE",
				["battleground"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["buttons"] = 12,
					["enable"] = true,
					["buttonsPerRow"] = 12,
				},
				["fontSize"] = 12,
				["fontOutline"] = "OUTLINE",
				["globalFadeAlpha"] = 1,
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["keyDown"] = false,
				["bar2"] = {
					["enable"] = true,
					["backdropSpacing"] = 0,
					["enabled"] = true,
					["buttonspacing"] = 1,
				},
				["bar1"] = {
					["enable"] = true,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 1,
					["paging"] = {
						["ROGUE"] = "[stance:1] 1;  [stance:2] 1; [stance:3] 1;",
					},
				},
				["bar5"] = {
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["buttons"] = 12,
					["mouseover"] = true,
					["enable"] = true,
					["buttonsPerRow"] = 4,
				},
				["font"] = "Friz Quadrata TT",
				["bar6"] = {
					["enable"] = false,
					["backdropSpacing"] = 0,
					["buttonspacing"] = 1,
				},
				["bar4"] = {
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
					["enable"] = true,
					["buttonsPerRow"] = 4,
					["mouseover"] = true,
				},
				["stanceBar"] = {
					["point"] = "BOTTOM",
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["enabled"] = false,
					["mouseover"] = true,
					["showGrid"] = true,
				},
				["barPet"] = {
					["point"] = "BOTTOMLEFT",
					["buttonspacing"] = 1,
					["backdropSpacing"] = 0,
					["backdrop"] = false,
					["mouseover"] = true,
					["style"] = "darkenInactive",
					["showGrid"] = true,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 17,
				},
				["backdropSpacingConverted"] = true,
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 1,
					["maxWraps"] = 2,
				},
				["timeYOffset"] = -6,
				["font"] = "Friz Quadrata TT",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["horizontalSpacing"] = 1,
					["maxWraps"] = 2,
				},
				["fontSize"] = 12,
			},
			["bags"] = {
				["countFontSize"] = 12,
				["itemLevelFont"] = "Friz Quadrata TT",
				["ignoreItems"] = "",
				["itemLevelFontSize"] = 12,
				["alignToChat"] = false,
				["bagWidth"] = 380,
				["countFont"] = "Friz Quadrata TT",
				["clearSearchOnClose"] = true,
				["countFontOutline"] = "OUTLINE",
				["bagBar"] = {
					["enable"] = false,
				},
				["bankWidth"] = 550,
				["itemLevelFontOutline"] = "OUTLINE",
				["bankSize"] = 32,
				["bagSize"] = 32,
				["junkIcon"] = true,
			},
		},
		["Dronthal - Madmortem"] = {
		},
		["Drathtix - Madmortem"] = {
		},
		["Drathal - Madmortem"] = {
		},
		["Drahmoon - Madmortem"] = {
		},
		["Dranathal - Madmortem"] = {
		},
		["Dranopix - Madmortem"] = {
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Dronthal - Madmortem"] = "Dronthal - Madmortem",
		["Drathia - Madmortem"] = "Drathia - Madmortem",
		["Drathtix - Madmortem"] = "Drathtix - Madmortem",
		["Drathal - Madmortem"] = "Drathal - Madmortem",
		["Drahmoon - Madmortem"] = "Drahmoon - Madmortem",
		["Dranathal - Madmortem"] = "Dranathal - Madmortem",
		["Dranopix - Madmortem"] = "Dranopix - Madmortem",
	},
	["profiles"] = {
		["Dronthal - Madmortem"] = {
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["install_complete"] = "3.27",
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["autorepchange"] = true,
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Drathia - Madmortem"] = {
			["general"] = {
				["autorepchange"] = true,
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["install_complete"] = "3.27",
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Drathtix - Madmortem"] = {
			["general"] = {
				["autorepchange"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["install_complete"] = "3.27",
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Drathal - Madmortem"] = {
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["install_complete"] = "3.27",
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["autorepchange"] = true,
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Drahmoon - Madmortem"] = {
			["general"] = {
				["autorepchange"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["install_complete"] = "3.27",
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Dranathal - Madmortem"] = {
			["general"] = {
				["autorepchange"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["install_complete"] = "3.27",
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
		["Dranopix - Madmortem"] = {
			["general"] = {
				["autorepchange"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["minimap"] = {
					["mapicons"] = {
						["enable"] = true,
						["barenable"] = true,
						["template"] = "NoBackdrop",
					},
				},
				["characterGoldsSorting"] = {
					["Madmortem"] = {
					},
				},
				["install_complete"] = "3.27",
			},
			["theme"] = "Hetsig",
			["install_complete"] = "10.67",
		},
	},
}
