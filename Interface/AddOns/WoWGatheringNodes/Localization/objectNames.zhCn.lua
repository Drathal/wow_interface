-- Please use the Localization App on WoWAce to Update this
-- https://wow.curseforge.com/projects/wowgatheringnodes/localization

if GetLocale() ~= zhCn then return; end
local WoWGatheringNodes = LibStub("AceAddon-3.0"):GetAddon("WoWGatheringNodes")
local L = LibStub("AceLocale-3.0"):NewLocale("WoWGatheringNodes", "zhCn")
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
	[181069] =  "大型黑曜石碎块",
	[2040] =  "秘银矿脉",
	[2041] =  "活根草",
	[209330] =  "富延极矿脉",
	[2043] =  "卡德加的胡须",
	[2044] =  "龙齿草",
	[2045] =  "荆棘藻",
	[2046] =  "金棘草",
	[2047] =  "真银矿石",
	[201914] =  "月叶",
	[216620] =  "丛林啤酒花",
	[182606] =  "龙脊草",
	[218539] =  "一大群迁徙的八爪鱼",
	[209460] =  "藤鞭",
	[233117] =  "寒霜草",
	[182095] =  "爆顶蘑菇",
	[188489] =  "红玉丁香",
	[2084] =  "麝鼠根",
	[209461] =  "藤鞭",
	[123848] =  "软泥覆盖的瑟银矿脉",
	[208311] =  "深海鼠尾鱼群",
	[209462] =  "藤鞭",
	[247697] =  "[Odious Felslate Outcropping]",
	[209974] =  "[Barrel of Slickies]",
	[209463] =  "藤鞭",
	[247698] =  "[Shattered Felslate Seam]",
	[253069] =  "[Blacker Lotus]",
	[247699] =  "[Primordial Felslate Deposit]",
	[246804] =  "[Highmountain Tauren Archaeology Find]",
	[203071] =  "暗夜精灵考古发现",
	[208442] =  "蓝根藤",
	[237342] =  "狂野水虎鱼群",
	[190540] =  "大块的萨隆邪铁",
	[247956] =  "[Brimstone Destroyer Core]",
	[247957] =  "[Brimstone Destroyer Core]",
	[273412] =  "[Ancient Eredar Cache]",
	[208828] =  "[Corpse Worm Mound]",
	[203969] =  "仙人掌果",
	[13891] =  "毒蛇花",
	[188113] =  "冰莓灌木丛",
	[273415] =  "[Ancient Eredar Cache]",
	[247959] =  "[Brimstone Destroyer Core]",
	[3239] =  "[Benedict's Chest]",
	[185557] =  "上古宝石矿脉",
	[260492] =  "[Glowing Tome]",
	[247961] =  "[Brimstone Destroyer Core]",
	[260493] =  "[Mana-Infused Gem]",
	[211517] =  "盘根藤",
	[183385] =  "红色木槿",
	[247962] =  "[Brimstone Destroyer Core]",
	[203078] =  "蛛魔考古发现",
	[260494] =  "[Twice-Fortified Arcwine]",
	[211518] =  "盘根藤",
	[216761] =  "混合海鱼群",
	[208833] =  "[Stillwater Lily]",
	[246812] =  "[Demonic Archaeology Find]",
	[247963] =  "[Brimstone Destroyer Core]",
	[184793] =  "[Primitive Chest]",
	[247964] =  "[Brimstone Destroyer Core]",
	[234154] =  "[Misplaced Scrolls]",
	[247965] =  "[Brimstone Destroyer Core]",
	[234155] =  "[Relics of the Outcasts]",
	[209987] =  "入梦叶树丛",
	[247966] =  "[Brimstone Destroyer Core]",
	[260498] =  "[Leypetal Blossom]",
	[247967] =  "[Brimstone Destroyer Core]",
	[209349] =  "绿茶叶",
	[211779] =  "茅草",
	[175207] =  "[Beached Sea Creature]",
	[212163] =  "帝王鲑鱼群",
	[209350] =  "柔丝草",
	[190169] =  "卷丹",
	[185182] =  "[Nethervine Crystal]",
	[247969] =  "[Brimstone Destroyer Core]",
	[209351] =  "雪百合",
	[190170] =  "塔兰德拉的玫瑰",
	[202702] =  "石花",
	[247075] =  "分泌的蜡滴",
	[190171] =  "巫妖花",
	[237357] =  "富真铁矿脉",
	[202703] =  "苦寒之花",
	[244774] =  "[Aethril]",
	[203982] =  "秋葵",
	[209353] =  "雨粟花",
	[190172] =  "冰棘草",
	[237358] =  "真铁矿脉",
	[244775] =  "[Dreamleaf]",
	[209354] =  "黄金莲",
	[17282] =  "草药",
	[190173] =  "冰冷的草药",
	[237359] =  "黑石矿脉",
	[244776] =  "[Dreamleaf]",
	[209355] =  "愚人菇",
	[237360] =  "富黑石矿脉",
	[244777] =  "[Fjarnskaggl]",
	[212169] =  "巨型螳螂虾群",
	[225596] =  "[Prickly Nopal]",
	[180712] =  "石鳞鳗群",
	[190175] =  "冰冷的草药",
	[244778] =  "[Starlight Rose]",
	[177388] =  "[Ooze Covered Rich Thorium Vein]",
	[190176] =  "雪莲花",
	[212171] =  "翠绿肺鱼群",
	[195036] =  "[Pure Saronite Deposit]",
	[212172] =  "卡桑琅白鲟鱼群",
	[218950] =  "螳螂妖考古发现",
	[212174] =  "八爪鱼群",
	[207187] =  "兽人考古发现",
	[247340] =  "[Crude Leystone Seam]",
	[212175] =  "虎皮丝足鱼群",
	[207188] =  "德莱尼考古发现",
	[211025] =  "金火兰",
	[207189] =  "[Vrykul Archaeology Find]",
	[212177] =  "刺皮鱼群",
	[207190] =  "托维尔考古发现",
	[182127] =  "被污染的花朵",
	[244786] =  "[Felwort]",
	[251181] =  "[Azure Ore]",
	[203228] =  "千针石林燃铁矿",
	[269887] =  "[Fel-Encrusted Herb Cluster]",
	[181108] =  "[Truesilver Deposit]",
	[247987] =  "[Brilliant Leystone Seam]",
	[184689] =  "德拉诺晶体",
	[218576] =  "一大群混乱的巨型螳螂虾群",
	[226888] =  "[Aruunem Berry Bush]",
	[247988] =  "[Raw Leystone Seam]",
	[218577] =  "混乱的巨型螳螂虾群",
	[247605] =  "[Flourishing Aethril]",
	[247989] =  "[Wild Leystone Seam]",
	[184691] =  "[Shadowmoon Tuber]",
	[141853] =  "紫色水生菇",
	[247606] =  "[Flourishing Dreamleaf]",
	[273222] =  "[Eredar War Supplies]",
	[272455] =  "[Eredar War Supplies]",
	[267596] =  "[Tar-Covered Fish]",
	[247607] =  "[Flourishing Fjarnskaggl]",
	[272456] =  "[Eredar War Supplies]",
	[211163] =  "熊猫人考古发现",
	[247352] =  "[Hard Leystone Deposit]",
	[247608] =  "[Flourishing Starlight Rose]",
	[241726] =  "[Leystone Deposit]",
	[205538] =  "带刺的臭根",
	[247865] =  "[Aqueous Aethril]",
	[229068] =  "塘鲈鱼群",
	[229069] =  "[Blind Lake Sturgeon School]",
	[181372] =  "地狱火刺叶",
	[229070] =  "熔火鱿鱼鱼群",
	[229071] =  "海蝎子鱼群",
	[208867] =  "闪光石子",
	[184443] =  "象牙铃笼草",
	[74447] =  "大型铁箍储物箱",
	[229072] =  "深渊大嘴鳗鱼群",
	[229073] =  "黑水鞭尾鱼群",
	[181248] =  "[Copper Vein]",
	[208997] =  "[Eternal Sunfruit]",
	[247999] =  "[Felwort]",
	[181249] =  "[Tin Vein]",
	[248000] =  "[Felwort]",
	[2866] =  "火焰花",
	[152094] =  "[Hyacinth Mushroom]",
	[211684] =  "爆烈花",
	[234446] =  "[Relics of the Outcasts]",
	[208999] =  "[Eternal Lunar Pear]",
	[248001] =  "[Felwort]",
	[152095] =  "[Moonpetal Lily]",
	[248002] =  "[Felwort]",
	[181891] =  "血蘑菇",
	[248003] =  "[Felwort]",
	[187902] =  "血孢心皮",
	[181892] =  "水生臭角菇",
	[268901] =  "[Felslate Spike]",
	[178184] =  "[Sapphire of Aku'Mai]",
	[248004] =  "[Felwort]",
	[181893] =  "致命孢子簇",
	[207724] =  "[Shipwreck Debris]",
	[208875] =  "莫高雷松果",
	[248005] =  "[Felwort]",
	[247366] =  "[Rough Leystone Outcropping]",
	[234451] =  "[Relics of the Outcasts]",
	[126049] =  "紫色蘑菇",
	[248006] =  "[Felwort]",
	[210539] =  "锦绣花",
	[203762] =  "多汁的苹果",
	[248007] =  "[Felwort]",
	[202740] =  "[Rich Pyrite Deposit]",
	[248008] =  "[Felwort]",
	[221538] =  "幽冥铁矿脉",
	[181897] =  "[Ysera's Tear]",
	[268911] =  "[Blood of Sargeras]",
	[234454] =  "[Relics of the Outcasts]",
	[241743] =  "[Felslate Deposit]",
	[236756] =  "[Oily Abyssal Gulper School]",
	[221539] =  "富幽冥铁矿脉",
	[247370] =  "[Brimstone Destroyer Core]",
	[165658] =  "黑铁矿脉",
	[237396] =  "炎火草",
	[234455] =  "[Relics of the Outcasts]",
	[201975] =  "焦油之花",
	[221540] =  "富延极矿脉",
	[207346] =  "月牙百合花",
	[245325] =  "[Rich Felslate Deposit]",
	[273519] =  "[Legion War Supplies]",
	[248011] =  "[Felwort]",
	[181644] =  "碧蓝金鱼草",
	[237398] =  "寒霜草",
	[206836] =  "化石考古发现",
	[273521] =  "[Legion War Supplies]",
	[248012] =  "[Felwort]",
	[221542] =  "绿茶叶",
	[273523] =  "[Legion War Supplies]",
	[228576] =  "塔拉多幽兰",
	[221543] =  "雨粟花",
	[180751] =  "漂浮的残骸",
	[273524] =  "[Legion War Supplies]",
	[205559] =  "[Rotberry Bush]",
	[237400] =  "塔拉多幽兰",
	[209907] =  "草甸金盏花",
	[221544] =  "柔丝草",
	[204281] =  "虫堆",
	[207734] =  "火池",
	[206839] =  "[The Light of Souls]",
	[232542] =  "黑石矿脉",
	[221545] =  "黄金莲",
	[204282] =  "矮人考古发现",
	[273528] =  "[Legion War Supplies]",
	[237402] =  "戈尔隆德捕蝇草",
	[202748] =  "风暴藤",
	[232543] =  "富黑石矿脉",
	[202749] =  "艾萨拉雾菇",
	[232544] =  "真铁矿脉",
	[248017] =  "[Wispy Foxflower]",
	[221547] =  "愚人菇",
	[237404] =  "烁星花",
	[202750] =  "心灵之花",
	[232545] =  "富真铁矿脉",
	[248018] =  "[Bushy Foxflower]",
	[221548] =  "珍宝斑马鱼群",
	[240346] =  "[Olive Sprig]",
	[202751] =  "暮光茉莉",
	[273535] =  "[Legion War Supplies]",
	[272768] =  "[Empyrium Deposit]",
	[221549] =  "[Redbelly Mandarin School]",
	[237406] =  "纳格兰箭叶花",
	[202752] =  "鞭尾草",
	[248020] =  "[Iridescent Aethril]",
	[11713] =  "[Death Cap]",
	[235105] =  "[Sun-Touched Cache]",
	[142140] =  "紫莲花",
	[181270] =  "魔草",
	[142141] =  "[Arthas' Tears]",
	[188432] =  "尤格-萨隆的黑血",
	[248022] =  "[Bushy Aethril]",
	[1610] =  "[Incendicite Mineral Vein]",
	[142142] =  "太阳草",
	[248023] =  "[Lively Dreamleaf]",
	[1618] =  "宁神花",
	[1619] =  "地根草",
	[1620] =  "魔皇草",
	[142143] =  "盲目草",
	[171938] =  "仙人掌果",
	[1623] =  "野钢花",
	[1624] =  "皇血草",
	[272778] =  "[Rich Empyrium Deposit]",
	[185877] =  "虚空矿脉",
	[1628] =  "墓地苔",
	[142144] =  "幽灵菇",
	[235365] =  "[Admiral Taylor's Coffer]",
	[247897] =  "[Singed Fjarnskaggl]",
	[272780] =  "[Empyrium Seam]",
	[142145] =  "格罗姆之血",
	[181275] =  "邪雾草",
	[205060] =  "疫病之团",
	[211454] =  "寇塔咔啡灌木丛",
	[123310] =  "[Ooze Covered Mithril Deposit]",
	[181276] =  "烈焰菇",
	[248027] =  "[Brambly Fjarnskaggl]",
	[247388] =  "[Flourishing Foxflower]",
	[181277] =  "泰罗果",
	[206085] =  "冰冷的草药",
	[189973] =  "金苜蓿",
	[206597] =  "暮光之锤板条箱",
	[201738] =  "初生的花朵",
	[268440] =  "[Highborne Archaeology Find]",
	[248029] =  "[Pungent Fjarnskaggl]",
	[181279] =  "虚空花",
	[248030] =  "[Lively Starlight Rose]",
	[209284] =  "暗色花",
	[181280] =  "噩梦藤",
	[248031] =  "[Iridescent Starlight Rose]",
	[181281] =  "法力蓟",
	[247904] =  "[Bright Leystone Deposit]",
	[248032] =  "[Sparkling Starlight Rose]",
	[181665] =  "[Burial Chest]",
	[247905] =  "[Warm Leystone Deposit]",
	[188699] =  "奇怪的矿石",
	[273052] =  "[Fel-Encrusted Herb]",
	[189978] =  "钴矿脉",
	[273053] =  "[Fel-Encrusted Herb Cluster]",
	[247906] =  "[Fiery Leystone Deposit]",
	[179493] =  "[Mossy Footlocker]",
	[189979] =  "富钴矿脉",
	[268451] =  "[Demonic Archaeology Find]",
	[241641] =  "[Foxflower]",
	[247907] =  "[Massive Leystone Deposit]",
	[179494] =  "[Dented Footlocker]",
	[189980] =  "萨隆邪铁矿脉",
	[268453] =  "[Highborne Archaeology Find]",
	[211719] =  "紫色香橼",
	[235376] =  "寒霜草",
	[247908] =  "[Glowing Leystone Deposit]",
	[1723] =  "泥头花",
	[237295] =  "[Oily Sea Scorpion School]",
	[247909] =  "[Smooth Leystone Deposit]",
	[175404] =  "富瑟银矿",
	[253280] =  "[Leystone Seam]",
	[1731] =  "铜矿",
	[1732] =  "锡矿",
	[1733] =  "银矿",
	[1734] =  "金矿石",
	[1735] =  "铁矿石",
	[247910] =  "[Fine Leystone Deposit]",
	[184740] =  "柳条箱",
	[247911] =  "[Charged Leystone Deposit]",
	[179498] =  "[Scarlet Footlocker]",
	[184741] =  "[Dented Footlocker]",
	[182951] =  "纯净的水",
	[243564] =  "[Basket of Dried Herbs]",
	[247912] =  "[Exquisite Leystone Deposit]",
	[218629] =  "闪光翠绿肺鱼",
	[182952] =  "蒸汽泵废料",
	[252772] =  "[Ancient Mana Chunk]",
	[247913] =  "[Magnificent Leystone Deposit]",
	[218630] =  "一大群闪光翠绿肺鱼",
	[182953] =  "孢子鱼群",
	[210958] =  "金绿玉矿苗",
	[247914] =  "[Superior Leystone Deposit]",
	[186662] =  "材料包",
	[218631] =  "一群恐慌的白鲟鱼",
	[182954] =  "魔尾鱼群",
	[252774] =  "[Ancient Mana Crystal]",
	[210959] =  "金绿玉矿苗",
	[247915] =  "[Striking Leystone Deposit]",
	[218632] =  "一大群恐慌的白鲟鱼",
	[243312] =  "富黑石矿脉",
	[210960] =  "金绿玉矿苗",
	[247916] =  "[Ancient Leystone Deposit]",
	[218633] =  "发酒疯的帝王鲑鱼",
	[234106] =  "[Ogre Archaeology Find]",
	[181166] =  "[Bloodthistle]",
	[203800] =  "一桶运河鱼",
	[247917] =  "[Dark Leystone Deposit]",
	[180655] =  "漂浮的碎片",
	[218634] =  "[Large Pool of Brew Frenzied Emperor Salmon]",
	[243314] =  "真铁矿脉",
	[202778] =  "白色洞穴鱼群",
	[247918] =  "[Stormy Leystone Deposit]",
	[211474] =  "日光爬行者",
	[182958] =  "泥鱼群",
	[235387] =  "炎火草",
	[202779] =  "黑腹泥鱼群",
	[181680] =  "枯顶蘑菇",
	[218636] =  "[Large Pool of Tiger Gourami Slush]",
	[182959] =  "蓝鱼群",
	[235388] =  "戈尔隆德捕蝇草",
	[202780] =  "深水鳗鱼群",
	[180658] =  "变异鱼群",
	[194213] =  "冬水仙",
	[235389] =  "烁星花",
	[175928] =  "[Incendia Agave]",
	[235390] =  "纳格兰箭叶花",
	[181555] =  "魔铁矿脉",
	[214547] =  "[Shipwreck Debris]",
	[235135] =  "[Smuggled Apexis Artifacts]",
	[277637] =  "[Void-Seeped Cache]",
	[235391] =  "塔拉多幽兰",
	[2653] =  "[Lesser Bloodstone Deposit]",
	[247923] =  "[Darkened Felslate Deposit]",
	[181556] =  "精金矿脉",
	[273443] =  "[Void-Seeped Cache]",
	[191019] =  "蛇信草",
	[271554] =  "[Veiled Wyrmtongue Chest]",
	[260495] =  "[Leypetal Powder]",
	[273538] =  "[Legion War Supplies]",
	[273533] =  "[Legion War Supplies]",
	[247924] =  "[Burning Felslate Deposit]",
	[181557] =  "氪金矿脉",
	[180662] =  "帆船残骸",
	[273527] =  "[Legion War Supplies]",
	[271227] =  "[Hidden Wyrmtongue Cache]",
	[246518] =  "[Waterlogged Chest]",
	[272771] =  "[Eredar War Supplies]",
	[272770] =  "[Eredar War Supplies]",
	[247925] =  "[Heavy Felslate Deposit]",
	[190399] =  "混乱毒菇",
	[271849] =  "[Eredar War Supplies]",
	[252408] =  "[Ancient Mana Shard]",
	[208540] =  "[Magmolia]",
	[273439] =  "[Ancient Eredar Cache]",
	[273414] =  "[Ancient Eredar Cache]",
	[192556] =  "洞穴蘑菇",
	[273407] =  "[Ancient Eredar Cache]",
	[273301] =  "[Ancient Eredar Cache]",
	[186648] =  "哈兹莱克的箱子",
	[233715] =  "[Goldtoe's Plunder]",
	[185881] =  "灵尘灌木丛",
	[153468] =  "[Large Mithril Bound Chest]",
	[179496] =  "被砸过的箱子",
	[176189] =  "[Skeletal Sea Turtle]",
	[20691] =  "考兹尔的箱子",
	[205089] =  "刺蓟之种",
	[255344] =  "[Felslate Seam]",
	[192046] =  "蚌背鱼群",
	[179491] =  "[Waterlogged Footlocker]",
	[179488] =  "破碎的提箱",
	[179487] =  "浸水的提箱",
	[179486] =  "破碎的提箱",
	[202747] =  "燃烬草",
	[218653] =  "一大群微光珍宝斑马鱼",
	[218648] =  "拥挤的红腹鳜鱼群",
	[252404] =  "[Felwort]",
	[243325] =  "魔口狂鱼群",
	[229067] =  "无颚潜鱼群",
	[180685] =  "浸水的残骸",
	[192052] =  "帝王鳐群",
	[248019] =  "[Lively Aethril]",
	[248024] =  "[Iridescent Dreamleaf]",
	[209311] =  "幽冥铁矿脉",
	[192048] =  "龙鳞天使鱼群",
	[208544] =  "[Magmolia]",
	[218635] =  "[Tiger Gourami Slush]",
	[181271] =  "梦露花",
	[202776] =  "高山鲑鱼群",
	[228493] =  "真铁矿脉",
	[123309] =  "[Ooze Covered Truesilver Deposit]",
	[209312] =  "凯帕琥珀矿脉",
	[192049] =  "利齿青鱼群",
	[209952] =  "玉月草",
	[184845] =  "[Strange Pool]",
	[205423] =  "[Banshee's Bells]",
	[186423] =  "除巫草",
	[210080] =  "桑葚桶",
	[247958] =  "[Brimstone Destroyer Core]",
	[209313] =  "延极矿脉",
	[192050] =  "冰河鲑鱼群",
	[216764] =  "鼠尾鱼群",
	[2042] =  "枯叶草",
	[209825] =  "潮雾菇",
	[210209] =  "霸王莲",
	[202736] =  "黑曜石碎块",
	[192818] =  "魔法蘑菇",
	[202619] =  "烈焰花丛",
	[192051] =  "北风水母群",
	[321] =  "蒂罗亚之泪",
	[191303] =  "火棘花",
	[181278] =  "远古苔",
	[202737] =  "燃铁矿脉",
	[209059] =  "血荨麻",
	[246811] =  "[Highborne Archaeology Find]",
	[248025] =  "[Bushy Dreamleaf]",
	[218650] =  "染煞刺皮鱼群",
	[236169] =  "可收获的珍贵水晶",
	[202738] =  "源质矿",
	[228991] =  "雪霜花",
	[248026] =  "[Fragrant Dreamleaf]",
	[202739] =  "巨型黑曜石石板",
	[324] =  "瑟银矿脉",
	[206764] =  "翡翠伞菇",
	[218651] =  "一大群染煞刺皮鱼",
	[206503] =  "祝祷之花",
	[248028] =  "[Prickly Fjarnskaggl]",
	[188345] =  "幽光雪菇",
	[202741] =  "富源质矿",
	[208816] =  "[Sewer Cap]",
	[192053] =  "[Deep Sea Monsterbelly School]",
	[234105] =  "[Arakkoa Archaeology Find]",
	[194100] =  "熊爪",
	[211174] =  "魔古考古发现",
	[182956] =  "金镖鱼群",
	[243313] =  "黑石矿脉",
	[191543] =  "[Scarlet Onslaught Trunk]",
	[247936] =  "[Coarse Leystone Outcropping]",
	[181569] =  "富精金矿脉",
	[218649] =  "[Large Pool of Crowded Redbelly Mandarin]",
	[269278] =  "[Fel-Encrusted Herb]",
	[208551] =  "[Lucifern]",
	[210537] =  "锦绣花",
	[13874] =  "毒蛇花",
	[210538] =  "锦绣花",
	[247937] =  "[Luminous Leystone Outcropping]",
	[181570] =  "富精金矿脉",
	[176583] =  "黄金参",
	[182957] =  "高地杂鱼群",
	[243334] =  "干枯的草药",
	[228575] =  "纳格兰箭叶花",
	[208878] =  "“魔法”蘑菇",
	[235095] =  "[Misplaced Scroll]",
	[247938] =  "[Gleaming Leystone Outcropping]",
	[202777] =  "高地孔雀鱼群",
	[176584] =  "梦叶草",
	[192057] =  "水母群",
	[226967] =  "[Lagoon Pool]",
	[123330] =  "海盗的保险箱",
	[218652] =  "微光珍宝斑马鱼",
	[180901] =  "血帆船只残骸",
	[247939] =  "[Radiant Leystone Outcropping]",
	[205367] =  "[Wolfsbane]",
	[211160] =  "新鲜仙鹤蛋",
	[216610] =  "卡桑利生铁",
	[202655] =  "巨魔考古发现",
	[176753] =  "[Doom Weed]",
	[212902] =  "固化琥珀",
	[186463] =  "龙尾草",
	[216227] =  "脆弱的根茎",
	[209328] =  "富幽冥铁矿脉",
	[176586] =  "山鼠草",
	[192059] =  "晶鳞鱼群",
	[243315] =  "富真铁矿脉",
	[186729] =  "魔法草莓",
	[189981] =  "富萨隆邪铁矿脉",
	[2714] =  "[Alterac Granite]",
	[247941] =  "[Dense Leystone Outcropping]",
	[192827] =  "野芥菜",
	[176587] =  "哀伤苔",
	[1617] =  "银叶草",
	[228563] =  "黑石矿脉",
	[272782] =  "[Astral Glory]",
	[1621] =  "石南草",
	[1622] =  "跌打草",
	[247942] =  "[Primal Leystone Outcropping]",
	[192828] =  "晶歌胡萝卜",
	[176588] =  "冰盖草",
	[191133] =  "泰坦神铁矿脉",
	[228564] =  "富黑石矿脉",
	[201737] =  "初生的花朵",
	[209836] =  "刚凋落的花瓣",
	[226521] =  "[Draenor Clans Archaeology Find]",
	[176589] =  "黑莲花",
	[182599] =  "塔拉蕨",
	[175566] =  "[Gloom Weed]",
	[206706] =  "悲泣的紫罗兰",
	[221541] =  "延极矿脉",
	[271850] =  "[Eredar War Supplies]",
	[268450] =  "[Highmountain Tauren Archaeology Find]",
	[214510] =  "染煞草药",
	[243562] =  "[Crate of Khadgar's Whiskers]",
	[182600] =  "沼泽莓",
	[180682] =  "黑口鱼群",
	[228572] =  "炎火草",
	[202421] =  "[Xavren's Thorn]",
	[234449] =  "[Relics of the Outcasts]",
	[202754] =  "杜松子",
	[228573] =  "戈尔隆德捕蝇草",
	[228574] =  "烁星花",
	[182601] =  "奥雷巴根须",
	[180683] =  "火鳞鳝鱼群",
	[247940] =  "[Hardened Leystone Outcropping]",
	[202422] =  "[Marrowpetal Stalk]",
	[268466] =  "[Demonic Archaeology Find]",
	[187333] =  "血莓灌木",
	[228571] =  "[Frostweed]",
	[205099] =  "[Ferocious Doomweed]",
	[248010] =  "[Felwort]",
	[180684] =  "大型鼠尾鱼群",
	[206387] =  "水桶",
	[248009] =  "[Felwort]",
	[181068] =  "小型黑曜石碎块",
	[211721] =  "紫色香橼",
	[230428] =  "[Smoldering True Iron Deposit]",
	[228510] =  "富真铁矿脉",
	[181894] =  "邪锥蘑菇",
	[209329] =  "富凯帕琥珀矿脉",
	[245324] =  "[Rich Leystone Deposit]",
	[192054] =  "[Moonglow Cuttlefish School]",
	[247960] =  "[Brimstone Destroyer Core]",
}

