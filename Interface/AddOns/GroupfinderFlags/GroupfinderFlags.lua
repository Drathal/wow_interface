-- Addon:	GroupfinderFlags
-- Author:	Spielstein@Curse

if GetCurrentRegion() ~= 3 then
	print("GroupfinderFlags supports european realms only at this point.")
	return
end

-- Creating MainFrame
GroupfinderFlags = {}
GroupfinderFlags.mainFrame = CreateFrame("Frame", "ApplicationFlagsFrame", UIParent)
GroupfinderFlags.FIRST_SLASH_START = 0

-- own realm
GroupfinderFlags.OWN_REALM = GetRealmName()

-- locale code
GroupfinderFlags.LOCALE_CODE = "enUS"
local locale = GetLocale()

-- german localization
if locale == "deDE" then
	GroupfinderFlags.LOCALE_CODE = "deDE"
-- french localization
elseif locale == "frFR" then
	GroupfinderFlags.LOCALE_CODE = "frFR"
-- italian localization
elseif locale == "itIT" then
	GroupfinderFlags.LOCALE_CODE = "itIT"
-- russian localization
elseif locale == "ruRU" then
	GroupfinderFlags.LOCALE_CODE = "ruRU"
-- spanish localization
elseif locale == "esES" then
	GroupfinderFlags.LOCALE_CODE = "esES"
-- portuguese localization
elseif locale == "ptBR" then
	GroupfinderFlags.LOCALE_CODE = "ptBR"
end


-- flage files
GroupfinderFlags.PATH = "|TInterface\\AddOns\\GroupfinderFlags\\images\\"
GroupfinderFlags.SIZE = ":9:15|t"
GroupfinderFlags.FLAGS = {
	["german"] = "german"..GroupfinderFlags.SIZE,
	["british"] = "british"..GroupfinderFlags.SIZE,
	["portuguese"] = "portuguese"..GroupfinderFlags.SIZE,
	["russian"] = "russian"..GroupfinderFlags.SIZE,
	["french"] = "french"..GroupfinderFlags.SIZE,
	["spanish"] = "spanish"..GroupfinderFlags.SIZE,
	["italian"] = "italian"..GroupfinderFlags.SIZE,
}

-- realm database
GroupfinderFlags.EU_REALM_LANGUAGES = {
	["Aegwynn"] = "german",
	["AeriePeak"] = "british",
	["Agamaggan"] = "british",
	["Aggra(Português)"] = "portuguese",
	["Aggramar"] = "british",
	["Ahn'Qiraj"] = "british",
	["Al'Akir"] = "british",
	["Alexstrasza"] = "german",
	["Alleria"] = "german",
	["Alonsus"] = "british",
	["Aman'Thul"] = "german",
	["Ambossar"] = "german",
	["Anachronos"] = "british",
	["Anetheron"] = "german",
	["Antonidas"] = "german",
	["Anub'arak"] = "german",
	["Arakarahm"] = "french",
	["Arathi"] = "french",
	["Arathor"] = "british",
	["Archimonde"] = "french",
	["Area52"] = "german",
	["ArenaPass"] = "british",
	["ArenaPass1"] = "british",
	["ArgentDawn"] = "british",
	["Arthas"] = "german",
	["Arygos"] = "german",
	["Aszune"] = "british",
	["Auchindoun"] = "british",
	["AzjolNerub"] = "british",
	["Azshara"] = "german",
	["Azuremyst"] = "british",
	["Baelgun"] = "german",
	["Balnazzar"] = "british",
	["Blackhand"] = "german",
	["Blackmoore"] = "german",
	["Blackrock"] = "german",
	["Blade'sEdge"] = "british",
	["Bladefist"] = "british",
	["Bloodfeather"] = "british",
	["Bloodhoof"] = "british",
	["Bloodscalp"] = "british",
	["Blutkessel"] = "german",
	["Boulderfist"] = "british",
	["BronzeDragonflight"] = "british",
	["Bronzebeard"] = "british",
	["BurningBlade"] = "british",
	["BurningLegion"] = "british",
	["BurningSteppes"] = "british",
	["C'Thun"] = "spanish",
	["ChamberofAspects"] = "british",
	["Chantséternels"] = "french",
	["Cho’gall"] = "french",
	["Chromaggus"] = "british",
	["ColinasPardas"] = "spanish",
	["ConfrérieduThorium"] = "french",
	["ConseildesOmbres"] = "french",
	["Crushridge"] = "british",
	["CultedelaRivenoire"] = "french",
	["Daggerspine"] = "british",
	["Dalaran"] = "french",
	["Dalvengyr"] = "german",
	["DarkmoonFaire"] = "british",
	["Darksorrow"] = "british",
	["Darkspear"] = "british",
	["DasKonsortium"] = "german",
	["DasSyndikat"] = "german",
	["Deathwing"] = "british",
	["DefiasBrotherhood"] = "british",
	["Dentarg"] = "british",
	["DerMithrilorden"] = "german",
	["DerRatvonDalaran"] = "german",
	["DerAbyssischeRat"] = "german",
	["Destromath"] = "german",
	["Dethecus"] = "german",
	["DieAldor"] = "german",
	["DieArguswacht"] = "german",
	["DieNachtwache"] = "german",
	["DieSilberneHand"] = "german",
	["DieTodeskrallen"] = "german",
	["DieewigeWacht"] = "german",
	["Doomhammer"] = "british",
	["Draenor"] = "british",
	["Dragonblight"] = "british",
	["Dragonmaw"] = "british",
	["Drak'thul"] = "british",
	["Drek’Thar"] = "french",
	["DunModr"] = "spanish",
	["DunMorogh"] = "german",
	["Dunemaul"] = "british",
	["Durotan"] = "german",
	["EarthenRing"] = "british",
	["Echsenkessel"] = "german",
	["Eitrigg"] = "french",
	["Eldre’Thalas"] = "french",
	["Elune"] = "french",
	["EmeraldDream"] = "british",
	["Emeriss"] = "british",
	["Eonar"] = "british",
	["Eredar"] = "german",
	["EuskalEncounter"] = "spanish",
	["Executus"] = "british",
	["Exodar"] = "spanish",
	["FestungderStürme"] = "german",
	["Forscherliga"] = "german",
	["Frostmane"] = "british",
	["Frostmourne"] = "german",
	["Frostwhisper"] = "british",
	["Frostwolf"] = "german",
	["Garona"] = "french",
	["Garrosh"] = "german",
	["Genjuros"] = "british",
	["Ghostlands"] = "british",
	["Gilneas"] = "german",
	["Gorgonnash"] = "german",
	["GrimBatol"] = "british",
	["Gul'dan"] = "german",
	["Hakkar"] = "british",
	["Haomarush"] = "british",
	["Hellfire"] = "british",
	["Hellscream"] = "british",
	["Hyjal"] = "french",
	["Illidan"] = "french",
	["Jaedenar"] = "british",
	["Kael’thas"] = "french",
	["Karazhan"] = "british",
	["Kargath"] = "german",
	["Kazzak"] = "british",
	["Kel'Thuzad"] = "german",
	["Khadgar"] = "british",
	["Khaz'goroth"] = "german",
	["KhazModan"] = "french",
	["Kil'jaeden"] = "german",
	["Kilrogg"] = "british",
	["KirinTor"] = "french",
	["Kor'gall"] = "british",
	["Krag'jin"] = "german",
	["Krasus"] = "french",
	["KulTiras"] = "british",
	["KultderVerdammten"] = "german",
	["LaCroisadeécarlate"] = "french",
	["LaughingSkull"] = "british",
	["LesClairvoyants"] = "french",
	["LesSentinelles"] = "french",
	["Lightbringer"] = "british",
	["Lightning'sBlade"] = "british",
	["Lordaeron"] = "german",
	["LosErrantes"] = "spanish",
	["Lothar"] = "german",
	["Madmortem"] = "german",
	["Magtheridon"] = "british",
	["Mal'Ganis"] = "german",
	["Malfurion"] = "german",
	["Malorne"] = "german",
	["Malygos"] = "german",
	["Mannoroth"] = "german",
	["MarécagedeZangar"] = "french",
	["Mazrigos"] = "british",
	["Medivh"] = "french",
	["Minahonda"] = "spanish",
	["Moonglade"] = "british",
	["Mug'thol"] = "german",
	["Nagrand"] = "british",
	["Nathrezim"] = "german",
	["Naxxramas"] = "french",
	["Nazjatar"] = "german",
	["Nefarian"] = "german",
	["Nemesis"] = "italian",
	["Neptulon"] = "british",
	["Ner’zhul"] = "french",
	["Nera'thor"] = "german",
	["Nethersturm"] = "german",
	["Nordrassil"] = "british",
	["Norgannon"] = "german",
	["Nozdormu"] = "german",
	["Onyxia"] = "german",
	["Outland"] = "british",
	["Perenolde"] = "german",
	["Pozzodell'Eternità"] = "italian",
	["Proudmoore"] = "german",
	["Quel'Thalas"] = "british",
	["Ragnaros"] = "british",
	["Rajaxx"] = "german",
	["Rashgarroth"] = "french",
	["Ravencrest"] = "british",
	["Ravenholdt"] = "british",
	["Rexxar"] = "german",
	["Runetotem"] = "british",
	["Sanguino"] = "spanish",
	["Sargeras"] = "french",
	["Saurfang"] = "british",
	["ScarshieldLegion"] = "british",
	["Sen'jin"] = "german",
	["Shadowsong"] = "british",
	["ShatteredHalls"] = "british",
	["ShatteredHand"] = "british",
	["Shattrath"] = "german",
	["Shen'dralar"] = "spanish",
	["Silvermoon"] = "british",
	["Sinstralis"] = "french",
	["Skullcrusher"] = "british",
	["Spinebreaker"] = "british",
	["Sporeggar"] = "british",
	["SteamwheedleCartel"] = "british",
	["Stormrage"] = "british",
	["Stormreaver"] = "british",
	["Stormscale"] = "british",
	["Sunstrider"] = "british",
	["Suramar"] = "french",
	["Sylvanas"] = "british",
	["Taerar"] = "german",
	["Talnivarr"] = "british",
	["TarrenMill"] = "british",
	["Teldrassil"] = "german",
	["Templenoir"] = "french",
	["Terenas"] = "british",
	["Terokkar"] = "british",
	["Terrordar"] = "german",
	["TheMaelstrom"] = "british",
	["TheSha'tar"] = "british",
	["TheVentureCo"] = "british",
	["Theradras"] = "german",
	["Thrall"] = "german",
	["Throk’Feroth"] = "french",
	["Thunderhorn"] = "british",
	["Tichondrius"] = "german",
	["Tirion"] = "german",
	["Todeswache"] = "german",
	["Trollbane"] = "british",
	["Turalyon"] = "british",
	["Twilight'sHammer"] = "british",
	["TwistingNether"] = "british",
	["Tyrande"] = "spanish",
	["Uldaman"] = "french",
	["Ulduar"] = "german",
	["Uldum"] = "spanish",
	["Un'Goro"] = "german",
	["Varimathras"] = "french",
	["Vashj"] = "british",
	["Vek'lor"] = "german",
	["Vek'nilash"] = "british",
	["Vol’jin"] = "french",
	["Wildhammer"] = "british",
	["Wrathbringer"] = "german",
	["Xavius"] = "british",
	["Ysera"] = "german",
	["Ysondre"] = "french",
	["Zenedar"] = "british",
	["ZirkeldesCenarius"] = "german",
	["Zul'jin"] = "spanish",
	["Zuluhed"] = "german",
	["Азурегос"] = "russian",
	["Борейскаятундра"] = "russian",
	["ВечнаяПесня"] = "russian",
	["Галакронд"] = "russian",
	["Голдринн"] = "russian",
	["Гордунни"] = "russian",
	["Гром"] = "russian",
	["Дракономор"] = "russian",
	["Корольлич"] = "russian",
	["Пиратскаябухта"] = "russian",
	["Подземье"] = "russian",
	["ПропускнаАрену1"] = "russian",
	["Разувий"] = "russian",
	["Ревущийфьорд"] = "russian",
	["СвежевательДуш"] = "russian",
	["Седогрив"] = "russian",
	["СтражСмерти"] = "russian",
	["Термоштепсель"] = "russian",
	["ТкачСмерти"] = "russian",
	["ЧерныйШрам"] = "russian",
	["Ясеневыйлес"] = "russian",
}


-- locale stuff

-- localized country names
GroupfinderFlags.COUNTRYNAMES = {
	["enUS"] = {
		["german"] = "Germany",
		["british"] = "Great Britain",
		["portuguese"] = "Portugal",
		["russian"] = "Russia",
		["french"] = "France",
		["spanish"] = "Spain",
		["italian"] = "Italy",
	},
	["deDE"] = {
		["german"] = "Deutschland",
		["british"] = "Großbritannien",
		["portuguese"] = "Portugal",
		["russian"] = "Russland",
		["french"] = "Frankreich",
		["spanish"] = "Spanien",
		["italian"] = "Italien",
	},
	["frFR"] = {
		["german"] = "Allemagne",
		["british"] = "Grande-Bretagne",
		["portuguese"] = "Portugal",
		["russian"] = "Russie",
		["french"] = "France",
		["spanish"] = "Espagne",
		["italian"] = "Italie",
	},
	["itIT"] = {
		["german"] = "Germania",
		["british"] = "Gran Bretagna",
		["portuguese"] = "Portogallo",
		["russian"] = "Russia",
		["french"] = "Francia",
		["spanish"] = "Spagna",
		["italian"] = "Italia",
	},
	["ruRU"] = {
		["german"] = "Германия",
		["british"] = "Великобритания",
		["portuguese"] = "Португалия",
		["russian"] = "Россия",
		["french"] = "Франция",
		["spanish"] = "Испания",
		["italian"] = "Италия",
	},
	["esES"] = {
		["german"] = "Alemania",
		["british"] = "Gran Bretaña",
		["portuguese"] = "Portugal",
		["russian"] = "Rusia",
		["french"] = "Francia",
		["spanish"] = "España",
		["italian"] = "Italia",
	},
	["ptBR"] = {
		["german"] = "Alemanha",
		["british"] = "Grã-Bretanha",
		["portuguese"] = "Portugal",
		["russian"] = "Rússia",
		["french"] = "França",
		["spanish"] = "Espanha",
		["italian"] = "Itália",
	},
}

-- localized option strings
--GroupfinderFlags.OPTION_LOCALE = {
	-- TODO
--}


-- option panel

GroupfinderFlags.opanel = CreateFrame("Frame", "GroupfinderFlagsOptionsPanel", UIParent)
GroupfinderFlags.opanel.name = "GroupfinderFlags";
InterfaceOptions_AddCategory(GroupfinderFlags.opanel);

-- titles
GroupfinderFlags.opanel.title = GroupfinderFlags.opanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
GroupfinderFlags.opanel.title:SetPoint("TOPLEFT", 16, -16)
GroupfinderFlags.opanel.title:SetText("GroupfinderFlags")
GroupfinderFlags.opanel.title:SetJustifyH("LEFT")

GroupfinderFlags.opanel.title2 = GroupfinderFlags.opanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
GroupfinderFlags.opanel.title2:SetPoint("TOPLEFT", 16, -35)
GroupfinderFlags.opanel.title2:SetText("Author: Spielstein@Curse\nVersion: " .. GetAddOnMetadata("GroupfinderFlags", "Version"))
GroupfinderFlags.opanel.title2:SetJustifyH("LEFT")

-- option for disabling flags in the groupfinder
GroupfinderFlags.opanel.boxForGrpFinder = CreateFrame("CheckButton", "GFF_ShowGrpFinderFlagCheckbox", GroupfinderFlags.opanel, "OptionsBaseCheckButtonTemplate")
GroupfinderFlags.opanel.boxForGrpFinder:SetPoint("TOPLEFT", GroupfinderFlags.opanel.title2, "BOTTOMLEFT", 0, -15)
GroupfinderFlags.opanel.boxForGrpFinder:SetScript("OnClick", function()
	GroupfinderFlagsDB.showFlagInGrpFinder = not GroupfinderFlagsDB.showFlagInGrpFinder
	GroupfinderFlags.opanel.boxForGrpFinder:SetChecked(GroupfinderFlagsDB.showFlagInGrpFinder)
end)
GroupfinderFlags.opanel.boxtextForGrpFinder = GroupfinderFlags.opanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
GroupfinderFlags.opanel.boxtextForGrpFinder:SetPoint("LEFT", GroupfinderFlags.opanel.boxForGrpFinder, "RIGHT", 10, 1)
GroupfinderFlags.opanel.boxtextForGrpFinder:SetJustifyH("LEFT")
GroupfinderFlags.opanel.boxtextForGrpFinder:SetText("Show the country's flag in the Groupfinder UI")

-- option for disabling flags in tooltip
GroupfinderFlags.opanel.boxForTooltipFlag = CreateFrame("CheckButton", "GFF_ShowTooltipFlagCheckbox", GroupfinderFlags.opanel, "OptionsBaseCheckButtonTemplate")
GroupfinderFlags.opanel.boxForTooltipFlag:SetPoint("TOPLEFT", GroupfinderFlags.opanel.boxForGrpFinder, "BOTTOMLEFT", 0, -1)
GroupfinderFlags.opanel.boxForTooltipFlag:SetScript("OnClick", function()
	GroupfinderFlagsDB.showFlagInTooltip = not GroupfinderFlagsDB.showFlagInTooltip
	GroupfinderFlags.opanel.boxForTooltipFlag:SetChecked(GroupfinderFlagsDB.showFlagInTooltip)
end)
GroupfinderFlags.opanel.boxtextForTooltipFlag = GroupfinderFlags.opanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
GroupfinderFlags.opanel.boxtextForTooltipFlag:SetPoint("LEFT", GroupfinderFlags.opanel.boxForTooltipFlag, "RIGHT", 10, 1)
GroupfinderFlags.opanel.boxtextForTooltipFlag:SetJustifyH("LEFT")
GroupfinderFlags.opanel.boxtextForTooltipFlag:SetText("Show the country's flag in the tooltips")

-- option for disabling country name next to flag
GroupfinderFlags.opanel.boxForTooltipCountryNames = CreateFrame("CheckButton", "GFF_ShowTooltipCountryNameCheckbox", GroupfinderFlags.opanel, "OptionsBaseCheckButtonTemplate")
GroupfinderFlags.opanel.boxForTooltipCountryNames:SetPoint("TOPLEFT", GroupfinderFlags.opanel.boxForTooltipFlag, "BOTTOMLEFT", 0, -1)
GroupfinderFlags.opanel.boxForTooltipCountryNames:SetScript("OnClick", function()
	GroupfinderFlagsDB.showCountrynameInTooltip = not GroupfinderFlagsDB.showCountrynameInTooltip
	GroupfinderFlags.opanel.boxForTooltipCountryNames:SetChecked(GroupfinderFlagsDB.showCountrynameInTooltip)
end)
GroupfinderFlags.opanel.boxtextForTooltipCountryNames = GroupfinderFlags.opanel:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
GroupfinderFlags.opanel.boxtextForTooltipCountryNames:SetPoint("LEFT", GroupfinderFlags.opanel.boxForTooltipCountryNames, "RIGHT", 10, 1)
GroupfinderFlags.opanel.boxtextForTooltipCountryNames:SetJustifyH("LEFT")
GroupfinderFlags.opanel.boxtextForTooltipCountryNames:SetText("Show the country's name next to the flag in tooltips")


-- hooking the gametooltip
local function HookfunctionForGametooltip(...)
	
	if not (GroupfinderFlagsDB.showFlagInTooltip or GroupfinderFlagsDB.showCountrynameInTooltip) then
		return
	end

	-- variables
	local _
	local name, unit, GUID, realm

	-- get unit infos from the game tooltip
	_, unit = GameTooltip:GetUnit()

	if unit ~= nil then

		-- get GUID infos from the game tooltip
		GUID = UnitGUID(unit)

		if GUID ~= nil then
			-- checking whether the unit is a player
			if string.match(UnitGUID(unit), "^Player-") then
				
				-- gets name and realm of the player
				name, realm = UnitName(unit)

				-- if realm is nil then player is from user's own realm
				if realm == nil or realm == "" then
					realm = GroupfinderFlags.OWN_REALM
				end

				-- only proceed if player's realm is in database
				if GroupfinderFlags.EU_REALM_LANGUAGES[realm] ~= nil then

					-- adding the flag by :AddLine()
					local flag = GroupfinderFlags.PATH..GroupfinderFlags.FLAGS[GroupfinderFlags.EU_REALM_LANGUAGES[realm]]
					local country_name = "|cFFFFFFFF" .. GroupfinderFlags.COUNTRYNAMES[GroupfinderFlags.LOCALE_CODE][GroupfinderFlags.EU_REALM_LANGUAGES[realm]] .. "|r"
					local both_activated = GroupfinderFlagsDB.showFlagInTooltip and GroupfinderFlagsDB.showCountrynameInTooltip
					GameTooltip:AddLine((GroupfinderFlagsDB.showFlagInTooltip and flag or "") .. (both_activated and "|cFFFFFFFF - |r" or "") .. (GroupfinderFlagsDB.showCountrynameInTooltip and country_name or ""))
					--  and readjusting the height and the width of the tooltip by :Show()
					GameTooltip:Show()
				end
			end
		end
	end
end


--
local function HookfunctionForGroupFinderSearchTooltip(tooltip, resultID)
	
	if not (GroupfinderFlagsDB.showFlagInTooltip or GroupfinderFlagsDB.showCountrynameInTooltip) then
		return
	end

	local _
	local leaderName, shortname, fullname, realm

	_, _, _, _, _, _, _, _, _, _, _, _, leaderName, _ = C_LFGList.GetSearchResultInfo(resultID);

	if leaderName == nil then
		return
	end

	-- extract name+realm and (only) name
	shortname = Ambiguate(leaderName, "short")
	fullname = Ambiguate(leaderName, "mail")

	-- if:     shortname and fullname are equal -> applicant is from user's own realm
	-- else:   extract realm from fullname
	if shortname == fullname then
		realm = GroupfinderFlags.OWN_REALM
	else
		realm = string.sub(fullname, string.len(shortname)+2)
	end

	-- only proceed if player's realm is in database
	if GroupfinderFlags.EU_REALM_LANGUAGES[realm] ~= nil then

		-- adding the flag by :AddLine()
		local flag = GroupfinderFlags.PATH..GroupfinderFlags.FLAGS[GroupfinderFlags.EU_REALM_LANGUAGES[realm]]
		local country_name = "|cFFFFFFFF" .. GroupfinderFlags.COUNTRYNAMES[GroupfinderFlags.LOCALE_CODE][GroupfinderFlags.EU_REALM_LANGUAGES[realm]] .. "|r"
		local both_activated = GroupfinderFlagsDB.showFlagInTooltip and GroupfinderFlagsDB.showCountrynameInTooltip
		tooltip:AddLine(" ")
		tooltip:AddLine((GroupfinderFlagsDB.showFlagInTooltip and flag or "") .. (both_activated and "|cFFFFFFFF - |r" or "") .. (GroupfinderFlagsDB.showCountrynameInTooltip and country_name or ""))
		--  and readjusting the height and the width of the tooltip by :Show()
		tooltip:Show()
	end

end


-- hooking function for the applicantviewer
local function HookfunctionForGroupFinderApplicants(member, appID, memberIdx)

	if not GroupfinderFlagsDB.showFlagInGrpFinder then
		return
	end

	-- variables
	local realm, shortname, fullname

	-- getting applicant's name
	local name, _, _, _, _, _, _, _, _, _, relationship = C_LFGList.GetApplicantMemberInfo(appID, memberIdx);

	-- extract name+realm and (only) name
	shortname = Ambiguate(name, "short")
	fullname = Ambiguate(name, "mail")

	-- if:     shortname and fullname are equal -> applicant is from user's own realm
	-- else:   extract realm from fullname
	if shortname == fullname then
		realm = GroupfinderFlags.OWN_REALM
	else
		realm = string.sub(fullname, string.len(shortname)+2)
	end

	-- add a font string for displaying the flag if needed
	if not member.flag then
		member.flag = member:CreateFontString("$parentFlag", "ARTWORK", "GameFontNormalSmall")
		member.flag:SetPoint("LEFT", member.Name, "RIGHT", 3, 0)
	end
	-- set the appropiate flag
	member.flag:SetText(GroupfinderFlags.EU_REALM_LANGUAGES[realm] ~= nil and GroupfinderFlags.PATH..GroupfinderFlags.FLAGS[GroupfinderFlags.EU_REALM_LANGUAGES[realm]] or "")

	-- recalculate the name column's width (taken from blizz code and modified)
	local nameLength = 100 - 15
	if relationship then
		member.FriendIcon:SetPoint("LEFT", member.flag, "RIGHT", 0, 0)
		nameLength = nameLength - 22
	end
  	if ( member.Name:GetWidth() > nameLength ) then
    	member.Name:SetWidth(nameLength)
  	end
	
end

local function OnEvent(self, event, arg1, arg2, ...)
	if event == "ADDON_LOADED" and arg1 == "GroupfinderFlags" then

		-- creating the saved variables' array if needed
		if GroupfinderFlagsDB == nil then
			GroupfinderFlagsDB = {}
    	end

    	-- set the saved variables' default value if needed
    	if GroupfinderFlagsDB.showFlagInGrpFinder == nil then
    		GroupfinderFlagsDB.showFlagInGrpFinder = true
    	end
		if GroupfinderFlagsDB.showFlagInTooltip == nil then
			GroupfinderFlagsDB.showFlagInTooltip = true
		end
		if GroupfinderFlagsDB.showCountrynameInTooltip == nil then
			GroupfinderFlagsDB.showCountrynameInTooltip = true
		end

		-- unregister PLAYER_LOGIN after retrieving saved variables
    	GroupfinderFlags.mainFrame:UnregisterEvent("PLAYER_LOGIN")

    	-- set up the option panel
    	GroupfinderFlags.opanel.boxForGrpFinder:SetChecked(GroupfinderFlagsDB.showFlagInGrpFinder)
    	GroupfinderFlags.opanel.boxForTooltipFlag:SetChecked(GroupfinderFlagsDB.showFlagInTooltip)
    	GroupfinderFlags.opanel.boxForTooltipCountryNames:SetChecked(GroupfinderFlagsDB.showCountrynameInTooltip)
	end
end


-- hooking blizz's code: --
-- hook for the applicantviewer
hooksecurefunc("LFGListApplicationViewer_UpdateApplicantMember", HookfunctionForGroupFinderApplicants)
--
hooksecurefunc("LFGListUtil_SetSearchEntryTooltip", HookfunctionForGroupFinderSearchTooltip)
-- hook for the gametooltip
GameTooltip:HookScript("OnTooltipSetUnit", HookfunctionForGametooltip)

-- loading saved settings
GroupfinderFlags.mainFrame:RegisterEvent("ADDON_LOADED")
GroupfinderFlags.mainFrame:SetScript("OnEvent", OnEvent)


-- slash commands
SLASH_GROUPFINDERFLAGS1 = "/gff"
SLASH_GROUPFINDERFLAGS2 = "/groupfinderflags"
SlashCmdList["GROUPFINDERFLAGS"] = function(msg)
    if GroupfinderFlags.FIRST_SLASH_START == 0 then
        GroupfinderFlags.FIRST_SLASH_START = 1
        InterfaceOptionsFrame_OpenToCategory(GroupfinderFlags.opanel)
    end
    InterfaceOptionsFrame_OpenToCategory(GroupfinderFlags.opanel)
end