-- Please use the Localization App on WoWAce to Update this
-- https://wow.curseforge.com/projects/wowgatheringnodes/localization

if GetLocale() ~= ruRU then return; end
local WoWGatheringNodes = LibStub("AceAddon-3.0"):GetAddon("WoWGatheringNodes")
local L = LibStub("AceLocale-3.0"):NewLocale("WoWGatheringNodes", "ruRU")
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
	[181069] =  "Большая обсидиановая глыба",
	[2040] =  "Мифриловые залежи",
	[2041] =  "Корень жизни",
	[209330] =  "Богатая триллиевая жила",
	[2043] =  "Кадгаров ус",
	[2044] =  "Драконьи зубы",
	[2045] =  "Удавник",
	[2046] =  "Златошип",
	[2047] =  "Залежи истинного серебра",
	[201914] =  "Лунный лист",
	[216620] =  "Джунглевый хмель",
	[182606] =  "Драконий шип",
	[218539] =  "Большая стая мигрировавших рифовых осьминогов",
	[209460] =  "Побег ротанга",
	[233117] =  "Морозноцвет",
	[182095] =  "Гриб-пороховик",
	[188489] =  "Рубиновая сирень",
	[2084] =  "Мускусный корень",
	[209461] =  "Побег ротанга",
	[123848] =  "Покрытая слизью ториевая жила",
	[208311] =  "Косяк глубоководного шалфокуня",
	[209462] =  "Побег ротанга",
	[247697] =  "Обнажение пласта отвратительного сланца Скверны",
	[209974] =  "Бочка с рыбой",
	[209463] =  "Побег ротанга",
	[247698] =  "Пласт расколотого сланца Скверны",
	[253069] =  "Чернейший лотос",
	[247699] =  "Залежи первобытного сланца Скверны",
	[246804] =  "Археологическая находка тауренов Крутогорья",
	[203071] =  "Эльфийская археологическая находка",
	[208442] =  "Лазоревый корень",
	[237342] =  "Пруд свирепых пираний",
	[190540] =  "Кусок саронита",
	[247956] =  "Ядро серного разрушителя",
	[247957] =  "Ядро серного разрушителя",
	[273412] =  "Древний эредарский тайник",
	[208828] =  "Яма с трупными червями",
	[203969] =  "Колючая груша",
	[13891] =  "Змеецвет",
	[188113] =  "Куст снежевики",
	[273415] =  "Древний эредарский тайник",
	[247959] =  "Ядро серного разрушителя",
	[3239] =  "Сундук Бенедикта",
	[185557] =  "Древняя самоцветная жила",
	[260492] =  "Светящийся фолиант",
	[247961] =  "Ядро серного разрушителя",
	[260493] =  "Насыщенный маной самоцвет",
	[211517] =  "Витая лоза",
	[183385] =  "Кровавый гибискус",
	[247962] =  "Ядро серного разрушителя",
	[203078] =  "Нерубская археологическая находка",
	[260494] =  "Дважды крепленое чародейское вино",
	[211518] =  "Витая лоза",
	[216761] =  "Косяк разной океанской рыбы",
	[208833] =  "Лилия сточных вод",
	[246812] =  "Археологическая находка демонов",
	[247963] =  "Ядро серного разрушителя",
	[184793] =  "Примитивный сундук",
	[247964] =  "Ядро серного разрушителя",
	[234154] =  "Перепутанные свитки",
	[247965] =  "Ядро серного разрушителя",
	[234155] =  "Сокровища изгоев",
	[209987] =  "Куст грезолиста",
	[247966] =  "Ядро серного разрушителя",
	[260498] =  "Цветок силоцвета",
	[247967] =  "Ядро серного разрушителя",
	[209349] =  "Лист зеленого чая",
	[211779] =  "Ива Мао",
	[175207] =  "Выброшенная на берег морская тварь",
	[212163] =  "Косяк императорского лосося",
	[209350] =  "Ваточник",
	[190169] =  "Тигровая лилия",
	[185182] =  "Кристалл Лозы Пустоты",
	[247969] =  "Ядро серного разрушителя",
	[209351] =  "Снежная лилия",
	[190170] =  "Роза Таландры",
	[202702] =  "Камнецвет",
	[247075] =  "Шарик воска",
	[190171] =  "Личецвет",
	[237357] =  "Богатые залежи истинного железа",
	[202703] =  "Горькоцвет",
	[186463] =  "Змейкин хвост",
	[203982] =  "Окра",
	[209353] =  "Дождевой мак",
	[190172] =  "Ледошип",
	[237358] =  "Залежи истинного железа",
	[244775] =  "Грезолист",
	[209354] =  "Золотой лотос",
	[17282] =  "Батранов волос",
	[190173] =  "Мерзлая трава",
	[237359] =  "Залежи руды Черной горы",
	[244776] =  "Грезолист",
	[209355] =  "Дурногриб",
	[237360] =  "Богатые залежи руды Черной горы",
	[244777] =  "Фьярнскаггл",
	[212169] =  "Стая гигантских раков-богомолов",
	[225596] =  "Колючий нопаль",
	[180712] =  "Стайка каменного угря",
	[190175] =  "Мерзлая трава",
	[244778] =  "Звездная роза",
	[177388] =  "Покрытая слизью богатая ториевая жила",
	[190176] =  "Северный лотос",
	[212171] =  "Косяк нефритовой двоякодышащей рыбы",
	[195036] =  "Месторождение чистого саронита",
	[212172] =  "Косяк красарангского веслоноса",
	[218950] =  "Археологическая находка богомолов",
	[212174] =  "Косяк рифовых осьминогов",
	[207187] =  "Оркская археологическая находка",
	[247340] =  "Пласт сырого силового камня",
	[212175] =  "Косяк тигровых гурами",
	[207188] =  "Дренейская археологическая находка",
	[211025] =  "Златопламенная орхидея",
	[207189] =  "Врайкульская археологическая находка",
	[212177] =  "Косяк иглоспинки",
	[207190] =  "Тол'вирская археологическая находка",
	[324] =  "Малая ториевая жила",
	[244786] =  "Зверобой Скверны",
	[251181] =  "Лазурная руда",
	[203228] =  "Железный колчедан Тысячи Игл",
	[269887] =  "Пучок покрытой Скверной травы",
	[181108] =  "Залежи истинного серебра",
	[247987] =  "Пласт ослепительного силового камня",
	[184689] =  "Кристалл дренетиста",
	[218576] =  "Большая стая запутавшихся раков-богомолов",
	[226888] =  "Ягодный куст Арууны",
	[211160] =  "Чистое яйцо цапли",
	[218577] =  "Стая запутавшихся раков-богомолов",
	[247605] =  "Цветущий айтрил",
	[247989] =  "Пласт дикого силового камня",
	[184691] =  "Клубни долины Призрачной Луны",
	[141853] =  "Фиалковый траган",
	[247606] =  "Цветущий грезолист",
	[273222] =  "Эредарские военные припасы",
	[272455] =  "Эредарские военные припасы",
	[267596] =  "[Tar-Covered Fish]",
	[2714] =  "Альтеракский гранит",
	[272456] =  "Эредарские военные припасы",
	[211163] =  "Пандаренская археологическая находка",
	[247352] =  "Залежи твердого силового камня",
	[247608] =  "Цветущая звездная роза",
	[241726] =  "Залежи силового камня",
	[205538] =  "Шипастый смердокорень",
	[247865] =  "Водяной айтрил",
	[229068] =  "Косяк толстопузика",
	[229069] =  "Косяк слепого озерного осетра",
	[181372] =  "Пламенный шиполист",
	[229070] =  "Косяк огненного аммонита",
	[229071] =  "Косяк морских скорпионов",
	[208867] =  "Блестящие камешки",
	[184443] =  "Кремовый колокольчик",
	[74447] =  "Окованный железом большой сундук",
	[229072] =  "Косяк глубинного угря-мешкорота",
	[229073] =  "Косяк хлыстохвоста Черноводья",
	[181248] =  "Медная жила",
	[208997] =  "Вечный солнцеплод",
	[247999] =  "Зверобой Скверны",
	[181249] =  "Оловянная жила",
	[248000] =  "Зверобой Скверны",
	[2866] =  "Огнецвет",
	[152094] =  "Гиацинтовый гриб",
	[211684] =  "Взрывоцвет",
	[234446] =  "Сокровища изгоев",
	[208999] =  "Вечная лунная груша",
	[248001] =  "Зверобой Скверны",
	[152095] =  "Лунная лилия",
	[248002] =  "Зверобой Скверны",
	[181891] =  "Кровавый гриб",
	[248003] =  "Зверобой Скверны",
	[187902] =  "Кровоспоровый плодолистик",
	[181892] =  "Водянистый смрадорог",
	[268901] =  "Шип сланца Скверны",
	[178184] =  "Сапфир Аку'мая",
	[248004] =  "Зверобой Скверны",
	[181893] =  "Губительная полиспора",
	[207724] =  "Обломки кораблекрушения",
	[208875] =  "Мулгорская кедровая шишка",
	[248005] =  "Зверобой Скверны",
	[247366] =  "Обнажение пласта шершавого силового камня",
	[234451] =  "Сокровища изгоев",
	[126049] =  "Семейка грибов-малиновиков",
	[248006] =  "Зверобой Скверны",
	[210539] =  "Вечноцвет",
	[203762] =  "Сочное яблоко",
	[248007] =  "Зверобой Скверны",
	[202740] =  "Богатые залежи колчедана",
	[228571] =  "Морозноцвет",
	[221538] =  "Залежи призрачного железа",
	[181897] =  "Слеза Изеры",
	[268911] =  "Кровь Саргераса",
	[234454] =  "Сокровища изгоев",
	[241743] =  "Залежи сланца Скверны",
	[236756] =  "Косяк масляного глубинного угря-мешкорота",
	[221539] =  "Богатые залежи призрачного железа",
	[247370] =  "Ядро серного разрушителя",
	[165658] =  "Залежи черного железа",
	[237396] =  "Пламецвет",
	[234455] =  "Сокровища изгоев",
	[201975] =  "Смолоцвет",
	[221540] =  "Богатая триллиевая жила",
	[207346] =  "Лунная лилия",
	[245325] =  "Богатые залежи сланца Скверны",
	[273519] =  "Военные припасы Легиона",
	[228574] =  "Звездоцвет",
	[181644] =  "Лазурный львиный зев",
	[237398] =  "Морозноцвет",
	[206836] =  "Находка-окаменелость",
	[273521] =  "Военные припасы Легиона",
	[248012] =  "Зверобой Скверны",
	[221542] =  "Лист зеленого чая",
	[273523] =  "Военные припасы Легиона",
	[228576] =  "Таладорская орхидея",
	[221543] =  "Дождевой мак",
	[180751] =  "Обломки в воде",
	[273524] =  "Военные припасы Легиона",
	[205559] =  "Куст гниленики",
	[237400] =  "Таладорская орхидея",
	[209907] =  "Луговые бархатцы",
	[221544] =  "Ваточник",
	[204281] =  "Куча червей",
	[202619] =  "Огненный цветок",
	[206839] =  "Свет души",
	[232542] =  "Залежи руды Черной горы",
	[221545] =  "Золотой лотос",
	[184845] =  "[Strange Pool]",
	[273528] =  "Военные припасы Легиона",
	[237402] =  "Горгрондская мухоловка",
	[202748] =  "Ливневая лоза",
	[232543] =  "Богатые залежи руды Черной горы",
	[202749] =  "Вуаль Азшары",
	[232544] =  "Залежи истинного железа",
	[248017] =  "Дымчатый лисоцвет",
	[221547] =  "Дурногриб",
	[237404] =  "Звездоцвет",
	[202750] =  "Цветущее сердце",
	[232545] =  "Богатые залежи истинного железа",
	[248018] =  "Кустистый лисоцвет",
	[221548] =  "Косяк бриллиантового данио",
	[240346] =  "Побег оливы",
	[202751] =  "Сумеречный жасмин",
	[273535] =  "Военные припасы Легиона",
	[272768] =  "Залежи эмпиреита",
	[221549] =  "[Redbelly Mandarin School]",
	[237406] =  "Награндский стрелоцвет",
	[202752] =  "Хлыстохвост",
	[248020] =  "Радужный айтрил",
	[11713] =  "Мертвянка",
	[235105] =  "Благословленный солнцем сундук",
	[142140] =  "Лиловый лотос",
	[181270] =  "Сквернопля",
	[142141] =  "Слезы Артаса",
	[188432] =  "Черная кровь Йогг-Сарона",
	[248022] =  "Кустистый айтрил",
	[1610] =  "Ароматитовая жила",
	[142142] =  "Солнечник",
	[248023] =  "Живой грезолист",
	[1618] =  "Мироцвет",
	[1619] =  "Земляной корень",
	[1620] =  "Магороза",
	[142143] =  "Пастушья сумка",
	[171938] =  "Плод кактуса",
	[1623] =  "Дикий сталецвет",
	[1624] =  "Королевская кровь",
	[272778] =  "Богатые залежи эмпиреита",
	[185877] =  "Залежи хаотита",
	[1628] =  "Могильный мох",
	[123309] =  "Покрытые слизью залежи истинного серебра",
	[235365] =  "Сундук адмирала Тейлора",
	[247897] =  "Опаленный фьярнскаггл",
	[272780] =  "Пласт эмпиреита",
	[142145] =  "Кровь Грома",
	[181275] =  "Кисейница",
	[205060] =  "Чумная поросль",
	[211454] =  "Куст кафа'коту",
	[123310] =  "Покрытые слизью мифриловые залежи",
	[181276] =  "Огненный зев",
	[248027] =  "Ветвистый фьярнскаггл",
	[247388] =  "Цветущий лисоцвет",
	[201737] =  "Бутон цветка",
	[206085] =  "Мерзлая трава",
	[189973] =  "Золотой клевер",
	[206597] =  "Ящик Сумеречного Молота",
	[181278] =  "Древний лишайник",
	[268440] =  "Археологическая находка высокорожденных",
	[248029] =  "Пахучий фьярнскаггл",
	[181279] =  "Пустоцвет",
	[248030] =  "Буйная звездная роза",
	[209284] =  "Темноцвет",
	[181280] =  "Ползучий кошмарник",
	[248031] =  "Радужная звездная роза",
	[181281] =  "Манаполох",
	[247904] =  "Залежи яркого силового камня",
	[248032] =  "Искрящаяся звездная роза",
	[181665] =  "Погребальный сундук",
	[247905] =  "Залежи теплого силового камня",
	[188699] =  "Странная руда",
	[273052] =  "Покрытая Скверной трава",
	[189978] =  "Залежи кобальта",
	[273053] =  "Пучок покрытой Скверной травы",
	[247906] =  "Залежи пылающего силового камня",
	[179493] =  "Замшелый сундучок",
	[189979] =  "Богатые залежи кобальта",
	[268451] =  "Археологическая находка демонов",
	[241641] =  "Лисоцвет",
	[247907] =  "Огромные залежи силового камня",
	[179494] =  "Проломленный сундучок",
	[189980] =  "Залежи саронита",
	[268453] =  "Археологическая находка высокорожденных",
	[211719] =  "Лиловый лимон",
	[235376] =  "Морозноцвет",
	[247908] =  "Залежи светящегося силового камня",
	[1723] =  "Гриб Грязного Рыла",
	[237295] =  "Косяк жирных морских скорпионов",
	[247909] =  "Залежи мягкого силового камня",
	[175404] =  "Богатая ториевая жила",
	[253280] =  "Пласт силового камня",
	[1731] =  "Медная жила",
	[1732] =  "Оловянная жила",
	[1733] =  "Серебряная жила",
	[1734] =  "Золотая жила",
	[1735] =  "Залежи железа",
	[247910] =  "Залежи мелкозернистого силового камня",
	[184740] =  "Плетеный ларец",
	[247911] =  "Залежи заряженного силового камня",
	[179498] =  "Сундучок Алого ордена",
	[184741] =  "Проломленный сундучок",
	[182951] =  "Чистая вода",
	[243564] =  "Корзина сухих трав",
	[247912] =  "Залежи исключительного силового камня",
	[218629] =  "Блестящая нефритовая двоякодышащая рыба",
	[182952] =  "Обломки парового насоса",
	[252772] =  "Кусок древней маны",
	[247913] =  "Залежи великолепного силового камня",
	[218630] =  "Большой косяк блестящей нефритовой двоякодышащей рыбы",
	[182953] =  "Косяк спороуса",
	[210958] =  "Обнажение пласта хризоберила",
	[268466] =  "Археологическая находка демонов",
	[186662] =  "Мешочек с реагентами",
	[218631] =  "Косяк испуганноого веслоноса",
	[182954] =  "Косяк морской рыбы",
	[252774] =  "Кристалл древней маны",
	[210959] =  "Обнажение пласта хризоберила",
	[247915] =  "Залежи поразительного силового камня",
	[218632] =  "Большой косяк испуганного веслоноса",
	[243312] =  "Богатые залежи руды Черной горы",
	[210960] =  "Обнажение пласта хризоберила",
	[247916] =  "Залежи древнего силового камня",
	[218633] =  "Разъяренный хмелем императорский лосось",
	[243313] =  "Залежи руды Черной горы",
	[181166] =  "Кровопийка",
	[203800] =  "Бочка с рыбой из канала",
	[247917] =  "Залежи темного силового камня",
	[180655] =  "Плавающий мусор",
	[218634] =  "Большой косяк разъяренного хмелем императорского лосося",
	[182957] =  "Смешанный косяк нагорья",
	[202778] =  "Косяк слепоглазок-альбиносов",
	[247918] =  "[Stormy Leystone Deposit]",
	[211474] =  "Солнечный ползун",
	[182958] =  "Косяк ильной рыбы",
	[235387] =  "Пламецвет",
	[202779] =  "Косяк илистого чернобрюха",
	[181680] =  "Гриб-сухошляпка",
	[218636] =  "Большой косяк илистого тигрового гурами",
	[182959] =  "Косяк луфаря",
	[235388] =  "Горгрондская мухоловка",
	[202780] =  "Стайка саженного угря",
	[180658] =  "Косяк загадочной рыбы",
	[194213] =  "Зимний гиацинт",
	[235389] =  "Звездоцвет",
	[175928] =  "Огненная агава",
	[235390] =  "Награндский стрелоцвет",
	[181555] =  "Залежи оскверненного железа",
	[214547] =  "[Shipwreck Debris]",
	[235135] =  "Контрабандные апекситовые артефакты",
	[273439] =  "Древний эредарский тайник",
	[202655] =  "Тролльская археологическая находка",
	[2653] =  "Малое месторождение кровавого камня",
	[247923] =  "Залежи потемневшего сланца Скверны",
	[181556] =  "Залежи адамантита",
	[273414] =  "Древний эредарский тайник",
	[191019] =  "Язык аспида",
	[271554] =  "Потайной сундук змееустов",
	[273407] =  "Древний эредарский тайник",
	[273301] =  "Древний эредарский тайник",
	[273538] =  "Военные припасы Легиона",
	[247924] =  "Залежи горючего сланца Скверны",
	[181557] =  "Кориевая жила",
	[180662] =  "Разбитая шхуна",
	[273533] =  "Военные припасы Легиона",
	[273527] =  "Военные припасы Легиона",
	[246518] =  "Отсыревший сундук",
	[272771] =  "Эредарские военные припасы",
	[272770] =  "Эредарские военные припасы",
	[247925] =  "Залежи тяжелого сланца Скверны",
	[221541] =  "Триллиевая жила",
	[271849] =  "Эредарские военные припасы",
	[277637] =  "Тронутый Бездной тайник",
	[208540] =  "Магмолия",
	[273443] =  "Тронутый Бездной тайник",
	[271227] =  "Скрытый тайник змееуста",
	[192556] =  "Пещерный гриб",
	[252408] =  "Осколок древней маны",
	[260495] =  "Пыльца силоцвета",
	[186648] =  "Сундучок Хазлека",
	[233715] =  "Трофеи Золотопалого",
	[248011] =  "Зверобой Скверны",
	[153468] =  "Окованный мифрилом большой сундук",
	[179496] =  "Проломленный сундучок",
	[176189] =  "Скелет морской черепахи",
	[20691] =  "Сундучок Коззла",
	[205089] =  "Семечко колкополоха",
	[255344] =  "Пласт сланца Скверны",
	[192046] =  "Косяк ракушечного подкаменщика",
	[179491] =  "Затопленный сундучок",
	[179488] =  "Побитый сундучок",
	[179487] =  "Затопленный сундучок",
	[179486] =  "Побитый сундучок",
	[208816] =  "Канализационный гриб",
	[207734] =  "Лужа огня",
	[218651] =  "Большой косяк пораженной ша иглоспинки",
	[252404] =  "Зверобой Скверны",
	[243325] =  "Косяк бешенки-сквернорота",
	[182127] =  "Оскверненный цветок",
	[243314] =  "Залежи истинного железа",
	[218653] =  "Большой косяк сверкающего бриллиантового данио",
	[218635] =  "Илистый тигровый гурами",
	[248019] =  "Живой айтрил",
	[209311] =  "Залежи призрачного железа",
	[192048] =  "Косяк дракоперой рыбы-ангела",
	[208544] =  "Магмолия",
	[209952] =  "Нефритовая Луна",
	[181271] =  "Сияние грез",
	[243315] =  "Богатые залежи истинного железа",
	[228493] =  "Залежи истинного железа",
	[248026] =  "Ароматный грезолист",
	[209312] =  "Залежи кипарита",
	[192049] =  "Косяк клыкозубой сельди",
	[234105] =  "Археологическая находка араккоа",
	[247958] =  "Ядро серного разрушителя",
	[321] =  "Слеза Тиллоа",
	[186423] =  "Ведьмина погибель",
	[210080] =  "Бочонок шелковицы",
	[2042] =  "Бледнолист",
	[209313] =  "Триллиевая жила",
	[192050] =  "Косяк ледникового лосося",
	[205099] =  "Свирепый погибельник",
	[202736] =  "Залежи обсидиана",
	[209825] =  "Гриб Приливных Туманов",
	[248024] =  "Радужный грезолист",
	[202737] =  "Залежи колчедана",
	[192818] =  "Странный гриб",
	[246811] =  "Археологическая находка высокорожденных",
	[192051] =  "Косяк борейского медузника",
	[248025] =  "Кустистый грезолист",
	[202738] =  "Элементиевая жила",
	[181277] =  "Терошишка",
	[235391] =  "Таладорская орхидея",
	[209059] =  "Кровавая крапива",
	[180901] =  "Обломки кораблекрушения Кровавого Паруса",
	[202739] =  "Громадный кусок обсидиана",
	[192052] =  "Косяк королевского морского дьявола",
	[236169] =  "Драгоценный кристалл",
	[206764] =  "Изумрудный мерцающий гриб",
	[205423] =  "Колокольчики банши",
	[248028] =  "Колючий фьярнскаггл",
	[206706] =  "Плачущая фиалка",
	[248008] =  "Зверобой Скверны",
	[180685] =  "Плавающие обломки",
	[192053] =  "Косяк глубоководного чуда-юда",
	[206503] =  "Молельник",
	[211174] =  "Археологическая находка могу",
	[188345] =  "Мерцающие снежные грибы",
	[182956] =  "Косяк ершей",
	[228575] =  "Награндский стрелоцвет",
	[218648] =  "Стайный краснобрюхий окунь",
	[234106] =  "Археологическая находка огров",
	[192054] =  "Косяк лунной каракатицы",
	[185881] =  "Куст пустопраха",
	[218649] =  "Большой косяк стайного краснобрюхого окуня",
	[244774] =  "Айтрил",
	[191543] =  "Ящик Алого Натиска",
	[247936] =  "[Coarse Leystone Outcropping]",
	[181569] =  "Богатые залежи адамантита",
	[228572] =  "Пламецвет",
	[269278] =  "Покрытая Скверной трава",
	[208551] =  "Чертопоротник",
	[218650] =  "Пораженная ша иглоспинка",
	[210538] =  "Вечноцвет",
	[228991] =  "Ледоцвет",
	[247937] =  "Обнажение пласта сияющего силового камня",
	[181570] =  "Богатые залежи адамантита",
	[176583] =  "Золотой сансам",
	[209836] =  "Свежеопавшие лепестки",
	[243334] =  "Высохшая трава",
	[208878] =  "\"Волшебный\" грибочек",
	[248010] =  "Зверобой Скверны",
	[202747] =  "Пепельник",
	[247938] =  "Обнажение пласта блестящего силового камня",
	[218652] =  "Косяк сверкающего бриллиантового данио",
	[176584] =  "Снолист",
	[192057] =  "Стайка медуз",
	[226967] =  "Косяк рыбы",
	[123330] =  "Сейф буканьера",
	[205367] =  "Аконит",
	[209328] =  "Богатые залежи призрачного железа",
	[247939] =  "Обнажение пласта лучистого силового камня",
	[204282] =  "Дворфийская археологическая находка",
	[243562] =  "Ящик кадгарова уса",
	[216610] =  "Красарангское железо",
	[176753] =  "Погибельник",
	[229067] =  "Косяк безротого скрытиуса",
	[212902] =  "Затвердевший янтарь",
	[202776] =  "Косяк горной форели",
	[247940] =  "Обнажение пласта закаленного силового камня",
	[202777] =  "Косяк высокогорных гуппи",
	[176586] =  "Горный серебряный шалфей",
	[192059] =  "Косяк ледоспинки",
	[247914] =  "Залежи превосходного силового камня",
	[202741] =  "Богатая элементиевая жила",
	[189981] =  "Богатые залежи саронита",
	[1617] =  "Сребролист",
	[247941] =  "Обнажение пласта плотного силового камня",
	[192827] =  "Полевая горчица",
	[176587] =  "Печаль-трава",
	[214510] =  "Пораженная ша трава",
	[228563] =  "Залежи руды Черной горы",
	[272782] =  "Астральный вьюнок",
	[1621] =  "Остротерн",
	[226521] =  "Археологическая находка дренорских кланов",
	[247942] =  "Обнажение пласта изначального силового камня",
	[192828] =  "Морковь из леса Хрустальной Песни",
	[176588] =  "Ледяной зев",
	[1622] =  "Синячник",
	[191133] =  "Залежи титана",
	[228564] =  "Богатые залежи руды Черной горы",
	[190399] =  "Гриб-дурман",
	[176589] =  "Черный лотос",
	[201738] =  "Бутон цветка",
	[182599] =  "Телаарский папоротник",
	[175566] =  "Мракоцвет",
	[211721] =  "Лиловый лимон",
	[142144] =  "Призрачная поганка",
	[271850] =  "Эредарские военные припасы",
	[268450] =  "Археологическая находка тауренов Крутогорья",
	[247988] =  "Пласт необработанного силового камня",
	[216227] =  "Древесный корень",
	[182600] =  "Клюква",
	[180682] =  "Косяк масляного черноротика",
	[247607] =  "Цветущий фьярнскаггл",
	[202421] =  "Ксавренов терн",
	[234449] =  "Сокровища изгоев",
	[248009] =  "Зверобой Скверны",
	[228573] =  "Горгрондская мухоловка",
	[202754] =  "Можжевеловые ягоды",
	[182601] =  "Корень олембы",
	[180683] =  "Косяк огнеперого луциана",
	[194100] =  "Медвежья лапка",
	[202422] =  "Стебель кабачкового цвета",
	[210537] =  "Вечноцвет",
	[187333] =  "Куст Кровяники",
	[210209] =  "Императорский лотос",
	[13874] =  "Змеецвет",
	[235095] =  "Перепутанный свиток",
	[180684] =  "Косяк большого шалфокуня",
	[206387] =  "Ведро для воды",
	[216764] =  "Косяк шалфокуня",
	[181068] =  "Маленький кусочек обсидиана",
	[186729] =  "Манаягодник",
	[230428] =  "Дымящиеся залежи истинного железа",
	[228510] =  "Богатые залежи истинного железа",
	[181894] =  "Поганка конусовидная",
	[209329] =  "Богатые залежи кипарита",
	[245324] =  "Богатые залежи силового камня",
	[191303] =  "Огница",
	[247960] =  "Ядро серного разрушителя",
}
