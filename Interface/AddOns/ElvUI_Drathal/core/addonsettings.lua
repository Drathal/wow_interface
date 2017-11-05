DrathalInstall = DrathalInstall or {}

DrathalInstall.profileName = 'Drathal'

DrathalInstall.AddonSettings = {
	AddOnSkinsDB = 	{
		["profiles"] = {	
			[DrathalInstall.profileName] = {
				["EmbedOoCDelay"] = 5,
				["Blizzard_AbilityButton"] = true,
				["Blizzard_Transmogrify"] = false,
				["BigWigs"] = false,
				["TransparentEmbed"] = true,
				["EmbedRight"] = "Skada",
				["DBMSkinHalf"] = true,
				["EmbedLeft"] = "Skada",
				["DBMFont"] = "PT Sans Narrow",
				["Blizzard_ExtraActionButton"] = true,
				["DBM"] = false,
				["EmbedSystemMessage"] = false,
				["EmbedFrameStrata"] = "2-LOW",
				["Auctioneer"] = true,
				["Swatter"] = true,
				["LoginMsg"] = false,
				["EmbedLeftWidth"] = 225,
				["Postal"] = true,
				["EmbedSystemDual"] = true,
				["ColorPickerPlus"] = true,
			},
		},
	},
	BigWigs3DB = {
		["namespaces"] = {
			["BigWigs_Plugins_Bars"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["outline"] = "OUTLINE",
						["fontSize"] = 11,
						["BigWigsAnchor_width"] = 199.999908447266,
						["BigWigsAnchor_y"] = 38.4000578959797,
						["emphasizeGrowup"] = true,
						["BigWigsAnchor_x"] = 398.222145059372,
						["BigWigsEmphasizeAnchor_y"] = 38.3997269497911,
						["texture"] = "Skullflower",
						["interceptMouse"] = true,
						["BigWigsEmphasizeAnchor_width"] = 203.000076293945,
						["BigWigsEmphasizeAnchor_x"] = 839.111044624115,
						["font"] = "Friz Quadrata TT",
						["barStyle"] = "ElvUI",
						["interceptKey"] = "SHIFT",
						["MiddleButton"] = {
							["remove"] = false,
						},
						["onlyInterceptOnKeypress"] = true,
						["emphasizeScale"] = 1,
					},
				},
			},
			["BigWigs_Plugins_Super Emphasize"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["font"] = "Friz Quadrata TT",
					},
				},
			},
			["BigWigs_Plugins_Proximity"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["fontSize"] = 20,
						["width"] = 140.000061035156,
						["font"] = "Friz Quadrata TT",
						["posx"] = 497.777659622825,
						["height"] = 120.000007629395,
						["posy"] = 347.021883402922,
					},
				},
			},
			["BigWigs_Plugins_Messages"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["outline"] = "OUTLINE",
						["BWEmphasizeMessageAnchor_x"] = 611,
						["BWEmphasizeMessageAnchor_y"] = 650,
						["BWMessageAnchor_y"] = 600,
						["BWMessageAnchor_x"] = 611,
						["font"] = "Friz Quadrata TT",
						["fontSize"] = 20,
						["growUpwards"] = false,
					},
				},
			},
			["BigWigs_Plugins_InfoBox"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["posx"] = 366.222057478954,
						["posy"] = 486.399881569541,
					},
				},
			},
			["BigWigs_Plugins_Alt Power"] = {
				["profiles"] = {
					[DrathalInstall.profileName] = {
						["posx"] = 198.399831193019,
						["fontSize"] = 11.0000009536743,
						["disabled"] = true,
						["posy"] = 472.88903054794,
						["fontOutline"] = "",
						["font"] = "Friz Quadrata TT",
					},
				},
			},
		},
		["discord"] = 0,
		["profiles"] = {
			[DrathalInstall.profileName] = {},
		},
	},
	BigWigs3IconDB = {
		["hide"] = true,
	},
	------------------------------------------------------------
	BugSackDB = {
		["fontSize"] = "GameFontHighlight",
		["auto"] = false,
		["soundMedia"] = "BugSack: Fatality",
		["mute"] = true,
		["chatframe"] = false,
	},
	------------------------------------------------------------
	ErrorFilterDB = {
		["profiles"] = {
			[DrathalInstall.profileName] = {
				["q_updateOnlyInCombat"] = true,
				["filters"] = {
					["Your cast didn't land in fishable water"] = true,
					["Target not in line of sight"] = true,
					["You don't have a pet!"] = true,
					["You do not have a pet"] = true,
					["You can't do that while jumping or falling"] = true,
					["Can't attack while channeling."] = true,
					["A summon is already pending"] = true,
					["You can no longer resurrect during combat"] = true,
					["You can't do that while you are immune"] = true,
					["Target is too far away."] = true,
					["Can't attack while dead."] = true,
					["Can't do that while %s"] = true,
					["No charges remain"] = true,
					["You are facing the wrong way!"] = true,
					["Not enough dark force"] = true,
					["Can't attack while charmed."] = true,
					["Your skill is too high for this item."] = true,
					["You can't cast that here"] = true,
					["Skill not high enough"] = true,
					["No path available"] = false,
					["Target too close"] = true,
					["You cannot attack that target."] = false,
					["You are too close to enemies"] = true,
					["You can't do that while shapeshifted."] = true,
					["Not enough %s"] = true,
					["Spell cannot be cast on a damage immune target."] = true,
					["That is already being used"] = true,
					["You are not in control of your actions"] = true,
					["You can't do that while moving!"] = true,
					["You are stunned"] = true,
					["You are mounted."] = true,
					["Not yet recovered"] = true,
					["You must be standing to do that"] = true,
					["Can't attack while stunned."] = true,
					["You must be in stealth mode."] = true,
					["Can't attack while pacified."] = true,
					["Out of range."] = true,
					["You are too far away!"] = true,
					["Your vision of the target is obscured"] = true,
					["You can't do that while disarmed"] = true,
					["Not enough light force"] = true,
					["Invalid target"] = false,
					["Can't attack while fleeing."] = true,
					["You have already learned the spell"] = true,
					["Cannot use on the ground"] = true,
					["Can't cast while fatigued"] = true,
					["Item is not ready yet."] = false,
					["No target"] = true,
					["You can't do that while you are immune."] = true,
					["Can't attack while confused."] = true,
					["Target is too low level"] = true,
					["You are busy looting"] = true,
					["Interrupted"] = true,
					["You are too far away."] = true,
				},
			},
		},
	},
	------------------------------------------------------------
	SkadaDB = {
		["profiles"] = {
			[DrathalInstall.profileName] = {
				["showtotals"] = true,
				["showself"] = true,
				["hidesolo"] = true,
				["modules"] = {
					["ccannounce"] = false,
					["notankwarnings"] = true,
					["ccignoremaintanks"] = false,
				},
				["windows"] = {
					{                    
						["display"] = "bar",
						["titleset"] = true,
						["barheight"] = 17,
						["height"] = 30,
						["isusingelvuiskin"] = false,
						["useframe"] = false,
						["classicons"] = true,
						["barslocked"] = true,
						["issolidbackdrop"] = false,
						["clickthrough"] = false,
						["set"] = "current",
						["wipemode"] = "",
						["hidden"] = false,
						["version"] = 1,
						["background"] = {
							["color"] = {
								["a"] = 1,
								["b"] = 0.0784313725490196,
								["g"] = 0.0784313725490196,
								["r"] = 0.0784313725490196,
							},
							["bordercolor"] = {
								["a"] = 1,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["height"] = 198,
							["bordertexture"] = "Pixel",
							["borderthickness"] = 1,
							["tile"] = false,
							["texture"] = "Skullflower",
						},
						["x"] = 32,
						["y"] = -281,
						["classcolortext"] = false,
						["strata"] = "LOW",
						["barfont"] = "Friz Quadrata TT",
						["title"] = {
							["color"] = {
								["b"] = 0.0784313725490196,
								["g"] = 0.0784313725490196,
								["r"] = 0.0784313725490196,
							},
							["bordertexture"] = "Pixel",
							["font"] = "Friz Quadrata TT",
							["borderthickness"] = 1,
							["fontflags"] = "OUTLINE",
							["texture"] = "Skullflower",
						},
						["spellschoolcolors"] = true,
						["barfontflags"] = "OUTLINE",
						["point"] = "BOTTOMRIGHT",
						["barbgcolor"] = {
							["a"] = 0,
							["b"] = 0.301960784313726,
							["g"] = 0.301960784313726,
							["r"] = 0.301960784313726,
						},
						["barcolor"] = {
							["a"] = 1,
							["b"] = 0.156862745098039,
							["g"] = 0.156862745098039,
							["r"] = 0.156862745098039,
						},
						["returnaftercombat"] = false,
						["bartexture"] = "Skullflower",
						["barfontsize"] = 12,
						["barfont"] = "Friz Quadrata TT",
						["mode"] = "Damage",
						["modeincombat"] = "",
						["buttons"] = {
							["report"] = false,
							["menu"] = false,
							["mode"] = false,
							["segment"] = false,
							["reset"] = false,
						},
						["barwidth"] = 283,
						["fixedbarwidth"] = false,
						["width"] = 300,
						["barspacing"] = 1,
						["smoothing"] = true,
						["roleicons"] = false,
						["enabletitle"] = false,
						["barorientation"] = 1,
						["snapto"] = true,
						["reversegrowth"] = false,
						["scale"] = 1,
						["isonnewline"] = false,
						["classcolorbars"] = true,
						["textcolor"] = {
							["b"] = 0.9,
							["g"] = 0.9,
							["r"] = 0.9,
						},
						["isusingclasscolors"] = true,
						["showself"] = true,
						["title"] = {
							["textcolor"] = {
								["a"] = 1,
								["b"] = 0.9,
								["g"] = 0.9,
								["r"] = 0.9,
							},
							["color"] = {
								["a"] = 1,
								["b"] = 0.3,
								["g"] = 0.3,
								["r"] = 0.3,
							},
							["bordercolor"] = {
								["a"] = 1,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["font"] = "Friz Quadrata TT",
							["fontsize"] = 13,
							["fontflags"] = "",
							["height"] = 20,
							["borderthickness"] = 1,
							["bordertexture"] = "None",
							["texture"] = "Skullflower",
						},
					},				
					{
						["name"] = "Heal",
						["display"] = "bar",
						["titleset"] = true,
						["barheight"] = 17,
						["height"] = 30,
						["isusingelvuiskin"] = false,
						["useframe"] = false,
						["classicons"] = true,
						["barslocked"] = true,
						["issolidbackdrop"] = false,
						["clickthrough"] = false,
						["set"] = "current",
						["wipemode"] = "",
						["hidden"] = false,
						["version"] = 1,
						["background"] = {
							["color"] = {
								["a"] = 1,
								["b"] = 0.0784313725490196,
								["g"] = 0.0784313725490196,
								["r"] = 0.0784313725490196,
							},
							["bordercolor"] = {
								["a"] = 1,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["height"] = 198,
							["bordertexture"] = "Pixel",
							["borderthickness"] = 1,
							["tile"] = false,
							["texture"] = "Skullflower",
						},
						["x"] = 32,
						["y"] = -281,
						["classcolortext"] = false,
						["strata"] = "LOW",
						["barfont"] = "Friz Quadrata TT",
						["title"] = {
							["color"] = {
								["b"] = 0.0784313725490196,
								["g"] = 0.0784313725490196,
								["r"] = 0.0784313725490196,
							},
							["bordertexture"] = "Pixel",
							["font"] = "Friz Quadrata TT",
							["borderthickness"] = 1,
							["fontflags"] = "OUTLINE",
							["texture"] = "Skullflower",
						},
						["spellschoolcolors"] = true,
						["barfontflags"] = "OUTLINE",
						["point"] = "BOTTOMRIGHT",
						["barbgcolor"] = {
							["a"] = 0,
							["b"] = 0.301960784313726,
							["g"] = 0.301960784313726,
							["r"] = 0.301960784313726,
						},
						["barcolor"] = {
							["a"] = 1,
							["b"] = 0.156862745098039,
							["g"] = 0.156862745098039,
							["r"] = 0.156862745098039,
						},
						["returnaftercombat"] = false,
						["bartexture"] = "Skullflower",
						["barfontsize"] = 12,
						["barfont"] = "Friz Quadrata TT",
						["mode"] = "Healing",
						["modeincombat"] = "",
						["buttons"] = {
							["report"] = false,
							["menu"] = false,
							["mode"] = false,
							["segment"] = false,
							["reset"] = false,
						},
						["barwidth"] = 283,
						["fixedbarwidth"] = false,
						["width"] = 300,
						["barspacing"] = 1,
						["smoothing"] = true,
						["roleicons"] = false,
						["enabletitle"] = false,
						["barorientation"] = 1,
						["snapto"] = true,
						["reversegrowth"] = false,
						["scale"] = 1,
						["isonnewline"] = false,
						["classcolorbars"] = true,
						["textcolor"] = {
							["b"] = 0.9,
							["g"] = 0.9,
							["r"] = 0.9,
						},
						["isusingclasscolors"] = true,
						["showself"] = true,
						["title"] = {
							["textcolor"] = {
								["a"] = 1,
								["b"] = 0.9,
								["g"] = 0.9,
								["r"] = 0.9,
							},
							["color"] = {
								["a"] = 1,
								["b"] = 0.3,
								["g"] = 0.3,
								["r"] = 0.3,
							},
							["bordercolor"] = {
								["a"] = 1,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["font"] = "Friz Quadrata TT",
							["fontsize"] = 13,
							["fontflags"] = "",
							["height"] = 20,
							["borderthickness"] = 1,
							["bordertexture"] = "None",
							["texture"] = "Skullflower",
						},
					},				
				},
				["icon"] = {
					["minimapPos"] = 209.931435982998,
				},
				["report"] = {
					["number"] = 5,
					["channel"] = "raid",
					["target"] = "Doublewis-Draenor",
					["set"] = "total",
				},
				["columns"] = {
					["Threat_TPS"] = true,
				},
				["tooltiprows"] = 5,
				["updatefrequency"] = 0.5,
				["versions"] = {
					["1.6.4"] = true,
					["1.6.3"] = true,
					["1.6.7"] = true,
				},
				["showranks"] = true,
				["hidedisables"] = false,
				["onlykeepbosses"] = true,
				["tooltippos"] = "topleft",
				["reset"] = {
					["instance"] = 2,
					["join"] = 2,
				},
			},
		},
	},
}