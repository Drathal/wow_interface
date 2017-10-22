-- Please use the Localization App on WoWAce to Update this
-- https://wow.curseforge.com/projects/wowgatheringnodes/localization

if GetLocale() ~= koKr then return; end
local WoWGatheringNodes = LibStub("AceAddon-3.0"):GetAddon("WoWGatheringNodes")
local L = LibStub("AceLocale-3.0"):NewLocale("WoWGatheringNodes", "koKr")
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
	[181069] =  "커다란 흑요석 덩어리",
	[2040] =  "미스릴 광맥",
	[2041] =  "생명의 뿌리",
	[209330] =  "풍부한 트릴리움 광맥",
	[2043] =  "카드가의 수염",
	[2044] =  "용 송곳니",
	[2045] =  "갈래물풀",
	[2046] =  "황금가시",
	[2047] =  "진은 광맥",
	[201914] =  "달잎",
	[216620] =  "밀림 홉",
	[182606] =  "용가리통풀",
	[218539] =  "[Large Swarm of Migrated Reef Octopus]",
	[209460] =  "등나무 가지",
	[233117] =  "서리풀",
	[182095] =  "펑갓 버섯",
	[188489] =  "루비 라일락",
	[2084] =  "사향쥐 뿌리",
	[209461] =  "등나무 가지",
	[123848] =  "진흙으로 덮인 토륨 광맥",
	[208311] =  "심해 총명어 떼",
	[209462] =  "등나무 가지",
	[247697] =  "[Odious Felslate Outcropping]",
	[209974] =  "[Barrel of Slickies]",
	[209463] =  "등나무 가지",
	[247698] =  "[Shattered Felslate Seam]",
	[253069] =  "[Blacker Lotus]",
	[247699] =  "[Primordial Felslate Deposit]",
	[246804] =  "[Highmountain Tauren Archaeology Find]",
	[203071] =  "나이트 엘프 고고학 발굴품",
	[208442] =  "푸른뿌리 덩굴",
	[237342] =  "[Savage Piranha Pool]",
	[190540] =  "사로나이트 덩어리",
	[247956] =  "[Brimstone Destroyer Core]",
	[247957] =  "[Brimstone Destroyer Core]",
	[273412] =  "[Ancient Eredar Cache]",
	[208828] =  "시체 벌레 흙더미",
	[203969] =  "가시투성이 배",
	[13891] =  "불뱀꽃",
	[188113] =  "서리딸기 덤불",
	[273415] =  "[Ancient Eredar Cache]",
	[247959] =  "[Brimstone Destroyer Core]",
	[3239] =  "베네딕트의 상자",
	[185557] =  "고대 보석 광맥",
	[260492] =  "[Glowing Tome]",
	[247961] =  "[Brimstone Destroyer Core]",
	[260493] =  "[Mana-Infused Gem]",
	[211517] =  "덩굴타래",
	[183385] =  "핏빛 불상화",
	[247962] =  "[Brimstone Destroyer Core]",
	[203078] =  "네루비안 고고학 발굴품",
	[260494] =  "[Twice-Fortified Arcwine]",
	[211518] =  "덩굴타래",
	[216761] =  "각종 바닷물고기 떼",
	[208833] =  "청정 백합",
	[246812] =  "[Demonic Archaeology Find]",
	[247963] =  "[Brimstone Destroyer Core]",
	[184793] =  "구식 궤짝",
	[247964] =  "[Brimstone Destroyer Core]",
	[234154] =  "[Misplaced Scrolls]",
	[247965] =  "[Brimstone Destroyer Core]",
	[234155] =  "[Relics of the Outcasts]",
	[209987] =  "꿈잎사귀 덤불",
	[247966] =  "[Brimstone Destroyer Core]",
	[260498] =  "[Leypetal Blossom]",
	[247967] =  "[Brimstone Destroyer Core]",
	[209349] =  "녹차 잎",
	[211779] =  "마오 버들꽃",
	[175207] =  "떠내려온 바다 생물",
	[212163] =  "황제연어 떼",
	[209350] =  "비단풀",
	[190169] =  "참나리",
	[185182] =  "황천덩굴 수정",
	[247969] =  "[Brimstone Destroyer Core]",
	[209351] =  "눈 백합",
	[190170] =  "탈란드라의 장미",
	[202702] =  "바위꽃",
	[247075] =  "[Secreted Wax Glob]",
	[190171] =  "시체꽃",
	[237357] =  "[Rich True Iron Deposit]",
	[202703] =  "씀바귀",
	[186463] =  "용꼬리",
	[203982] =  "오크라",
	[209353] =  "빗방울 백일홍",
	[190172] =  "얼음가시",
	[237358] =  "[True Iron Deposit]",
	[244775] =  "[Dreamleaf]",
	[209354] =  "황금 연꽃",
	[17282] =  "배스랜모초",
	[190173] =  "얼어붙은 약초",
	[237359] =  "[Blackrock Deposit]",
	[244776] =  "[Dreamleaf]",
	[209355] =  "멍텅구리 모자 버섯",
	[237360] =  "[Rich Blackrock Deposit]",
	[244777] =  "[Fjarnskaggl]",
	[212169] =  "거대 사마귀 새우 떼",
	[225596] =  "[Prickly Nopal]",
	[180712] =  "돌비늘뱀장어 떼",
	[190175] =  "얼어붙은 약초",
	[244778] =  "[Starlight Rose]",
	[177388] =  "[Ooze Covered Rich Thorium Vein]",
	[190176] =  "서리 연꽃",
	[212171] =  "비취 폐어 떼",
	[195036] =  "[Pure Saronite Deposit]",
	[212172] =  "크라사랑 주걱철갑상어 떼",
	[218950] =  "사마귀 고고학 발굴품",
	[212174] =  "암초문어 떼",
	[207187] =  "오크 고고학 발굴품",
	[247340] =  "[Crude Leystone Seam]",
	[212175] =  "호랑이 구라미 떼",
	[207188] =  "드레나이 고고학 발굴품",
	[211025] =  "황금불 난초",
	[186729] =  "마나딸기 덤불",
	[212177] =  "가시고기 떼",
	[207190] =  "톨비르 고고학 발굴품",
	[182127] =  "오염된 꽃",
	[244786] =  "[Felwort]",
	[251181] =  "[Azure Ore]",
	[203228] =  "봉우리 철 황철석",
	[269887] =  "[Fel-Encrusted Herb Cluster]",
	[181108] =  "진은 광맥",
	[247987] =  "[Brilliant Leystone Seam]",
	[184689] =  "드레니시스트 광산 수정",
	[218576] =  "[Large Tangled Mantis Shrimp Cluster]",
	[226888] =  "아루넴 딸기 덤불",
	[247988] =  "[Raw Leystone Seam]",
	[218577] =  "[Tangled Mantis Shrimp Cluster]",
	[247605] =  "[Flourishing Aethril]",
	[247989] =  "[Wild Leystone Seam]",
	[184691] =  "[Shadowmoon Tuber]",
	[141853] =  "제비수염버섯",
	[247606] =  "[Flourishing Dreamleaf]",
	[273222] =  "[Eredar War Supplies]",
	[272455] =  "[Eredar War Supplies]",
	[267596] =  "[Tar-Covered Fish]",
	[247607] =  "[Flourishing Fjarnskaggl]",
	[272456] =  "[Eredar War Supplies]",
	[211163] =  "판다렌 고고학 발굴품",
	[247352] =  "[Hard Leystone Deposit]",
	[247608] =  "[Flourishing Starlight Rose]",
	[241726] =  "지맥석 광맥",
	[205538] =  "가시 악취뿌리",
	[247865] =  "[Aqueous Aethril]",
	[229068] =  "통통 망둑어 떼",
	[229069] =  "[Blind Lake Sturgeon School]",
	[181372] =  "지옥불 가시돌기",
	[229070] =  "화염 암모나이트 떼",
	[229071] =  "바다 전갈 떼",
	[208867] =  "반짝이는 돌",
	[184443] =  "상아 종꽃",
	[74447] =  "큰 철제 궤짝",
	[229072] =  "심연 풍선장어 떼",
	[229073] =  "검은바다 채찍꼬리 떼",
	[181248] =  "구리 광맥",
	[208997] =  "영원한 해과일",
	[247999] =  "[Felwort]",
	[181249] =  "주석 광맥",
	[248000] =  "[Felwort]",
	[2866] =  "화염초",
	[152094] =  "히아신스 버섯",
	[211684] =  "일촉즉발의 꽃",
	[234446] =  "[Relics of the Outcasts]",
	[208999] =  "영원한 달의 배",
	[248001] =  "[Felwort]",
	[152095] =  "[Moonpetal Lily]",
	[211174] =  "모구 고고학 발굴품",
	[181891] =  "피버섯",
	[248003] =  "[Felwort]",
	[187902] =  "핏빛포자 암술잎",
	[181892] =  "고린뿔물버섯",
	[268901] =  "[Felslate Spike]",
	[178184] =  "아쿠마이의 사파이어",
	[248004] =  "[Felwort]",
	[181893] =  "파멸의 버섯",
	[207724] =  "난파선 파편",
	[208875] =  "멀고어 솔방울",
	[248005] =  "[Felwort]",
	[247366] =  "[Rough Leystone Outcropping]",
	[234451] =  "추방자의 유물",
	[126049] =  "자홍버섯",
	[248006] =  "[Felwort]",
	[210539] =  "영원꽃",
	[203762] =  "과즙이 풍부한 사과",
	[248007] =  "[Felwort]",
	[202740] =  "풍부한 황철석 광맥",
	[228571] =  "서리풀",
	[221538] =  "유령무쇠 광맥",
	[181897] =  "이세라의 눈물",
	[268911] =  "[Blood of Sargeras]",
	[234454] =  "추방자의 유물",
	[241743] =  "지옥판암 광맥",
	[236756] =  "[Oily Abyssal Gulper School]",
	[221539] =  "풍부한 유령무쇠 광맥",
	[247370] =  "[Brimstone Destroyer Core]",
	[165658] =  "검은무쇠 광맥",
	[206706] =  "흐느끼는 제비꽃",
	[234455] =  "추방자의 유물",
	[201975] =  "타르꽃",
	[221540] =  "풍부한 트릴리움 광맥",
	[207346] =  "[Moonpetal Lily]",
	[245325] =  "[Rich Felslate Deposit]",
	[273519] =  "[Legion War Supplies]",
	[248011] =  "[Felwort]",
	[181644] =  "하늘금어초",
	[237398] =  "[Frostweed]",
	[206836] =  "화석 고고학 발굴품",
	[273521] =  "[Legion War Supplies]",
	[248012] =  "[Felwort]",
	[221542] =  "녹차 잎",
	[273523] =  "[Legion War Supplies]",
	[228576] =  "탈라도르 난초",
	[221543] =  "빗방울 백일홍",
	[180751] =  "표류하는 잔해",
	[273524] =  "[Legion War Supplies]",
	[205559] =  "썩은딸기 덤불",
	[237400] =  "[Talador Orchid]",
	[209907] =  "초원 금잔화",
	[221544] =  "비단풀",
	[204281] =  "벌레 더미",
	[207734] =  "불타는 웅덩이",
	[206839] =  "영혼의 빛",
	[232542] =  "검은바위 광맥",
	[221545] =  "[Golden Lotus]",
	[204282] =  "드워프 고고학 발굴품",
	[273528] =  "[Legion War Supplies]",
	[237402] =  "[Gorgrond Flytrap]",
	[202748] =  "폭풍덩굴",
	[232543] =  "[Rich Blackrock Deposit]",
	[202749] =  "아즈샤라의 신비",
	[232544] =  "순철 광맥",
	[248017] =  "[Wispy Foxflower]",
	[221547] =  "멍텅구리 모자 버섯",
	[237404] =  "[Starflower]",
	[202750] =  "심장꽃",
	[232545] =  "[Rich True Iron Deposit]",
	[248018] =  "[Bushy Foxflower]",
	[221548] =  "보석 열대어 떼",
	[240346] =  "[Olive Sprig]",
	[202751] =  "황혼의 말리꽃",
	[273535] =  "[Legion War Supplies]",
	[272768] =  "[Empyrium Deposit]",
	[221549] =  "[Redbelly Mandarin School]",
	[237406] =  "[Nagrand Arrowbloom]",
	[202752] =  "채찍꼬리",
	[248020] =  "[Iridescent Aethril]",
	[11713] =  "[Death Cap]",
	[235105] =  "[Sun-Touched Cache]",
	[142140] =  "보라 연꽃",
	[181270] =  "지옥풀",
	[142141] =  "아서스의 눈물",
	[188432] =  "요그사론의 검은피",
	[248022] =  "[Bushy Aethril]",
	[1610] =  "[Incendicite Mineral Vein]",
	[142142] =  "태양풀",
	[248023] =  "[Lively Dreamleaf]",
	[1618] =  "평온초",
	[1619] =  "뱀뿌리",
	[1620] =  "마법초",
	[142143] =  "실명초",
	[171938] =  "선인장 사과",
	[1623] =  "야생 철쭉",
	[1624] =  "왕꽃잎풀",
	[272778] =  "[Rich Empyrium Deposit]",
	[185877] =  "황천연 광맥",
	[1628] =  "무덤이끼",
	[142144] =  "유령버섯",
	[235365] =  "제독 테일러의 상자",
	[247897] =  "[Singed Fjarnskaggl]",
	[272780] =  "[Empyrium Seam]",
	[142145] =  "그롬의 피",
	[181275] =  "가림막이버섯",
	[205060] =  "역병 덩굴",
	[211454] =  "카파코타 덤불",
	[123310] =  "[Ooze Covered Mithril Deposit]",
	[181276] =  "불꽃송이",
	[248027] =  "[Brambly Fjarnskaggl]",
	[247388] =  "[Flourishing Foxflower]",
	[181277] =  "테로열매",
	[206085] =  "얼어붙은 약초",
	[189973] =  "황금토끼풀",
	[206597] =  "황혼의 망치단 상자",
	[201738] =  "피어나는 꽃송이",
	[268440] =  "[Highborne Archaeology Find]",
	[248029] =  "[Pungent Fjarnskaggl]",
	[181279] =  "황천꽃",
	[248030] =  "[Lively Starlight Rose]",
	[209284] =  "어둠꽃",
	[181280] =  "악몽의 덩굴",
	[248031] =  "[Iridescent Starlight Rose]",
	[181281] =  "마나 엉겅퀴",
	[247904] =  "[Bright Leystone Deposit]",
	[248032] =  "[Sparkling Starlight Rose]",
	[181665] =  "매장된 궤짝",
	[247905] =  "[Warm Leystone Deposit]",
	[188699] =  "괴상한 광석",
	[273052] =  "[Fel-Encrusted Herb]",
	[189978] =  "코발트 광맥",
	[273053] =  "[Fel-Encrusted Herb Cluster]",
	[247906] =  "[Fiery Leystone Deposit]",
	[179493] =  "이끼투성이 사물함",
	[189979] =  "풍부한 코발트 광맥",
	[268451] =  "[Demonic Archaeology Find]",
	[241641] =  "[Foxflower]",
	[247907] =  "[Massive Leystone Deposit]",
	[179494] =  "움푹 파인 사물함",
	[189980] =  "사로나이트 광맥",
	[180901] =  "붉은해적단 잔해",
	[211719] =  "유자 제비꽃",
	[235376] =  "서리풀",
	[247908] =  "[Glowing Leystone Deposit]",
	[189981] =  "풍부한 사로나이트 광맥",
	[237295] =  "기름투성이 바다 전갈 떼",
	[247909] =  "[Smooth Leystone Deposit]",
	[175404] =  "풍부한 토륨 광맥",
	[253280] =  "[Leystone Seam]",
	[1731] =  "구리 광맥",
	[1732] =  "주석 광맥",
	[1733] =  "은 광맥",
	[1734] =  "금 광맥",
	[1735] =  "철 광맥",
	[247910] =  "[Fine Leystone Deposit]",
	[184740] =  "고리버들 상자",
	[247911] =  "[Charged Leystone Deposit]",
	[179498] =  "붉은 사물함",
	[184741] =  "움푹 파인 사물함",
	[182951] =  "깨끗한 물",
	[243564] =  "[Basket of Dried Herbs]",
	[247912] =  "[Exquisite Leystone Deposit]",
	[218629] =  "[Glowing Jade Lungfish]",
	[182952] =  "증기 양수기 표류물",
	[252772] =  "[Ancient Mana Chunk]",
	[247913] =  "[Magnificent Leystone Deposit]",
	[218630] =  "[Large Pool of Glowing Jade Lungfish]",
	[182953] =  "포자물고기 떼",
	[210958] =  "묘안석 노출부",
	[268466] =  "[Demonic Archaeology Find]",
	[186662] =  "[Reagent Pouch]",
	[218631] =  "[Swarm of Panicked Paddlefish]",
	[182954] =  "강어귀 물고기 떼",
	[252774] =  "[Ancient Mana Crystal]",
	[210959] =  "묘안석 노출부",
	[247915] =  "[Striking Leystone Deposit]",
	[218632] =  "[Large Swarm of Panicked Paddlefish]",
	[243312] =  "풍부한 검은바위 광맥",
	[210960] =  "묘안석 노출부",
	[247916] =  "[Ancient Leystone Deposit]",
	[218633] =  "[Brew Frenzied Emperor Salmon]",
	[243313] =  "검은바위 광맥",
	[181166] =  "피엉겅퀴",
	[203800] =  "운하 물고기 통",
	[247917] =  "[Dark Leystone Deposit]",
	[180655] =  "표류하는 파편",
	[218634] =  "[Large Pool of Brew Frenzied Emperor Salmon]",
	[243314] =  "순철 광맥",
	[202778] =  "백색 동굴어 떼",
	[247918] =  "[Stormy Leystone Deposit]",
	[211474] =  "태양충",
	[182958] =  "미꾸라지 떼",
	[235387] =  "불꽃풀",
	[202779] =  "검은배 미꾸라지 떼",
	[181680] =  "마른고깔버섯",
	[218636] =  "[Large Pool of Tiger Gourami Slush]",
	[182959] =  "게르치 떼",
	[235388] =  "[Gorgrond Flytrap]",
	[202780] =  "심연 뱀장어 떼",
	[180658] =  "돌연변이 물고기 떼",
	[194213] =  "겨울 히아신스",
	[235389] =  "별꽃",
	[175928] =  "[Incendia Agave]",
	[235390] =  "나그란드 화살꽃",
	[181555] =  "지옥무쇠 광맥",
	[214547] =  "[Shipwreck Debris]",
	[235135] =  "밀수한 에펙시스 유물",
	[277637] =  "[Void-Seeped Cache]",
	[235391] =  "탈라도르 난초",
	[2653] =  "[Lesser Bloodstone Deposit]",
	[247923] =  "[Darkened Felslate Deposit]",
	[181556] =  "아다만타이트 광맥",
	[273443] =  "[Void-Seeped Cache]",
	[191019] =  "얼레지 꽃",
	[271554] =  "[Veiled Wyrmtongue Chest]",
	[260495] =  "[Leypetal Powder]",
	[273538] =  "[Legion War Supplies]",
	[273533] =  "[Legion War Supplies]",
	[247924] =  "[Burning Felslate Deposit]",
	[181557] =  "코륨 광맥",
	[180662] =  "범선 잔해",
	[273527] =  "[Legion War Supplies]",
	[272771] =  "[Eredar War Supplies]",
	[246518] =  "[Waterlogged Chest]",
	[272770] =  "[Eredar War Supplies]",
	[221541] =  "트릴리움 광맥",
	[247925] =  "[Heavy Felslate Deposit]",
	[271849] =  "[Eredar War Supplies]",
	[252408] =  "[Ancient Mana Shard]",
	[273439] =  "[Ancient Eredar Cache]",
	[208540] =  "용암목련",
	[273414] =  "[Ancient Eredar Cache]",
	[273407] =  "[Ancient Eredar Cache]",
	[192556] =  "동굴 버섯",
	[273301] =  "[Ancient Eredar Cache]",
	[271227] =  "숨겨진 고룡혓바닥 보관함",
	[186648] =  "하즐렉의 상자",
	[233715] =  "[Goldtoe's Plunder]",
	[185881] =  "황천티끌 덤불",
	[153468] =  "[Large Mithril Bound Chest]",
	[179496] =  "움푹 파인 사물함",
	[176189] =  "[Skeletal Sea Turtle]",
	[20691] =  "코즐의 사물함",
	[205089] =  "따끔엉겅퀴 씨앗",
	[255344] =  "지옥판암 융기",
	[192046] =  "조개등 둑중개 떼",
	[179491] =  "흠뻑 젖은 사물함",
	[179488] =  "찌그러진 사물함",
	[179486] =  "찌그러진 사물함",
	[179487] =  "흠뻑 젖은 사물함",
	[218652] =  "희미하게 빛나는 보석 열대어 떼",
	[218635] =  "[Tiger Gourami Slush]",
	[184845] =  "[Strange Pool]",
	[252404] =  "[Felwort]",
	[243325] =  "지옥아귀 광포어 떼",
	[247940] =  "[Hardened Leystone Outcropping]",
	[1723] =  "진흙주둥이꽃",
	[248002] =  "[Felwort]",
	[181278] =  "고대 이끼",
	[248019] =  "[Lively Aethril]",
	[209311] =  "유령무쇠 광맥",
	[192048] =  "용지느러미 천사돔 떼",
	[208544] =  "용암목련",
	[218651] =  "[Large Pool of Sha-Touched Spinefish]",
	[123309] =  "[Ooze Covered Truesilver Deposit]",
	[181271] =  "꿈초롱이",
	[228493] =  "순철 광맥",
	[243315] =  "[Rich True Iron Deposit]",
	[209312] =  "키파라이트 광맥",
	[192049] =  "송곳니 청어 떼",
	[202747] =  "재투성이꽃",
	[209952] =  "달비취",
	[2714] =  "[Alterac Granite]",
	[186423] =  "마녀독풀",
	[210080] =  "뽕잎 통",
	[247958] =  "[Brimstone Destroyer Core]",
	[209313] =  "트릴리움 광맥",
	[192050] =  "빙하연어 떼",
	[1622] =  "생채기풀",
	[2042] =  "미명초잎",
	[209825] =  "파도안개 버섯",
	[205099] =  "가혹한 죽음풀",
	[202736] =  "흑요암 광맥",
	[192818] =  "마력 깃든 버섯",
	[321] =  "틸로아의 눈물",
	[192051] =  "북풍 해파리 떼",
	[191303] =  "화염가시풀",
	[202737] =  "황철석 광맥",
	[246811] =  "[Highborne Archaeology Find]",
	[248025] =  "[Bushy Dreamleaf]",
	[209059] =  "핏방울 쐐기풀",
	[202738] =  "엘레멘티움 광맥",
	[228991] =  "서리꽃",
	[218650] =  "샤에 물든 가시고기 떼",
	[236169] =  "채취 가능한 희귀 수정",
	[248026] =  "[Fragrant Dreamleaf]",
	[192052] =  "황제 쥐가오리 떼",
	[202739] =  "풍부한 흑요암 광맥",
	[324] =  "작은 토륨 광맥",
	[206764] =  "에메랄드 눈꽃버섯",
	[205423] =  "귀곡령 종꽃",
	[192053] =  "깊은 바다 뚱뚱보물고기 떼",
	[206503] =  "기원의 꽃",
	[248028] =  "[Prickly Fjarnskaggl]",
	[188345] =  "희미하게 빛나는 눈꽃버섯",
	[182956] =  "황금 화살고기 떼",
	[202741] =  "풍부한 엘레멘티움 광맥",
	[228575] =  "나그란드 화살꽃",
	[234105] =  "[Arakkoa Archaeology Find]",
	[194100] =  "곰발풀",
	[218648] =  "[Crowded Redbelly Mandarin]",
	[234106] =  "[Ogre Archaeology Find]",
	[202776] =  "산악 송어 떼",
	[191543] =  "붉은돌격대 상자",
	[247936] =  "[Coarse Leystone Outcropping]",
	[181569] =  "풍부한 아다만타이트 광맥",
	[218649] =  "[Large Pool of Crowded Redbelly Mandarin]",
	[269278] =  "[Fel-Encrusted Herb]",
	[208551] =  "악마초",
	[210537] =  "영원꽃",
	[210538] =  "영원꽃",
	[244774] =  "에이트릴",
	[247937] =  "[Luminous Leystone Outcropping]",
	[181570] =  "풍부한 아다만타이트 광맥",
	[176583] =  "황금 산삼",
	[209836] =  "갓 떨어진 꽃잎",
	[243334] =  "시든 약초",
	[208878] =  "\"마법\" 버섯",
	[202777] =  "고원 송사리 떼",
	[218653] =  "희미하게 빛나는 보석 열대어 큰 떼",
	[247938] =  "[Gleaming Leystone Outcropping]",
	[202619] =  "화염꽃",
	[176584] =  "꿈풀",
	[192057] =  "해파리 떼",
	[226967] =  "[Lagoon Pool]",
	[123330] =  "해적의 금고",
	[208816] =  "하수구 버섯",
	[205367] =  "늑대잡이",
	[247939] =  "[Radiant Leystone Outcropping]",
	[209329] =  "풍부한 키파라이트 광맥",
	[268453] =  "[Highborne Archaeology Find]",
	[216610] =  "크라사리 철",
	[176753] =  "죽음풀",
	[229067] =  "무턱 모래무지 떼",
	[212902] =  "굳어진 호박석",
	[237396] =  "[Fireweed]",
	[216227] =  "부러질 듯한 뿌리",
	[202655] =  "트롤 고고학 발굴품",
	[176586] =  "은초롱이",
	[192059] =  "유리지느러미 송사리 떼",
	[182957] =  "고원의 물고기 떼",
	[180684] =  "대형 총명어 떼",
	[247914] =  "[Superior Leystone Deposit]",
	[243562] =  "[Crate of Khadgar's Whiskers]",
	[247941] =  "[Dense Leystone Outcropping]",
	[192827] =  "야생 겨자",
	[176587] =  "슬픔이끼",
	[13874] =  "불뱀꽃",
	[1617] =  "은엽수 덤불",
	[228563] =  "검은바위 광맥",
	[272782] =  "[Astral Glory]",
	[1621] =  "찔레가시",
	[247942] =  "[Primal Leystone Outcropping]",
	[192828] =  "수정노래 당근",
	[176588] =  "얼음송이",
	[191133] =  "티타늄 광맥",
	[228564] =  "풍부한 검은바위 광맥",
	[201737] =  "피어나는 꽃송이",
	[190399] =  "어리버섯",
	[226521] =  "[Draenor Clans Archaeology Find]",
	[176589] =  "검은 연꽃",
	[182599] =  "텔라아리 잎사귀",
	[175566] =  "어둠풀",
	[214510] =  "샤에 물든 약초",
	[248009] =  "[Felwort]",
	[271850] =  "[Eredar War Supplies]",
	[248024] =  "[Iridescent Dreamleaf]",
	[268450] =  "[Highmountain Tauren Archaeology Find]",
	[211160] =  "온전한 학 알",
	[182600] =  "늪딸기",
	[180682] =  "기름기 많은 아귀 떼",
	[228572] =  "불꽃풀",
	[202421] =  "자브렌의 가시",
	[234449] =  "[Relics of the Outcasts]",
	[248010] =  "[Felwort]",
	[228573] =  "고르그론드 파리지옥풀",
	[248008] =  "[Felwort]",
	[182601] =  "올렘바 뿌리",
	[180683] =  "불지느러미퉁돔 떼",
	[228574] =  "별꽃",
	[202422] =  "골수화 줄기",
	[207189] =  "[Vrykul Archaeology Find]",
	[187333] =  "선홍딸기 덤불",
	[210209] =  "황제의 연꽃",
	[235095] =  "[Misplaced Scroll]",
	[216764] =  "총명어 떼",
	[209328] =  "풍부한 유령무쇠 광맥",
	[206387] =  "물동이",
	[211721] =  "유자 제비꽃",
	[181068] =  "작은 흑요석 덩어리",
	[181894] =  "지옥방울버섯",
	[230428] =  "[Smoldering True Iron Deposit]",
	[228510] =  "풍부한 순철 광맥",
	[245324] =  "[Rich Leystone Deposit]",
	[180685] =  "물에 젖은 잔해",
	[192054] =  "달빛 오징어 떼",
	[247960] =  "[Brimstone Destroyer Core]",
	[202754] =  "노간주 열매",
}

