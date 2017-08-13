local addonName, addonTable = ...


--local Variables:
--Functions:

--Frames:

--Labels:

--Variables:
local equipped = {}
local equippedBySlot = {}
local loot = {}
local lootBySlot = {}
local tierLoot = {}
local i2s = {INVTYPE_HEAD, INVTYPE_NECK, INVTYPE_SHOULDER, "", INVTYPE_CHEST, INVTYPE_WAIST, INVTYPE_LEGS, INVTYPE_FEET, INVTYPE_WRIST, INVTYPE_HAND, INVTYPE_FINGER, INVTYPE_FINGER, INVTYPE_TRINKET, INVTYPE_TRINKET, INVTYPE_CLOAK}
local s2i = {}
for index, slot in ipairs(i2s) do
	s2i[slot] = index
end
local bossScore = {}
local isOccupied = {}

--Local copies of global Variables:
local statweights = {}	--Copy of BonusRollManagerVariables.statweights, but its keys are blizz's statnames
local brmV				--Copy of BonusRollManagerVariables
local brmT				--Copy of BonusRollManagerTable
local bossID = {}
local BiS



function BonusRollManagerTable.copyVariables()
	brmT = BonusRollManagerTable
	brmV = BonusRollManagerVariables
	statweights.RESISTANCE0_NAME = brmV.statweights[brmT.getSelectedSpecID()][11]
	statweights.ITEM_MOD_STRENGTH_SHORT = brmV.statweights[brmT.getSelectedSpecID()][1]
	statweights.ITEM_MOD_AGILITY_SHORT = brmV.statweights[brmT.getSelectedSpecID()][2]
	statweights.ITEM_MOD_INTELLECT_SHORT = brmV.statweights[brmT.getSelectedSpecID()][3]
	statweights.ITEM_MOD_STAMINA_SHORT = brmV.statweights[brmT.getSelectedSpecID()][4]
	statweights.ITEM_MOD_CRIT_RATING_SHORT = brmV.statweights[brmT.getSelectedSpecID()][5]
	statweights.ITEM_MOD_HASTE_RATING_SHORT = brmV.statweights[brmT.getSelectedSpecID()][6]
	statweights.ITEM_MOD_VERSATILITY = brmV.statweights[brmT.getSelectedSpecID()][7]
	statweights.ITEM_MOD_MASTERY_RATING_SHORT = brmV.statweights[brmT.getSelectedSpecID()][8]
	statweights.RELIC_ITEM_LEVEL_INCREASE = brmV.statweights[brmT.getSelectedSpecID()][9]
	bossID = brmT.bossID
	BiS = brmV.BiS
end

function BonusRollManagerTable.getEquipped()
	wipe(equipped)
	wipe(equippedBySlot)
	for i = 1, 15, 1 do
	if i ~= 4 then
		equipped[i] = {}
		equipped[i].score = 0
		equipped[i].link = GetInventoryItemLink("player", i)
		equipped[i].slot = i2s[i]
		equipped[i].isTier = not not string.find(GetItemInfo(equipped[i].link), brmT.tierNames[brmV.selectedClass])
		equipped[i].bossIndex = 0
		equipped[i].stats = {}
		if equipped[i].link ~= nil then
			GetItemStats(equipped[i].link, equipped[i].stats)
			for stat, value in pairs(equipped[i].stats) do
				equipped[i].score = equipped[i].score + ((statweights[stat] or 0) * value)
			end
		end
	end
	end
	SocketInventoryItem(INVSLOT_MAINHAND)
	for i = 1, 3, 1 do
		equipped[i + 15] = {}
		local _, _, slot, link = C_ArtifactUI.GetRelicInfo(i)
		equipped[i + 15].link = link
		equipped[i + 15].score = 0
		equipped[i + 15].slot = slot
		equipped[i + 15].stats = {}
		equipped[i + 15].bossIndex = 0
		equipped[i + 15].isTier = 0
		GetItemStats(link, equipped[i + 15].stats)
		for stat, value in pairs(equipped[i + 15].stats) do
			equipped[i + 15].score = equipped[i + 15].score + ((statweights[stat] or 0) * value)
		end
	end
	ArtifactFrame.CloseButton:Click("LeftButton")
	
	for slotIndex, item in pairs(equipped) do
		print(item.slot, equippedBySlot[item.slot], item.link)
		if not equippedBySlot[item.slot] then
			equippedBySlot[item.slot] = {}
		end
		local currentSlot = equippedBySlot[item.slot]
		if not currentSlot.score or currentSlot.score > item.score then
			for k, v in pairs(item) do
				currentSlot[k] = v
			end
		end
	end
end

function BonusRollManagerTable.getLoot()
	wipe(loot)
	wipe(lootBySlot)
	wipe(tierLoot)
	tierLoot.num = 0
	EJ_SetLootFilter(brmT.classID[brmV.selectedClass], brmT.getSelectedSpecID())
	EncounterJournalEncounterFrameInfoLootScrollFrameSlotFilterToggle:Click("LeftButton")
	DropDownList1Button1:Click("LeftButton")
	EJ_SelectInstance(brmT.raidID)
	for bossIndex = 1, brmT.numBosses, 1 do
	if brmV.selectedBosses[bossIndex] > 0 then
		EJ_SetDifficulty(brmV.selectedBosses[bossIndex] + 13)
		EJ_SelectEncounter(bossID[bossIndex])
		loot[bossIndex] = {}
		brmT.numLoot[bossIndex] = EJ_GetNumLoot()
		
		for lootIndex = 1, brmT.numLoot[bossIndex], 1 do
			loot[bossIndex][lootIndex] = {}
			local currentLoot = loot[bossIndex][lootIndex]
			currentLoot.score = 0
			currentLoot.isTier = false
			currentLoot.bossIndex = bossIndex
			currentLoot.stats = {}
			local itemID, _, name, _, slot, _, link = EJ_GetLootInfoByIndex(lootIndex)
			
			--Fuckin Bullshit
			if not name then
				return "not name"
			end
			if C_ArtifactUI.GetRelicInfoByItemID(itemID) then
				_, _, slot = C_ArtifactUI.GetRelicInfoByItemID(itemID)
			end
			
			currentLoot.link = link
			currentLoot.slot = slot
						
			GetItemStats(currentLoot.link, currentLoot.stats)
			for stat, value in pairs(currentLoot.stats) do
				currentLoot.score = currentLoot.score + ((statweights[stat] or 0) * value)
			end
			
			if string.find(name, brmT.tierNames[brmV.selectedClass]) then
				currentLoot.isTier = true
				tierLoot[currentLoot.slot] = {}
				tierLoot.num = tierLoot.num + 1
				for k, v in pairs(currentLoot) do
					tierLoot[currentLoot.slot][k] = v
				end
			end
		end
	else
		brmT.numLoot[bossIndex] = 0
	end
	end
	
	for bossIndex = 1, brmT.numBosses, 1 do
		for lootIndex = 1, brmT.numLoot[bossIndex], 1 do
			if not lootBySlot[loot[bossIndex][lootIndex].slot] then
				lootBySlot[loot[bossIndex][lootIndex].slot] = {}
				lootBySlot[loot[bossIndex][lootIndex].slot].numLoot = 0
			end
			local currentSlot = lootBySlot[loot[bossIndex][lootIndex].slot]
			currentSlot.numLoot = currentSlot.numLoot + 1
			currentSlot[currentSlot.numLoot] = {}
			currentSlot[currentSlot.numLoot].link = loot[bossIndex][lootIndex].link
			currentSlot[currentSlot.numLoot].score = loot[bossIndex][lootIndex].score
			currentSlot[currentSlot.numLoot].isTier = loot[bossIndex][lootIndex].isTier
			currentSlot[currentSlot.numLoot].bossIndex = loot[bossIndex][lootIndex].bossIndex
		end
	end
end

function BonusRollManagerTable.printBiS()
	if not brmT or not brmV then
		BonusRollManagerTable.copyVariables()
	end
	local output = ""
	local order = {INVTYPE_HEAD, INVTYPE_NECK, INVTYPE_SHOULDER, INVTYPE_CLOAK, INVTYPE_CHEST, INVTYPE_WAIST, INVTYPE_LEGS, INVTYPE_FEET, INVTYPE_WRIST, INVTYPE_HAND, INVTYPE_FINGER.." 1", INVTYPE_FINGER.." 2", INVTYPE_TRINKET.." 1", INVTYPE_TRINKET.." 2", "Relic 1", "Relic 2", "Relic 3"}
	
	for i, slot in ipairs(order) do
		local bossName = EJ_GetEncounterInfoByIndex(BiS[slot].bossIndex or 0 , brmT.raidID) or ""
		bossName = bossName ~= "" and "("..bossName..")" or ""
		
		
		local name = GetItemInfo(BiS[slot].link)
		
		if name == nil then
			name = "|cFFFF8000 Legendary |r"
		elseif BiS[slot].isTier then
			name = "|cFF00FF00 "..name.." |r"
		elseif BiS[slot].bossIndex == 0 then
			name = "|cFFFF0000 "..name.." |r"
		else
			name = "|cFFB048F8 "..name.." |r"
		end
		
		
		output = output..slot..": "..name.."  "..bossName.."\n"
	end
	
	return output
end

function BonusRollManagerTable.calcBiS()
	wipe(isOccupied)
	brmV.BiS = {
		[INVTYPE_HEAD] = {},
		[INVTYPE_NECK] = {},
		[INVTYPE_SHOULDER] = {},
		[INVTYPE_CHEST] = {},
		[INVTYPE_WAIST] = {},
		[INVTYPE_LEGS] = {},
		[INVTYPE_FEET] = {},
		[INVTYPE_WRIST] = {},
		[INVTYPE_HAND] = {},
		[INVTYPE_CLOAK] = {}
	}
	BiS = brmV.BiS
	for slot, gear in pairs(BiS) do
		gear.link = equipped[s2i[slot]].link
		gear.score = equipped[s2i[slot]].score
		gear.isTier = equipped[s2i[slot]].isTier
		gear.bossIndex = 0
		for i = 1, lootBySlot[slot] and lootBySlot[slot].numLoot or 0, 1 do
			if lootBySlot[slot][i].score > gear.score then
				gear.link = lootBySlot[slot][i].link
				gear.score = lootBySlot[slot][i].score
				gear.isTier = lootBySlot[slot][i].isTier
				gear.bossIndex = lootBySlot[slot][i].bossIndex
			end
		end
	end
	local doubleSlot = {INVTYPE_FINGER, INVTYPE_TRINKET}
	for i, slot in pairs(doubleSlot) do
		local bestGearLink = ""
		for gearIndex = 1, 2, 1 do
			BiS[slot.." "..gearIndex] = {}
			local gear = BiS[slot.." "..gearIndex]
			gear.link = ""
			gear.score = -1
			gear.isTier = false
			gear.bossIndex = 0
			for index, equippedGear in pairs(equipped) do
				if equippedGear.slot == slot and equippedGear.score > gear.score and equippedGear.link ~= bestGearLink then
					gear.link = equippedGear.link
					gear.score = equippedGear.score
					gear.isTier = equippedGear.isTier
					gear.bossIndex = 0
				end
			end
			for i = 1, lootBySlot[slot] and lootBySlot[slot].numLoot or 0, 1 do
				if lootBySlot[slot][i].score > gear.score and lootBySlot[slot][i].link ~= bestGearLink then
					gear.link = lootBySlot[slot][i].link
					gear.score = lootBySlot[slot][i].score
					gear.isTier = lootBySlot[slot][i].isTier
					gear.bossIndex = lootBySlot[slot][i].bossIndex
				end
			end
			
			bestGearLink = gear.link
		end
	end
	for i = 1, 3, 1 do
		BiS["Relic "..i] = {}
		local relic = BiS["Relic "..i]
		relic.link = equipped[i + 15].link
		relic.score = equipped[i + 15].score
		relic.slot = equipped[i + 15].slot
		relic.bossIndex = 0
		for j = 1, lootBySlot[relic.slot] and lootBySlot[relic.slot].numLoot or 0, 1 do
			if lootBySlot[relic.slot][j].score > relic.score then
				relic.link = lootBySlot[relic.slot][j].link
				relic.score = lootBySlot[relic.slot][j].score
				relic.bossIndex = lootBySlot[relic.slot][j].bossIndex
			end
		end
	end
	
	local function getBiSTierNum()
		local tierNum = 0
		for slot, item in pairs(BiS) do
			if item.isTier then
				tierNum = tierNum + 1
			end
		end
		return tierNum
	end
	
	
	BiS[""] = {}
	--Puts Legendaries in BiS
	for i, slot in ipairs(brmV.selectedLegSlot) do
		local t = ""
		for k, v in ipairs(doubleSlot) do
			t = slot == v and (brmV.selectedLegSlot[1] == brmV.selectedLegSlot[2] and " "..i or " "..2) or t
		end
		for k, v in pairs(BiS[slot..t]) do
			BiS[slot..t][k] = k == "link" and "Legendary" or nil
		end
	end
	
	--Assures BiS contains 4 set
	local iteration = 0
	while getBiSTierNum() < (tierLoot.num >= 4 and 4 or tierLoot.num) and iteration < 10 do
		iteration = iteration + 1
		if iteration == 10 then
			print("ERROR: 003")
			return "ERROR: 003"
		end
		local scoreLoss, replaceSlot = nil, nil
		for slot, tierPiece in pairs(tierLoot) do
			if slot ~= "num" and BiS[slot].link ~= "Legendary" and BiS[slot].link ~= tierPiece.link and (not scoreLoss or BiS[slot].score - tierPiece.score < scoreLoss) then
				scoreLoss = BiS[slot].score - tierPiece.score
				replaceSlot = slot
			end
		end
		if replaceSlot then
			for k, v in pairs(BiS[replaceSlot]) do
				BiS[replaceSlot][k] = tierLoot[replaceSlot][k]
			end
		end
	end
	
	--Populates isOccupied
	for slot, item in pairs(BiS) do
		local t = ""
		local itemSlot = slot
		if string.find(slot, INVTYPE_FINGER) or string.find(slot, INVTYPE_TRINKET) then
			t = "1"
			itemSlot = string.sub(slot, 1, -2)
		end
		isOccupied[itemSlot] = BiS[itemSlot..t].link == "Legendary"
	end
	
end

function BonusRollManagerTable.calcBossScore()
	wipe(bossScore)
	for i = 1, brmT.numBosses, 1 do
		bossScore[i] = 0
	end
	for bossIndex, bossLoot in pairs(loot) do
		for lootIndex, currentLoot in pairs(bossLoot) do
			local t = 0
			if not isOccupied[currentLoot.slot] and equippedBySlot[currentLoot.slot] then
				t = currentLoot.score - equippedBySlot[currentLoot.slot].score
				t = math.max(t, 0)
				if BiS[currentLoot.slot] and not currentLoot.isTier and BiS[currentLoot.slot].isTier then
					t = 0
				end
				if BiS[currentLoot.slot] and currentLoot.isTier and BiS[currentLoot.slot].isTier and not equippedBySlot[currentLoot.slot].isTier then
					t = t + brmV.statweights[brmT.getSelectedSpecID()][10]
				end
			end
			bossScore[bossIndex] = bossScore[bossIndex] + t
		end
		bossScore[bossIndex] = bossScore[bossIndex] / brmT.numLoot[bossIndex]
	end
end

function BonusRollManagerTable.sortBosses()
	wipe(brmV.sortedBosses)
	local sorted = {}
	for i, score in ipairs(bossScore) do
		local best = {}
		wipe(best)
		best.score, best.index = -1, 0
		for j, score in ipairs(bossScore) do
			best.index = score > best.score and not sorted[j] and j or best.index
			best.score = best.index > 0 and bossScore[best.index] or -1
		end
		brmV.sortedBosses[i] = {}
		brmV.sortedBosses[i].index = best.index
		brmV.sortedBosses[i].score = best.score
		sorted[best.index] = true
	end
end

function BonusRollManagerTable.averageItem()
	local avgItemScore, totalItemScore, numItems = 0, 0, 0
	for bossIndex, bossLoot in pairs(loot) do
		for lootIndex, currentLoot in pairs(bossLoot) do
			numItems = numItems + 1
			local t = 0
			if not isOccupied[currentLoot.slot] and equippedBySlot[currentLoot.slot] then
				t = currentLoot.score - equippedBySlot[currentLoot.slot].score
				t = math.max(t, 0)
				if BiS[currentLoot.slot] and not currentLoot.isTier and BiS[currentLoot.slot].isTier then
					t = 0
				end
				if BiS[currentLoot.slot] and currentLoot.isTier and BiS[currentLoot.slot].isTier and not equippedBySlot[currentLoot.slot].isTier then
					t = t + brmV.statweights[brmT.getSelectedSpecID()][10]
				end
			end
			totalItemScore = totalItemScore + t
		end
	end
	avgItemScore = totalItemScore / numItems
	print(avgItemScore)
end





function BonusRollManagerTable.calc()
	BonusRollManagerTable.copyVariables()
	--print("Equipemnt")
	brmT.getEquipped()
	--print("Loot")
	if brmT.getLoot() == "not name" then
		print("WoW has not quite finished loading. Wait a couple seconds and then try again.")
		return "not name"
	end
	--print("BiS")
	if brmT.calcBiS() == "ERROR: 003" then
		return "ERROR: 003"
	end
	
	--print("Boss scores")
	brmT.calcBossScore()
	--print("Sorting Bosses")
	brmT.sortBosses()
	--print("DONE")
	
	EncounterJournal_OpenJournal()
	EncounterJournalCloseButton:Click("LeftButton")
	--brmT.printBiS()
end
























