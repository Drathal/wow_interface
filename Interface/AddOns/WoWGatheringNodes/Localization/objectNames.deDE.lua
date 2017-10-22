-- Please use the Localization App on WoWAce to Update this
-- https://wow.curseforge.com/projects/wowgatheringnodes/localization

if GetLocale() ~= deDE then return; end
local WoWGatheringNodes = LibStub("AceAddon-3.0"):GetAddon("WoWGatheringNodes")
local L = LibStub("AceLocale-3.0"):NewLocale("WoWGatheringNodes", "deDE")
if not L then return end

--Translation missing 
-- L["Clear Data"] = "Clear Data"
--Translation missing 
-- L["Clears data from memory if version has already been imported."] = "Clears data from memory if version has already been imported."
--Translation missing 
-- L["Custom Objects"] = "Custom Objects"
--Translation missing 
-- L["Enable Custom Objects"] = "Enable Custom Objects"
--Translation missing 
-- L["Failed to load WoWGatheringNodes due to "] = "Failed to load WoWGatheringNodes due to "
--Translation missing 
-- L["Import WoWGatheringNodes"] = "Import WoWGatheringNodes"
--Translation missing 
-- L["Inject %s into gathering addons"] = "Inject %s into gathering addons"
--Translation missing 
-- L["Injects new objects into Gatherer/Gathermate2 that are not currently in their data files"] = "Injects new objects into Gatherer/Gathermate2 that are not currently in their data files"
--Translation missing 
-- L["Load WoWGatheringNodes and import the data to your database."] = "Load WoWGatheringNodes and import the data to your database."
--Translation missing 
-- L["Merge will add WoWGatheringNodes to your database. Overwrite will replace your database with the data in WoWGatheringNodes"] = "Merge will add WoWGatheringNodes to your database. Overwrite will replace your database with the data in WoWGatheringNodes"
--Translation missing 
-- L["WoWGatheringNodes has been imported."] = "WoWGatheringNodes has been imported."


WoWGatheringNodes.NodeIdNames = {
	[181069] =  "Großer Obsidianbrocken",
	[2040] =  "Mithrilvorkommen",
	[2041] =  "Lebenswurz",
	[209330] =  "Reiche Trilliumader",
	[2043] =  "Khadgars Schnurrbart",
	[2044] =  "Drachenzahn",
	[2045] =  "Würgetang",
	[2046] =  "Golddorn",
	[2047] =  "Echtsilbervorkommen",
	[201914] =  "Mondblatt",
	[216620] =  "Dschungelhopfen",
	[182606] =  "Drachenwirbel",
	[218539] =  "Großer Schwarm gewanderter Riffkraken",
	[209460] =  "Rattanrute",
	[233117] =  "Frostwurz",
	[182095] =  "Berstkappe",
	[188489] =  "Rubinfarbener Flieder",
	[2084] =  "Bisamwurzel",
	[209461] =  "Rattanrute",
	[123848] =  "Schlammbedeckte Thoriumader",
	[208311] =  "Ein Schwarm Tiefseeweisenfische",
	[209462] =  "Rattanrute",
	[247697] =  "Abscheuliche Teufelsschieferablagerung",
	[209974] =  "Fass voller Glitschis",
	[209463] =  "Rattanrute",
	[247698] =  "[Shattered Felslate Seam]",
	[253069] =  "Schwärzerer Lotus",
	[247699] =  "Urzeitliches Teufelsschiefervorkommen",
	[246804] =  "Archäologischer Fund der Hochbergtauren",
	[203071] =  "Archäologischer nachtelfischer Fund",
	[208442] =  "Blauknollenwinde",
	[237342] =  "Ein Schwarm mordlustiger Piranhas",
	[190540] =  "Saronitbrocken",
	[247956] =  "Kern eines Schwefelzerstörers",
	[247957] =  "Kern eines Schwefelzerstörers",
	[273412] =  "Uralte Truhe der Eredar",
	[208828] =  "Leichenwurmhügel",
	[203969] =  "Kaktusfeige",
	[13891] =  "Schlangenflaum",
	[188113] =  "Frostbeerenbusch",
	[273415] =  "Uralte Truhe der Eredar",
	[247959] =  "Kern eines Schwefelzerstörers",
	[3239] =  "Benedicts Truhe",
	[247960] =  "Kern eines Schwefelzerstörers",
	[260492] =  "Leuchtender Foliant",
	[247961] =  "Kern eines Schwefelzerstörers",
	[260493] =  "Manaerfülltes Juwel",
	[211517] =  "Knotranke",
	[246811] =  "Archäologisches Fundstück der Hochgeborenen",
	[247962] =  "Kern eines Schwefelzerstörers",
	[203078] =  "Archäologischer nerubischer Fund",
	[260494] =  "Doppelt verstärkter Arkwein",
	[211518] =  "Knotranke",
	[216761] =  "Ein Schwarm Meeresfische",
	[208833] =  "Stillwasserlilie",
	[246812] =  "Archäologisches Fundstück der Dämonen",
	[247963] =  "Kern eines Schwefelzerstörers",
	[184793] =  "Primitive Truhe",
	[247964] =  "Kern eines Schwefelzerstörers",
	[234154] =  "Verlegte Schriftrollen",
	[247965] =  "Kern eines Schwefelzerstörers",
	[234155] =  "Relikte der Ausgestoßenen",
	[209987] =  "Traumlaubbusch",
	[247966] =  "Kern eines Schwefelzerstörers",
	[260498] =  "Leyblumenblüte",
	[247967] =  "Kern eines Schwefelzerstörers",
	[209349] =  "Teepflanze",
	[211779] =  "Mao-Weide",
	[175207] =  "Gestrandete Meereskreatur",
	[212163] =  "Ein Schwarm Kaiserlachse",
	[209350] =  "Seidenkraut",
	[190169] =  "Tigerlilie",
	[185182] =  "Netherrankenkristall",
	[247969] =  "Kern eines Schwefelzerstörers",
	[209351] =  "Schneelilie",
	[190170] =  "Talandras Rose",
	[202702] =  "Steinblüte",
	[247075] =  "Abgesonderter Wachsklumpen",
	[190171] =  "Lichblüte",
	[237357] =  "Reiches Echteisenvorkommen",
	[202703] =  "Bitterblüte",
	[186463] =  "Drachenwinde",
	[203982] =  "Okra",
	[209353] =  "Regenmohn",
	[190172] =  "Eisdorn",
	[237358] =  "Echteisenvorkommen",
	[244775] =  "Traumlaub",
	[209354] =  "Goldlotus",
	[17282] =  "Bathranshaar",
	[190173] =  "Gefrorenes Kraut",
	[237359] =  "Schwarzfelsvorkommen",
	[244776] =  "Traumlaub",
	[209355] =  "Narrenkappe",
	[237360] =  "Reiches Schwarzfelsvorkommen",
	[244777] =  "Fjarnskaggl",
	[212169] =  "Ein Schwarm riesiger Mantisgarnelen",
	[225596] =  "Stachlige Kaktusfeige",
	[180712] =  "Steinschuppenaalschwarm",
	[190175] =  "Gefrorenes Kraut",
	[244778] =  "Sternlichtrose",
	[177388] =  "Schlammbedecktes reiches Thoriumvorkommen",
	[190176] =  "Frostlotus",
	[212171] =  "Ein Schwarm Jadelungenfische",
	[195036] =  "Reine Saronitablagerung",
	[212172] =  "Ein Schwarm Krasaranglöffelstöre",
	[218950] =  "Archäologischer Fund der Mantis",
	[212174] =  "Ein Schwarm Riffkraken",
	[207187] =  "Archäologischer orcischer Fund",
	[247340] =  "Sprödes Leysteinflöz",
	[212175] =  "Ein Schwarm Tigerguramis",
	[207188] =  "Archäologischer draeneiischer Fund",
	[211025] =  "Goldfeuerorchidee",
	[186729] =  "Manabeerenbusch",
	[212177] =  "Ein Schwarm Stachelfische",
	[207190] =  "Archäologischer Fund der Tol'vir",
	[182127] =  "Verderbte Blume",
	[244786] =  "Teufelswurz",
	[251181] =  "Azurerz",
	[203228] =  "Eisenpyrit von Tausen Nadeln",
	[269887] =  "Teufelsverkrustetes Kräuterbündel",
	[181108] =  "Echtsilberablagerung",
	[247987] =  "Brillantes Leysteinflöz",
	[184689] =  "Kristall der Draenethystmine",
	[218576] =  "Großer verhedderter Schwarm riesiger Mantisgarnelen",
	[226888] =  "Aruunembeerenstrauch",
	[211160] =  "Makelloses Kranichei",
	[218577] =  "Verhedderter Schwarm riesiger Mantisgarnelen",
	[247605] =  "Blühendes Aethril",
	[247989] =  "Wildes Leysteinflöz",
	[184691] =  "Schattenmondknolle",
	[141853] =  "Violetter Tragan",
	[247606] =  "Blühendes Traumlaub",
	[273222] =  "Kriegsvorräte der Eredar",
	[272455] =  "Kriegsvorräte der Eredar",
	[267596] =  "[Tar-Covered Fish]",
	[2714] =  "Alteracgranit",
	[272456] =  "Kriegsvorräte der Eredar",
	[211163] =  "Archäologischer pandarischer Fund",
	[247352] =  "Hartes Leysteinvorkommen",
	[247608] =  "Blühende Sternlichtrose",
	[241726] =  "Leysteinvorkommen",
	[205538] =  "Dorniger Stinkwurz",
	[247865] =  "Aquäusaethril",
	[229068] =  "Ein Schwarm dicker Schläfer",
	[229069] =  "Ein Schwarm blinder Seestöre",
	[181372] =  "Höllenwirbelkraut",
	[229070] =  "Ein Schwarm Feuerammoniten",
	[229071] =  "Ein Schwarm Seeskorpione",
	[208867] =  "Glänzende Steine",
	[184443] =  "Elfenbeinglocke",
	[74447] =  "Große eisenbeschlagene Truhe",
	[229072] =  "Ein Schwarm Tiefenschluckaale",
	[229073] =  "Ein Schwarm Schwarzwasserpeitschflossen",
	[181248] =  "Kupferader",
	[208997] =  "Ewige Sonnenfrucht",
	[247999] =  "Teufelswurz",
	[181249] =  "Zinnader",
	[248000] =  "Teufelswurz",
	[2866] =  "Feuerblüte",
	[152094] =  "Hyazinthpilz",
	[211684] =  "Zunderblüte",
	[234446] =  "Relikte der Ausgestoßenen",
	[208999] =  "Ewige Mondbirne",
	[248001] =  "Teufelswurz",
	[152095] =  "Mondblütenlilie",
	[211174] =  "Archäologischer Fund der Mogu",
	[181891] =  "Blutpilz",
	[248003] =  "Teufelswurz",
	[187902] =  "Blutsporenfruchtblatt",
	[181892] =  "Wasserstinkmorchel",
	[268901] =  "Teufelsschieferstachel",
	[178184] =  "Saphir von Aku'mai",
	[248004] =  "Teufelswurz",
	[210537] =  "Immerblüte",
	[207724] =  "Schiffswracktrümmer",
	[208875] =  "Kienapfel von Mulgore",
	[248005] =  "Teufelswurz",
	[247366] =  "Raue Leysteinablagerung",
	[234451] =  "Relikte der Ausgestoßenen",
	[126049] =  "Magenta Kappengruppen",
	[248006] =  "Teufelswurz",
	[210539] =  "Immerblüte",
	[203762] =  "Saftiger Apfel",
	[248007] =  "Teufelswurz",
	[202740] =  "Reiches Pyritvorkommen",
	[248008] =  "Teufelswurz",
	[221538] =  "Geistereisenvorkommen",
	[181897] =  "Yseras Träne",
	[268911] =  "Blut von Sargeras",
	[234454] =  "Relikte der Ausgestoßenen",
	[241743] =  "Teufelsschiefervorkommen",
	[236756] =  "Ein Schwarm ölige Tiefseeschluckaale",
	[221539] =  "Reiches Geistereisenvorkommen",
	[247370] =  "Kern eines Schwefelzerstörers",
	[165658] =  "Dunkeleisenvorkommen",
	[206706] =  "Klageveilchen",
	[234455] =  "Relikte der Ausgestoßenen",
	[248010] =  "Teufelswurz",
	[221540] =  "Reiche Trilliumader",
	[207346] =  "Mondblütenlilie",
	[245325] =  "Reiches Teufelsschiefervorkommen",
	[273519] =  "Kriegsvorräte der Legion",
	[248011] =  "Teufelswurz",
	[181644] =  "Azurlöwenmäulchen",
	[237398] =  "Frostwurz",
	[206836] =  "Archäologischer fossiler Fund",
	[273521] =  "Kriegsvorräte der Legion",
	[248012] =  "Teufelswurz",
	[221542] =  "Teepflanze",
	[273523] =  "Kriegsvorräte der Legion",
	[228576] =  "Taladororchidee",
	[221543] =  "Regenmohn",
	[180751] =  "Treibende Wrackteile",
	[273524] =  "Kriegsvorräte der Legion",
	[205559] =  "Faulbeerbusch",
	[237400] =  "Taladororchidee",
	[209907] =  "Wiesenringelblume",
	[221544] =  "Seidenkraut",
	[204281] =  "Wurmhaufen",
	[207734] =  "Feuerteich",
	[206839] =  "Das Licht der Seelen",
	[232542] =  "Schwarzfelsvorkommen",
	[221545] =  "Goldlotus",
	[204282] =  "Archäologischer zwergischer Fund",
	[273528] =  "Kriegsvorräte der Legion",
	[237402] =  "Gorgrondfliegenfalle",
	[202748] =  "Sturmwinde",
	[232543] =  "Reiches Schwarzfelsvorkommen",
	[202749] =  "Azsharas Schleier",
	[232544] =  "Echteisenvorkommen",
	[248017] =  "Zarte Fuchsblume",
	[221547] =  "Narrenkappe",
	[237404] =  "Sternenblume",
	[202750] =  "Herzblüte",
	[232545] =  "Reiches Echteisenvorkommen",
	[248018] =  "Buschige Fuchsblume",
	[221548] =  "Ein Schwarm Juwelendanios",
	[240346] =  "Olivenzweig",
	[202751] =  "Schattenjasmin",
	[273535] =  "Kriegsvorräte der Legion",
	[272768] =  "Empyriumvorkommen",
	[221549] =  "[Redbelly Mandarin School]",
	[237406] =  "Nagrandpfeilkelch",
	[202752] =  "Gertenrohr",
	[248020] =  "Schillerndes Aethril",
	[11713] =  "Todeskappe",
	[235105] =  "Sonnenberührte Truhe",
	[142140] =  "Lila Lotus",
	[181270] =  "Teufelsgras",
	[142141] =  "Arthas' Tränen",
	[188432] =  "Schwarzes Blut von Yogg-Saron",
	[248022] =  "Buschiges Aethril",
	[1610] =  "Pyrophormineralvorkommen",
	[142142] =  "Sonnengras",
	[248023] =  "Lebhaftes Traumlaub",
	[1618] =  "Friedensblume",
	[1619] =  "Erdwurzel",
	[1620] =  "Maguskönigskraut",
	[142143] =  "Blindkraut",
	[171938] =  "Kaktusapfel",
	[1623] =  "Wildstahlblume",
	[1624] =  "Königsblut",
	[272778] =  "Reiches Empyriumvorkommen",
	[185877] =  "Netheritvorkommen",
	[1628] =  "Grabmoos",
	[123309] =  "Schlammbedecktes Echtsilbervorkommen",
	[235365] =  "Admiral Taylors Truhe",
	[247897] =  "Angesengter Fjarnskaggl",
	[272780] =  "Empyriumflöz",
	[142145] =  "Gromsblut",
	[181275] =  "Zottelkappe",
	[205060] =  "Pesttentakel",
	[211454] =  "Kafa'kota-Strauch",
	[123310] =  "Schlammbedeckte Mithrilablagerung",
	[181276] =  "Flammenkappe",
	[248027] =  "Dorniger Fjarnskaggl",
	[247388] =  "Blühende Fuchsblume",
	[181277] =  "Terozapfen",
	[206085] =  "Gefrorenes Kraut",
	[185881] =  "Netherstaubbusch",
	[206597] =  "Kiste des Schattenhammers",
	[181278] =  "Urflechte",
	[268440] =  "Archäologischer Fund der Hochgeborenen",
	[248029] =  "Stark riechender Fjarnskaggl",
	[181279] =  "Netherblüte",
	[248030] =  "Lebhafte Sternlichtrose",
	[209284] =  "Dunkelblüte",
	[181280] =  "Alptraumranke",
	[248031] =  "Schillernde Sternlichtrose",
	[181281] =  "Manadistel",
	[247904] =  "Helles Leysteinvorkommen",
	[248032] =  "Funkelnde Sternlichtrose",
	[181665] =  "Grabtruhe",
	[247905] =  "Warmes Leysteinvorkommen",
	[188699] =  "Seltsames Erz",
	[273052] =  "Teufelsverkrustetes Kraut",
	[189978] =  "Kobaltvorkommen",
	[273053] =  "Teufelsverkrustetes Kräuterbündel",
	[247906] =  "Feuriges Leysteinvorkommen",
	[179493] =  "Moosbedeckte Schließkiste",
	[189979] =  "Reiches Kobaltvorkommen",
	[268451] =  "Archäologischer Fund der Dämonen",
	[241641] =  "Fuchsblume",
	[247907] =  "Großes Leysteinvorkommen",
	[179494] =  "Verbeulte Schließkiste",
	[189980] =  "Saronitvorkommen",
	[268453] =  "Archäologischer Fund der Hochgeborenen",
	[211719] =  "Zitronenveilchen",
	[235376] =  "Frostwurz",
	[247908] =  "Leuchtendes Leysteinvorkommen",
	[1723] =  "Morastschnauzenkappe",
	[237295] =  "Ein Schwarm öliger Seeskorpione",
	[247909] =  "Glattes Leysteinvorkommen",
	[175404] =  "Reiche Thoriumader",
	[253280] =  "Leysteinflöz",
	[1731] =  "Kupferader",
	[1732] =  "Zinnader",
	[1733] =  "Silberader",
	[1734] =  "Goldader",
	[1735] =  "Eisenvorkommen",
	[247910] =  "Feines Leysteinvorkommen",
	[184740] =  "Weidentruhe",
	[247911] =  "Geladenes Leysteinvorkommen",
	[179498] =  "Scharlachrote Schließkiste",
	[184741] =  "Verbeulte Schließkiste",
	[182951] =  "Reines Wasser",
	[243564] =  "Korb mit getrockneten Kräutern",
	[247912] =  "Exquisites Leysteinvorkommen",
	[218629] =  "Leuchtender Jadelungenfisch",
	[182952] =  "Treibgut der Dampfpumpe",
	[252772] =  "Uralter Manabrocken",
	[247913] =  "Prächtiges Leysteinvorkommen",
	[218630] =  "Großer Schwarm leuchtender Jadelungenfische",
	[182953] =  "Ein Schwarm Sporenfische",
	[210958] =  "Hervortretender Chrysoberyll",
	[247914] =  "Überlegenes Leysteinvorkommen",
	[186662] =  "Reagenzienbeutel",
	[218631] =  "Ein Schwarm panischer Krasaranglöffelstöre",
	[182954] =  "Ein Brackwasserschwarm",
	[252774] =  "Uralter Manakristall",
	[210959] =  "Hervortretender Chrysoberyll",
	[247915] =  "Stechendes Leysteinvorkommen",
	[218632] =  "Großer Schwarm panischer Krasaranglöffelstöre",
	[243312] =  "Reiches Schwarzfelsvorkommen",
	[210960] =  "Hervortretender Chrysoberyll",
	[247916] =  "[Ancient Leystone Deposit]",
	[218633] =  "Brauverrückter Kaiserlachs",
	[243313] =  "Schwarzfelsvorkommen",
	[181166] =  "Blutdistel",
	[203800] =  "Fass mit Kanalfischen",
	[247917] =  "Dunkles Leysteinvorkommen",
	[180655] =  "Schwimmende Trümmer",
	[218634] =  "Großer Schwarm brauverrückter Kaiserlachse",
	[243314] =  "Echteisenvorkommen",
	[202778] =  "Ein Schwarm Albinohöhlenfische",
	[247918] =  "Stürmisches Leysteinvorkommen",
	[218635] =  "Tigerguramischlick",
	[182958] =  "Ein Schwarm Matschflosser",
	[235387] =  "Feuerwurz",
	[202779] =  "Ein Schwarm Schwarzbauchmatschflosser",
	[181680] =  "Trockenkappe",
	[218636] =  "Großer Schwarm Tigerguramischlick",
	[182959] =  "Ein Schwarm Blauflossen",
	[235388] =  "Gorgrondfliegenfalle",
	[202780] =  "Klafteraalschwarm",
	[180658] =  "Ein Schwarm Deviatfische",
	[194213] =  "Winterhyazinthe",
	[235389] =  "Sternenblume",
	[175928] =  "Brandpulveragave",
	[235390] =  "Nagrandpfeilkelch",
	[181555] =  "Teufelseisenvorkommen",
	[214547] =  "[Shipwreck Debris]",
	[235135] =  "Geschmuggelte Apexisartefakte",
	[252408] =  "Uralter Manasplitter",
	[202655] =  "Archäologischer trollischer Fund",
	[2653] =  "Geringes Blutsteinvorkommen",
	[247923] =  "Verdunkeltes Teufelsschiefervorkommen",
	[181556] =  "Adamantitvorkommen",
	[271227] =  "Verborgene Wyrmzungentruhe",
	[191019] =  "Schlangenzunge",
	[271554] =  "Verhüllte Wyrmzungenschatztruhe",
	[273439] =  "Uralte Truhe der Eredar",
	[273414] =  "Uralte Truhe der Eredar",
	[273407] =  "Uralte Truhe der Eredar",
	[247924] =  "Brennendes Teufelsschiefervorkommen",
	[181557] =  "Khoriumader",
	[180662] =  "Schiffswrackteile",
	[273301] =  "Uralte Truhe der Eredar",
	[260495] =  "Leyblumenpulver",
	[246518] =  "Vollgelaufene Truhe",
	[277637] =  "Leerendurchtränkte Truhe",
	[273443] =  "Leerendurchtränkte Truhe",
	[247925] =  "Schweres Teufelsschiefervorkommen",
	[273538] =  "Kriegsvorräte der Legion",
	[273533] =  "Kriegsvorräte der Legion",
	[273527] =  "Kriegsvorräte der Legion",
	[208540] =  "Magmolie",
	[272771] =  "Kriegsvorräte der Eredar",
	[272770] =  "Kriegsvorräte der Eredar",
	[192556] =  "Höhlenpilz",
	[228572] =  "Feuerwurz",
	[271849] =  "Kriegsvorräte der Eredar",
	[186648] =  "Hazleks Koffer",
	[233715] =  "Goldzehs Plündergut",
	[190399] =  "Krauskappenfungus",
	[153468] =  "Große mithrilbeschlagene Truhe",
	[179496] =  "Verbeulte Schließkiste",
	[176189] =  "Skelettierte Meeresschildkröte",
	[20691] =  "Cozzles Schließkiste",
	[205089] =  "Dolchdistelsamen",
	[255344] =  "Teufelsschieferflöz",
	[192046] =  "Ein Schwarm Muschelrückengroppen",
	[179491] =  "Durchnässte Schließkiste",
	[179488] =  "Ramponierte Schließkiste",
	[179486] =  "Ramponierte Schließkiste",
	[179487] =  "Durchnässte Schließkiste",
	[209328] =  "Reiches Geistereisenvorkommen",
	[184845] =  "[Strange Pool]",
	[192051] =  "Ein Schwarm boreanischer Galeeren",
	[252404] =  "Teufelswurz",
	[243325] =  "Ein Schwarm Dämonenschlundfrenzys",
	[189973] =  "Goldklee",
	[181271] =  "Traumwinde",
	[248019] =  "Lebhaftes Aethril",
	[248026] =  "Duftendes Traumlaub",
	[180685] =  "Schwimmende Wrackteile",
	[209311] =  "Geistereisenvorkommen",
	[192048] =  "Ein Schwarm Engelsdrachenfische",
	[208544] =  "Magmolie",
	[228574] =  "Sternenblume",
	[205367] =  "Wolfsbann",
	[202736] =  "Obsidiumvorkommen",
	[228493] =  "Echteisenvorkommen",
	[209952] =  "Jademond",
	[209312] =  "Kyparitvorkommen",
	[192049] =  "Ein Schwarm Fangzahnheringe",
	[247958] =  "Kern eines Schwefelzerstörers",
	[191303] =  "Feuerdorn",
	[2042] =  "Blassblatt",
	[186423] =  "Hexenfluch",
	[210080] =  "Fass voller Maulbeeren",
	[210209] =  "Kaiserlicher Lotus",
	[209313] =  "Trilliumader",
	[192050] =  "Ein Schwarm Winterlachse",
	[228571] =  "Frostwurz",
	[321] =  "Tilloaträne",
	[209825] =  "Gezeitennebelkappe",
	[13874] =  "Schlangenflaum",
	[202737] =  "Pyritvorkommen",
	[192818] =  "Energieerfüllter Pilz",
	[248025] =  "Buschiges Traumlaub",
	[218649] =  "Ein großer Schwarm wimmelnder Rotbauchmandarine",
	[185557] =  "Uralte Edelsteinader",
	[202738] =  "Elementiumader",
	[228575] =  "Nagrandpfeilkelch",
	[228991] =  "Frostblüte",
	[209059] =  "Blutnessel",
	[202739] =  "Reiches Obsidiumvorkommen",
	[183385] =  "Bluthibiskus",
	[192052] =  "Ein Schwarm imperialer Mantarochen",
	[236169] =  "Abbaubarer wertvoller Kristall",
	[324] =  "Kleine Thoriumader",
	[206764] =  "Smaragdgrüne Schimmerkappe",
	[205423] =  "Bansheeglocken",
	[248028] =  "Stacheliger Fjarnskaggl",
	[214510] =  "Sha-berührtes Kraut",
	[202741] =  "Reiche Elementiumader",
	[218651] =  "Ein großer Schwarm Sha-berührter Stachelfische",
	[206503] =  "Gebetsblume",
	[248002] =  "Teufelswurz",
	[188345] =  "Schimmernde Schneekappen",
	[247988] =  "Rohes Leysteinflöz",
	[192053] =  "Ein Schwarm Tiefseemonsterbäuche",
	[234105] =  "Archäologischer Fund der Arakkoa",
	[182956] =  "Ein Schwarm Stachelflosser",
	[194100] =  "Bärenklau",
	[218648] =  "Ein Schwarm wimmelnder Rotbauchmandarine",
	[234106] =  "Archäologischer Ogerfund",
	[244774] =  "Aethril",
	[191543] =  "Truhe des Scharlachroten Ansturms",
	[247936] =  "[Coarse Leystone Outcropping]",
	[181569] =  "Reiches Adamantitvorkommen",
	[218650] =  "Ein Schwarm Sha-berührter Stachelfische",
	[269278] =  "Teufelsverkrustetes Kraut",
	[208551] =  "Luzifarn",
	[210538] =  "Immerblüte",
	[243315] =  "Reiches Echteisenvorkommen",
	[208878] =  "\"Magischer\" Pilz",
	[247937] =  "Glänzende Leysteinablagerung",
	[181570] =  "Reiches Adamantitvorkommen",
	[176583] =  "Goldener Sansam",
	[216764] =  "Ein Schwarm Weisenfische",
	[243334] =  "Verwelktes Kraut",
	[202619] =  "Flammenblüte",
	[202747] =  "Aschenblüte",
	[218652] =  "Ein Schwarm glitzernder Juwelendanios",
	[247938] =  "Schimmernde Leysteinablagerung",
	[208816] =  "Abflusskappe",
	[176584] =  "Traumblatt",
	[192057] =  "Ein Schwarm Nesselfische",
	[226967] =  "Lagunenteich",
	[123330] =  "Geldkassette des Bukaniers",
	[229067] =  "Ein Schwarm kieferloser Schleicher",
	[248024] =  "Schillerndes Traumlaub",
	[247939] =  "Strahlende Leysteinablagerung",
	[181894] =  "Teufelszapfenfungus",
	[176753] =  "Verdammniskraut",
	[216610] =  "Krasarieisen",
	[243562] =  "Kiste mit Khadgars Schnurrbärten",
	[202776] =  "Ein Schwarm Bergforellen",
	[212902] =  "Ausgehärteter Bern",
	[182957] =  "Ein Hochlandschwarm",
	[216227] =  "Brüchige Wurzel",
	[218653] =  "Ein großer Schwarm glitzernder Juwelendanios",
	[176586] =  "Bergsilbersalbei",
	[192059] =  "Ein Schwarm Glasflossenelritzen",
	[189981] =  "Reiches Saronitvorkommen",
	[1617] =  "Silberblatt",
	[228563] =  "Schwarzfelsvorkommen",
	[272782] =  "Astralwinde",
	[247941] =  "Dichte Leysteinablagerung",
	[192827] =  "Wilder Senf",
	[176587] =  "Trauermoos",
	[1621] =  "Wilddornrose",
	[180901] =  "Blutsegelwrackteile",
	[1622] =  "Beulengras",
	[191133] =  "Titanader",
	[228564] =  "Reiches Schwarzfelsvorkommen",
	[247942] =  "Ursprüngliche Leysteinablagerung",
	[192828] =  "Kristallsangkarotte",
	[176588] =  "Eiskappe",
	[201737] =  "Knospende Blüte",
	[226521] =  "Archäologischer Fund der Klans von Draenor",
	[176589] =  "Schwarzer Lotus",
	[209836] =  "Frisch gefallene Blütenblätter",
	[201738] =  "Knospende Blüte",
	[211721] =  "Zitronenveilchen",
	[182599] =  "Telaarifarn",
	[175566] =  "Düsterkraut",
	[142144] =  "Geisterpilz",
	[221541] =  "Trilliumader",
	[271850] =  "Kriegsvorräte der Eredar",
	[205099] =  "Wildes Verdammniskraut",
	[268450] =  "Archäologischer Fund der Hochbergtauren",
	[202754] =  "Wacholderbeeren",
	[182600] =  "Marschenbeere",
	[180682] =  "Ein Schwarm öliger Schwarzmaulfische",
	[201975] =  "Teerblüte",
	[202421] =  "Xavrens Dorn",
	[247607] =  "Blühender Fjarnskaggl",
	[234449] =  "Relikte der Ausgestoßenen",
	[228573] =  "Gorgrondfliegenfalle",
	[181893] =  "Ruinöser Birkensporling",
	[182601] =  "Olembawurzel",
	[180683] =  "Ein Schwarm Feuerflossenschnapper",
	[248009] =  "Teufelswurz",
	[202422] =  "Markblattstängel",
	[268466] =  "Archäologischer Fund der Dämonen",
	[187333] =  "Blutbeerenbusch",
	[235391] =  "Taladororchidee",
	[235095] =  "Verlegte Schriftrolle",
	[211474] =  "Sonnenkriecher",
	[180684] =  "Ein Schwarm großer Weisenfische",
	[206387] =  "Wassereimer",
	[237396] =  "Feuerwurz",
	[181068] =  "Kleiner Obsidianbrocken",
	[202777] =  "Ein Schwarm Hochlandguppys",
	[230428] =  "Qualmendes Echteisenvorkommen",
	[228510] =  "Reiches Echteisenvorkommen",
	[247940] =  "Gehärtete Leysteinablagerung",
	[209329] =  "Reiches Kyparitvorkommen",
	[207189] =  "Archäologischer Fund der Vrykul",
	[245324] =  "Reiches Leysteinvorkommen",
	[192054] =  "Ein Schwarm Mondlichtsepia",
}
