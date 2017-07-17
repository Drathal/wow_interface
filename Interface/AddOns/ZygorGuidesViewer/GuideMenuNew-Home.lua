local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"title", text=[[This Update:]]},
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

	{"section", text=[[EVENTS]]},
	{"item", text=[[Added |cfffe6100Blight Boar Concert|r.]], guide="EVENTS\\Darkmoon Faire\\\\Blight Boar Concert",faction="A"},
	{"item", text=[[Added |cfffe6100Midsummer Fire Festival Bonfires|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",faction="A"},
	{"item", text=[[Added |cfffe6100Blight Boar Concert|r.]], guide="EVENTS\\Darkmoon Faire\\Blight Boar Concert",faction="H"},
	{"item", text=[[Added |cfffe6100Midsummer Fire Festival Bonfires|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",faction="H"},

	{"section", text=[[PETSMOUNTS]]},
	{"item", text=[[Added |cfffe6100Crimson Prime Direhorn|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Prime Direhorn"},
	{"item", text=[[Added |cfffe6100Golden Primal Direhorn|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn"},

	{"section", text=[[ACHIEVEMENTS]]},
	{"item", text=[[Added |cfffe6100Hey, You're a Rockstar!|r.]], guide="ACHIEVEMENTS\\Events\\Darkmoon Faire\\Hey, You\'re a Rockstar!"},
	{"item", text=[[Added |cfffe6100Mosh Pit|r.]], guide="ACHIEVEMENTS\\Events\\Darkmoon Faire\\Mosh Pit"},
	{"item", text=[[Added |cfffe6100Perfect Performance|r.]], guide="ACHIEVEMENTS\\Events\\Darkmoon Faire\\Perfect Performance"},
	{"item", text=[[Added |cfffe6100Taking this Show on the Road|r.]], guide="ACHIEVEMENTS\\Events\\Darkmoon Faire\\Taking this Show on the Road"},
	{"item", text=[[Added |cfffe6100Five Course Seafood Buffet|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Five Course Seafood Buffet",faction="A"},
	{"item", text=[[Added |cfffe6100Great Soul, Great Purpose|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Great Soul, Great Purpose"},
	{"item", text=[[Added |cfffe6100Sky Walker|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Sky Walker"},
	{"item", text=[[Added |cfffe6100Wax on, Wax off|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Wax on, Wax off",faction="A"},
	{"item", text=[[Added |cfffe6100Five Course Seafood Buffet|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Five Course Seafood Buffet",faction="H"},
	{"item", text=[[Added |cfffe6100Wax on, Wax off|r.]], guide="ACHIEVEMENTS\\Raid\\Legion\\Wax on, Wax off",faction="H"},

	{"section", text=[[TITLES]]},
	{"item", text=[[Added |cfffe6100Herald of the Titans|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\Herald of the Titans"},
	{"item", text=[[Added |cfffe6100Obsidian Slayer|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\Obsidian Slayer"},
	{"item", text=[[Added |cfffe6100The Immortal|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Immortal"},
	{"item", text=[[Added |cfffe6100The Magic Seeker|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Magic Seeker"},
	{"item", text=[[Added |cfffe6100The Undying|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Undying"},
	{"item", text=[[Added |cfffe6100Broken Isles|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Broken Isles"},
	{"item", text=[[Added |cfffe6100Draenor|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Draenor"},
	{"item", text=[[Added |cfffe6100Eastern Kingdoms|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Eastern Kingdoms",faction="H"},
	{"item", text=[[Added |cfffe6100Kalimdor|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Kalimdor",faction="H"},
	{"item", text=[[Added |cfffe6100Northrend|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Northrend",faction="H"},
	{"item", text=[[Added |cfffe6100Outland|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Outland",faction="H"},
	{"item", text=[[Added |cfffe6100Pandaria|r.]], guide="TITLES\\Wrath of the Lich King Titles\\General\\The Explorer\\Pandaria",faction="H"},
	{"item", text=[[Added |cfffe6100The Flawless Victor|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Player versus Player\\The Flawless Victor"},
	{"item", text=[[Added |cfffe6100Vanquisher|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Player versus Player\\Vanquisher"},
	{"item", text=[[Added |cfffe6100The Noble|r.]], guide="TITLES\\Wrath of the Lich King Titles\\World Events\\The Noble"},

	{"separator"},

	{"title", text=[[Featured Content:]]},

	{"section", text=[[LEVELING]]},
	{"item", text=[[Added |cfffe61007.2 New Content (Start Here)|r.]], guide="LEVELING\\Legion (100-110)\\7.2 New Content"},
	{"item", text=[[Added |cfffe61007.2 Order Hall Quests|r.]], guide="LEVELING\\Legion (100-110)\\7.2 Order Hall Quests"},
	{"item", text=[[Added |cfffe6100Legion Invasions|r.]], guide="LEVELING\\Legion (100-110)\\Legion Invasions"},
	{"item", text=[[Updated |cfffe6100Legionfall Campaign|r.]], guide="LEVELING\\Legion (100-110)\\Broken Shore Campaign"},
	{"item", text=[[Added |cfffe6100Balance of Power Questline|r.]], guide="LEVELING\\Legion (100-110)\\Balance of Power Questline"},
	{"item", text=[[Updated |cfffe6100Artifact Knowledge 1-40|r.]], guide="LEVELING\\Legion (100-110)\\Artifact Knowledge 1-40"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100The Deaths of Chromie (Stratholme Intro)|r.]], guide="DUNGEONS\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)"},
	{"item", text=[[Added |cfffe6100The Deaths of Chromie Portals|r.]], guide="DUNGEONS\\Legion Scenarios\\The Deaths of Chromie Portals"},
	{"item", text=[[Added |cfffe6100The Deaths of Chromie Speed Run|r.]], guide="DUNGEONS\\Legion Scenarios\\The Deaths of Chromie Speed Run"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Chamber of the Avatar|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Chamber of the Avatar"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Deceiver's Fall|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Deceiver\'s Fall"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Gates of Hell|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Gates of Hell"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Mythic|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Mythic"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Normal/Heroic|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Normal/Heroic"},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Wailing Halls|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Wailing Halls"},

	{"section", text=[[RAIDS]]},
	{"item", text=[[Added |cfffe6100Legion Raids|r.]], folder="DUNGEONS\\Legion Raids"},

	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Patch 7.2 World Quests|r.]], guide="DAILIES\\Legion\\World Quests"},

	{"section", text=[[EVENTS]]},
	{"item", text=[[Added |cfffe6100Midsummer Fire Festival|r.]], folder="EVENTS\\Midsummer Fire Festival"},
	{"item", text=[[Added |cfffe6100Extinguishing Broken Isles|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Broken Isles",faction="A"},
	{"item", text=[[Added |cfffe6100Extinguishing Draenor|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Draenor",faction="A"},
	{"item", text=[[Added |cfffe6100Flame Warden of Broken Isles|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Broken Isles",faction="A"},
	{"item", text=[[Added |cfffe6100Flame Warden of Draenor|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Draenor",faction="A"},
	{"item", text=[[Added |cfffe6100Flame Keeper of Draenor|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Flame Keeper of Draenor",faction="H"},
	{"item", text=[[Added |cfffe6100Flame Keeper of the Broken Isles|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Flame Keeper of the Broken Isles",faction="H"},
	{"item", text=[[Added |cfffe6100King of the Fire Festival|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\King of the Fire Festival",faction="H"},

	{"section", text=[[REPUTATIONS]], beta=true},
	{"item", text=[[Added |cfffe6100Armies of Legionfall Reputation (BETA)|r.]], guide="REPUTATIONS\\Legion\\Armies of Legionfall", beta=true},
	{"item", text=[[Added |cfffe6100Vol'jin's Spear|r.]], guide="REPUTATIONS\\Warlords of Draenor\\Vol'jin's Spear", faction="H"},

	{"section", text=[[PROFESSIONS]]},
	{"item", text=[[Added |cfffe6100Obliterum Forge Questline|r.]], guide="PROFESSIONS\\Legion\\Obliterum Forge Questline"},

	{"section", text=[[PETSMOUNTS]]},
	{"item", text=[[Added |cfffe6100Ageless Bronze Drake|r.]], guide="PETSMOUNTS\\Battle Pets\\Dragonkin Pets\\Ageless Bronze Drake"},
	{"item", text=[[Added |cfffe6100Bronze Proto-Whelp|r.]], guide="PETSMOUNTS\\Battle Pets\\Dragonkin Pets\\Bronze Proto-Whelp"},

	{"section", text=[[TITLES]]},
	{"item", text=[[Added |cfffe6100Furious Gladiator|r.]], guide="TITLES\\Burning Crusade Titles\\Player versus Player\\Furious Gladiator"},
	{"item", text=[[Added |cfffe6100Relentless Gladiator|r.]], guide="TITLES\\Burning Crusade Titles\\Player versus Player\\Relentless Gladiator"},
	{"item", text=[[Added |cfffe6100Wrathful Gladiator|r.]], guide="TITLES\\Burning Crusade Titles\\Player versus Player\\Wrathful Gladiator"},
	{"item", text=[[Added |cfffe6100Grand Crusader|r.]], guide="TITLES\\Wrath of the Lich King Titles\\Dungeons & Raids\\Grand Crusader"},

	{"section", text=[[ACHIEVEMENTS]]},
	{"item", text=[[Added |cfffe6100Heroic: Return to Karazhan|r.]], guide="ACHIEVEMENTS\\Dungeons\\Legion\\Heroic: Return to Karazhan"},
	{"item", text=[[Added |cfffe6100Pet Battle Challenge: Deadmines|r.]], guide="ACHIEVEMENTS\\Dungeons\\Legion\\Pet Battle Challenge: Deadmines"},

}


-- faction="Alliance" {"separator"},