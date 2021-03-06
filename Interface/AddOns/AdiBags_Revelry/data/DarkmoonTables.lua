--[[ 
AdiBags - Revelry! v0.9k [5.12.2017]
"Add filters for holidays to AdiBags."
]]--

local AddonName, AddonTable = ...
AddonTable.DarkmoonTables = {}

local tableToFilter = {
	["FestiveMug"] = L["Holidays"],
	["Noblegarden"] = L["Noblegarden"],
	["NoblegardenAttire"] = L["Noblegarden"],
	["NoblegardenMounts"] = L["Noblegarden"],
	["NoblegardenPets"] = L["Noblegarden"],
	["ChildrensWeek"] = L["Children's Week"],
	["ChildrensWeekFare"] = L["Children's Week"],
	["ChildrensWeekPets"] = L["Children's Week"],
	["ChildrensWeekToys"] = L["Children's Week"],
	["FireFestival"] = L["Fire Festival"],
	["FireFestivalSpecial"] = L["Fire Festival"],
	["FireFestivalArms"] = L["Fire Festival"],
	["FireFestivalAttire"] = L["Fire Festival"],
	["FireFestivalFare"] = L["Fire Festival"],
	["FireFestivalPets"] = L["Fire Festival"],
	["FireFestivalToys"] = L["Fire Festival"],
	["PiratesDay"] = L["Pirates' Day"],
	["PiratesDayToys"] = L["Pirates' Day"],
	["Brewfest"] = L["Brewfest"],
	["BrewfestTokens"] = L["Brewfest"],
	["BrewOfTheMonth"] = L["Brewfest"],
	["BrewfestFare"] = L["Brewfest"],
	["StrangeBrew"] = L["Brewfest"],
	["BrewfestBrew"] = L["Brewfest"],
	["BrewfestAttire"] = L["Brewfest"],
	["BrewfestHops"] = L["Brewfest"],
	["BrewfestMounts"] = L["Brewfest"],
	["BrewfestPets"] = L["Brewfest"],
	["BrewfestToys"] = L["Brewfest"],
	["DayOfTheDead"] = L["Day of the Dead"],
	["DayOfTheDeadAttire"] = L["Day of the Dead"],
	["DayOfTheDeadRecipes"] = L["Day of the Dead"],
	["DayOfTheDeadFare"] = L["Day of the Dead"],
	["DayOfTheDeadPets"] = L["Day of the Dead"],
	["DayOfTheDeadToys"] = L["Day of the Dead"],
	-- Micro-Holidays
	["CallOfTheScarab"] = L["Call of the Scarab"],
	["HatchingOfTheHippogryphs"] = L["Hatching of the Hippogryphs"],
	["UnGoroMadness"] = L["Un'Goro Madness"],
	["MarchOfTheTadpoles"] = L["March Of The Tadpoles"],
	["GlowcapFestival"] = L["Glowcap Festival"],
	["ThousandBoatBash"] = L["Thousand Boat Bash"],
	["TavernCrawl"] = L["Tavern Crawl"],
	-- Darkmoon Faire
	["DarkmoonGuide"] = L["Darkmoon Faire"],
	["DarkmoonTokens"] = L["Darkmoon Faire"],
	["DarkmoonTickets"] = L["Darkmoon Faire"],
	["DarkmoonDaggermaw"] = L["Darkmoon Faire"],
	["DarkmoonItemsQ"] = L["Darkmoon Faire"],
	["DarkmoonAdventurer"] = L["Darkmoon Faire"],
	["FairegoersFeast"] = L["Darkmoon Faire"],
	["DarkmoonFirework"] = L["Darkmoon Faire"],
	["DarkmoonProfs"] = L["Darkmoon Faire"],
	["DarkmoonReagents"] = L["Darkmoon Faire"],
	["DarkmoonFishing"] = L["Darkmoon Faire"],
	["DarkmoonRecipes"] = L["Darkmoon Faire"],
	["DarkmoonArms"] = L["Darkmoon Faire"],
	["DarkmoonAttire"] = L["Darkmoon Faire"],
	["DarkmoonItemsV"] = L["Darkmoon Faire"],
	["DarkmoonMounts"] = L["Darkmoon Faire"],
	["DarkmoonPets"] = L["Darkmoon Faire"],
	["DarkmoonToys"] = L["Darkmoon Faire"],
	["DarkmoonFare"] = L["Darkmoon Faire"],
	["DarkmoonRewards"] = L["Darkmoon Faire"],
	["DarkmoonFortunes"] = L["Darkmoon Faire"],
	["NemelexXobeh"] = L["Darkmoon Faire"],
	["VanillaCards"] = L["Darkmoon Faire"],
	["CrusadeCards"] = L["Darkmoon Faire"],
	["WrathCards"] = L["Darkmoon Faire"],
	["CataCards"] = L["Darkmoon Faire"],
	["PandaCards"] = L["Darkmoon Faire"],
	["DraenorCards"] = L["Darkmoon Faire"],
	["LegionCards"] = L["Darkmoon Faire"],
}