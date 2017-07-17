--------------------------------------------------------------------------------
--                        A L L   T H E   T H I N G S                         --
--------------------------------------------------------------------------------
--               Copyright 2017 Dylan Fortune (Crieve-Sargeras)               --
--------------------------------------------------------------------------------
AllTheThings = CreateFrame("FRAME", "AllTheThings", UIParent);
local function HandleEvents(self, e, ...) (self.events[e] or tostringall)(...); end
local app = AllTheThings;	-- Create a local (non global) reference
app.events = {};
local backdrop = {
	bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
	tile = true, tileSize = 16, edgeSize = 16, 
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
app.DisplayName = "AllTheThings";
app:SetScript("OnEvent", HandleEvents);
app:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
app:SetSize(1, 1);
app:Hide();

-- Game Tooltip Icon
local GameTooltipIcon = CreateFrame("FRAME", nil, GameTooltip);
GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
GameTooltipIcon:SetSize(96, 96);
GameTooltipIcon.icon = GameTooltipIcon:CreateTexture(nil, "ARTWORK");
GameTooltipIcon.icon:SetAllPoints(GameTooltipIcon);
GameTooltipIcon.icon:Show();
GameTooltipIcon:Hide();

-- Data Lib
if not AllTheThingsAD then AllTheThingsAD = { }; end					-- For account-wide data.
if not AllTheThingsPCD then AllTheThingsPCD = { }; end					-- For character specific data.
if not AllTheThingsTempData then AllTheThingsTempData = { }; end		-- For temporary data.
local function SetDataMember(member, data)
	AllTheThingsAD[member] = data;
end
local function GetDataMember(member, default)
	if AllTheThingsAD[member] == nil then AllTheThingsAD[member] = default; end
	return AllTheThingsAD[member];
end
local function SetTempDataMember(member, data)
	AllTheThingsTempData[member] = data;
end
local function GetTempDataMember(member, default)
	if AllTheThingsTempData[member] == nil then AllTheThingsTempData[member] = default; end
	return AllTheThingsTempData[member];
end
local function SetPersonalDataMember(member, data)
	AllTheThingsPCD[member] = data;
end
local function GetPersonalDataMember(member, default)
	if AllTheThingsPCD[member] == nil then AllTheThingsPCD[member] = default; end
	return AllTheThingsPCD[member];
end
local function SetDataSubMember(member, submember, data)
	if AllTheThingsAD[member] then AllTheThingsAD[member][submember] = data; end
end
local function GetDataSubMember(member, submember, default)
	if not AllTheThingsAD[member] then AllTheThingsAD[member] = { }; end
	if AllTheThingsAD[member][submember] == nil then AllTheThingsAD[member][submember] = default; end
	return AllTheThingsAD[member][submember];
end
local function SetTempDataSubMember(member, submember, data)
	if AllTheThingsTempData[member] then
		AllTheThingsTempData[member][submember] = data;
	end
end
local function GetTempDataSubMember(member, submember, default)
	if AllTheThingsTempData[member] == nil then
		AllTheThingsTempData[member] = { };
	end
	if AllTheThingsTempData[member][submember] == nil then
		AllTheThingsTempData[member][submember] = default;
	end
	return AllTheThingsTempData[member][submember];
end
local function SetPersonalDataSubMember(member, submember, data)
	if AllTheThingsPCD[member] then AllTheThingsPCD[member][submember] = data; end
end
local function GetPersonalDataSubMember(member, submember, default)
	if not AllTheThingsPCD[member] then AllTheThingsPCD[member] = { }; end
	if AllTheThingsPCD[member][submember] == nil then AllTheThingsPCD[member][submember] = default; end
	return AllTheThingsPCD[member][submember];
end
local function SetDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsAD[member] and AllTheThingsAD[member][submember] then AllTheThingsAD[member][submember][subsubmember] = data; end
end
local function GetDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsAD[member] then
		AllTheThingsAD[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsAD[member][submember] then
			AllTheThingsAD[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsAD[member][submember][subsubmember] == nil then
				AllTheThingsAD[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsAD[member][submember][subsubmember];
end
local function SetPersonalDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsPCD[member] and AllTheThingsPCD[member][submember] then AllTheThingsPCD[member][submember][subsubmember] = data; end
end
local function GetPersonalDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsPCD[member] then
		AllTheThingsPCD[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsPCD[member][submember] then
			AllTheThingsPCD[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsPCD[member][submember][subsubmember] == nil then
				AllTheThingsPCD[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsPCD[member][submember][subsubmember];
end
local function SetTempDataSubSubMember(member, submember, subsubmember, data)
	if AllTheThingsTempData[member] and AllTheThingsTempData[member][submember] then AllTheThingsTempData[member][submember][subsubmember] = data; end
end
local function GetTempDataSubSubMember(member, submember, subsubmember, default)
	if not AllTheThingsTempData[member] then
		AllTheThingsTempData[member] = 
		{
			[submember] = 
			{
				[subsubmember] = default;
			};
		};
		return default;
	else
		if not AllTheThingsTempData[member][submember] then
			AllTheThingsTempData[member][submember] = 
			{
				[subsubmember] = default;
			};
			return default;
		else
			if AllTheThingsTempData[member][submember][subsubmember] == nil then
				AllTheThingsTempData[member][submember][subsubmember] = default;
				return default;
			end
		end
	end
	return AllTheThingsTempData[member][submember][subsubmember];
end

-- Localization Lib
app.Locales = {};
app.print = function(msg, ...)
	DEFAULT_CHAT_FRAME:AddMessage(app.DisplayName .. ": " .. (msg or "nil"), ...);
end
local function L(name, ...)
	return name and app.LL[name];
end
local function SetLocale(loc)
	loc = loc or app.Locale or "enUS";
	if app.Locale ~= loc then
		-- Load in the table
		if app.Locales then
			app.Locale = loc;
			app.LL = app.Locales[loc] or app.Locales.enUS;
		end
	end
end
local function ShowInterfaceOptions()
	if InterfaceOptionsFrame:IsVisible() then
		InterfaceOptionsFrame_Show();
	else
		InterfaceOptionsFrame_OpenToCategory(L("TITLE_OPTIONS"));
		InterfaceOptionsFrame_OpenToCategory(L("TITLE_OPTIONS"));
	end
end

-- audio lib
local function PlayFanfare()
	if GetDataMember("PlayFanfare", true) then
		-- Play a random fanfare from the locale table
		local t = L("AUDIO_FANFARE_TABLE");
		if t and type(t) == "table" then
			local id = math.random(1, #t);
			if t[id] then PlaySoundFile(t[id], "master"); end
		end
	end
end
local function PlayRemoveSound()
	if GetDataMember("PlayRemoveSound", true) then
		-- Play a random fanfare from the locale table
		local t = L("AUDIO_REMOVE_TABLE");
		if t and type(t) == "table" then
			local id = math.random(1, #t);
			if t[id] then PlaySoundFile(t[id], "master"); end
		end
	end
end

-- Color Lib
local CS = CreateFrame("ColorSelect", nil, app);
local function Colorize(str, color)
	return "|c" .. color .. str .. "|r";
end
local function RGBToHex(r, g, b)
	return string.format("ff%02x%02x%02x", 
		r <= 255 and r >= 0 and r or 0, 
		g <= 255 and g >= 0 and g or 0, 
		b <= 255 and b >= 0 and b or 0);
end
local function ConvertColorRgbToHsv(r, g, b)
  CS:SetColorRGB(r, g, b);
  local h,s,v = CS:GetColorHSV()
  return {h=h,s=s,v=v}
end
local red, green = ConvertColorRgbToHsv(1,0,0), ConvertColorRgbToHsv(0,1,0);
local progress_colors = setmetatable({}, {
	__index = function(t, p)
		local h;
		p = tonumber(p);
		if abs(red.h - green.h) > 180 then
		local angle = (360 - abs(red.h - green.h)) * p;
		if red.h < green.h then
			h = floor(red.h - angle);
			if h < 0 then h = 360 + h end
			else
				h = floor(red.h + angle);
				if h > 360 then h = h - 360 end
			end
		else
			h = floor(red.h-(red.h-green.h)*p)
		end
		CS:SetColorHSV(h, red.s-(red.s-green.s)*p, red.v-(red.v-green.v)*p);
		local r,g,b = CS:GetColorRGB();
		local color = RGBToHex(r * 255, g * 255, b * 255);
		rawset(t, p, color);
		return color;
	end
});
local function GetProgressColor(p)
	return progress_colors[p];
end
CS:Hide();

-- Coroutine Helper Functions
local function OnUpdate(self)
	for i=#self.__stack,1,-1 do
		if not self.__stack[i]() then
			table.remove(self.__stack, i);
			if #self.__stack < 1 then
				self:SetScript("OnUpdate", nil);
			end
		end
	end
end
local function Push(self, method)
	if not self.__stack then
		self.__stack = {};
		self:SetScript("OnUpdate", OnUpdate);
	elseif #self.__stack < 1 then 
		self:SetScript("OnUpdate", OnUpdate);
	end
	table.insert(self.__stack, method);
end
local function StartCoroutine(self, method)
	if method then
		local instance = coroutine.create(method);
		Push(self, function()
			-- Check the status of the coroutine
			if instance and coroutine.status(instance) ~= "dead" then
				local ok, err = coroutine.resume(instance);
				if ok then return true;	-- This means more work is required.
				else
					-- Show the error. Returning nothing is the same as cancelling the work.
					app.print("Error processing coroutine: ");
					app.print(err);
				end
			end
		end);
	end
end

-- Source ID Harvesting Lib
local DressUpModel = CreateFrame('DressUpModel');
local inventorySlotsMap = {	-- Taken directly from CanIMogIt (Thanks!)
    ["INVTYPE_HEAD"] = {1},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = {16},
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
    ["INVTYPE_TABARD"] = {19},
};
local function GetSourceID(itemLink)
    if IsDressableItem(itemLink) then
		local itemID, _, _, slotName = GetItemInfoInstant(itemLink);
		if slotName then
			local slots = inventorySlotsMap[slotName];
			if slots then
				DressUpModel:SetUnit('player');
				DressUpModel:Undress();
				for i, slot in pairs(slots) do
					DressUpModel:TryOn(itemLink, slot);
					local sourceID = DressUpModel:GetSlotTransmogSources(slot);
					if sourceID ~= 0 then return sourceID, true; end
				end
			end
		end
		return nil, true;
	end
	return nil, false;
end

-- Quest Name Harvesting Lib (http://www.wowinterface.com/forums/showthread.php?t=46934)
local QuestHarvester = CreateFrame("GameTooltip", "AllTheThingsQuestHarvester", UIParent, "GameTooltipTemplate");
local QuestTitleFromID = setmetatable({}, { __index = function(t, id)
	QuestHarvester:SetOwner(UIParent, "ANCHOR_NONE");
	QuestHarvester:SetHyperlink("quest:"..id);
	local title = AllTheThingsQuestHarvesterTextLeft1:GetText();
	QuestHarvester:Hide()
	if title and title ~= RETRIEVING_DATA then
		t[id] = title
		return title
	end
end })

-- Item Information Lib
local function SortCompanionPetInformation(a,b)
	return a.speciesID < b.speciesID;
end
local function GetCompanionPetInfoCache()
	local cache = GetTempDataMember("COMPANION_PET_CACHE", {});
	local collected = GetDataMember("CollectedSpecies", {});
	
	local listedSpecies = GetTempDataMember("COMPANION_PET_CACHE_LISTED", {});
	local temp = GetTempDataMember("COMPANION_PET_CACHE_TYPES", {});
	if #temp < 1 then
		local numPetTypes = C_PetJournal.GetNumPetTypes();
		for index = 1,numPetTypes do
			local petTypeTable = setmetatable({ ["petType"] = index, ["groups"] = {} }, app.BasePetType);
			temp[index] = petTypeTable;
			tinsert(cache, petTypeTable);
		end
	end
	for index = 1,select(1, C_PetJournal.GetNumPets()) do
		local petID, speciesID, owned, customName, level, favorite, isRevoked, speciesName, icon, petType = C_PetJournal.GetPetInfoByIndex(index);
		if speciesID then
			collected[speciesID] = C_PetJournal.GetNumCollectedInfo(speciesID) > 0;
			if not listedSpecies[speciesID] then 
				listedSpecies[speciesID] = true;
				tinsert(temp[petType].groups, setmetatable({ ["speciesID"] = speciesID }, app.BaseSpecies));
			end
		end
	end
	for i,group in ipairs(cache) do table.sort(group.groups, SortCompanionPetInformation); end
	return cache;
end
local function GetMountInfoCache()
	local cache = GetTempDataMember("COMPANION_MOUNT_CACHE", {});
	local spellID_MountID = GetTempDataMember("MOUNT_SPELLID_TO_MOUNTID");
	if not spellID_MountID then
		-- Let's build the spellID_MountID and mount cache.
		local collected = GetDataMember("CollectedMounts", {});
		spellID_MountID = {};
		
		local mountIDs = C_MountJournal.GetMountIDs();
		local listedMounts = GetTempDataMember("COMPANION_MOUNT_CACHE_LISTED", {});
		local temp = GetTempDataMember("COMPANION_PET_SOURCE_TYPES", {});
		if #temp < 1 then
			for i=1,C_PetJournal.GetNumPetSources() do
				local t = { ["text"] = _G["BATTLE_PET_SOURCE_"..i], ["groups"] = {} };
				temp[i] = t;
				tinsert(cache, t);
			end
		end
		for i,mountID in ipairs(mountIDs) do
			-- The 2nd value in the list is the spellID for the mount.
			local creatureName, spellID, icon, active, isUsable, sourceType, isFavorite, isFactionSpecific, faction, hideOnChar, isCollected = C_MountJournal.GetMountInfoByID(mountID);
			if spellID then
				spellID_MountID[spellID] = mountID;
				if isCollected then collected[spellID] = 1; end
				if not (hideOnChar or listedMounts[spellID]) then
					listedMounts[spellID] = true;
					if temp[sourceType or 1] then tinsert(temp[sourceType or 1].groups, setmetatable({ ["mountID"] = spellID }, app.BaseMount));
					else tinsert(cache, setmetatable({ ["mountID"] = spellID }, app.BaseMount)); end
				end
			end
		end
		
		-- Assign to the temporary data container.
		SetTempDataMember("MOUNT_SPELLID_TO_MOUNTID", spellID_MountID);
	end
	return spellID_MountID;
end
local function GetMountInfo(spellID)	-- NOTE: MountID is ACTUALLY the SpellID. Addon developers: Do not confuse this as I did, mountID can be different per spec/faction.
	return C_MountJournal.GetMountInfoByID(GetMountInfoCache()[spellID]);
end
local function GetMountExtraInfo(spellID)	-- NOTE: MountID is ACTUALLY the SpellID. Addon developers: Do not confuse this as I did, mountID can be different per spec/faction.
	return C_MountJournal.GetMountInfoExtraByID(GetMountInfoCache()[spellID]);
end
local function Harvest(itemID, bonusIDs)
	-- Attempt to get the item from the database
	if not app.Items then app.LoadItems(); app.LoadItems = nil; end
	local baseItem = app.Items[itemID];
	if not baseItem then
		baseItem = {};
		app.Items[itemID] = baseItem;
	end
	
	-- If we don't need a specific set of bonus IDs, then return the base item.
	if not bonusIDs then return baseItem; end
	local count = #bonusIDs;
	if count < 1 then return baseItem; end
	
	-- This addon only uses one bonus ID layer. (probably won't need more than that)
	local bonusID = bonusIDs[1];
	
	-- Attempt to acquire the item information
	if not baseItem.v then baseItem.v = {}; end
	local item = baseItem.v[bonusID];
	if item then
		if not rawget(item, "s") then item.s = 0; end
	else
		-- Create a child item
		item = setmetatable({}, { __index = baseItem });
		item.ids = bonusIDs;
		item.s = 0;
		baseItem.v[bonusID] = item;
	end
	return item;
end
local function SearchForItemIDRecursively(group, itemID, bonusID)
	if group.itemID == itemID then
		-- OH BOY, WE FOUND IT!
		return {""}, group;
	end
	if group.rows then
		-- Check to see if our bonus ids are used for this group
		if bonusID and group.ids then
			local inside = false;
			for i,id in ipairs(group.ids) do
				if id == bonusID then
					inside = true;
					break;
				end
			end
			
			-- Nope :(
			if not inside then return nil; end
		end
	
		-- Go through the sub groups and determine if any of them have a response.
		local first, first_group;
		for i, subgroup in ipairs(group.rows) do
			local current, g = SearchForItemIDRecursively(subgroup, itemID, bonusID);
			if current then
				if first then
					-- Merge!
					for j,text in ipairs(current) do
						-- Check to see if the first list already has the text inside
						local inside = false;
						for k,text2 in ipairs(first) do
							if text == text2 then
								inside = true;
								break;
							end
						end
						
						-- If not, then add it.
						if not inside then tinsert(first, text); end
					end
				else
					-- Cool! (This should be the most common occurance)
					first_group = g;
					first = current;
				end
			end
		end
		
		-- If one or more of them did, append the text for this group.
		if first then
			local t = tostring(group.text);
			for i,text in ipairs(first) do
				if text == "" then
					first[i] = t;
				else
					first[i] = t .. " -> " .. text;
				end
			end
			return first, first_group;
		end
	end
end
local function SearchForItemID(itemID, bonusID)
	local group = app:GetDataCache();
	if group and itemID and itemID > 0 then return SearchForItemIDRecursively(group, itemID, bonusID); end
end
local function SearchForSourceIDRecursively(group, sourceID)
	if group.s == sourceID then
		-- OH BOY, WE FOUND IT!
		return {""}, group;
	end
	if group.rows then
		-- Go through the sub groups and determine if any of them have a response.
		local first = nil;
		for i, subgroup in ipairs(group.rows) do
			local current, g = SearchForSourceIDRecursively(subgroup, sourceID);
			if current then
				if first then
					-- Merge!
					for j,text in ipairs(current) do
						-- Check to see if the first list already has the text inside
						local inside = false;
						for k,text2 in ipairs(first) do
							if text == text2 then
								inside = true;
								break;
							end
						end
						
						-- If not, then add it.
						if not inside then tinsert(first, text); end
					end
				else
					-- Cool! (This should be the most common occurance)
					first = current;
					first_group = g;
				end
			end
		end
		
		-- If one or more of them did, append the text for this group.
		if first then
			for i,text in ipairs(first) do
				if text == "" then
					first[i] = (group.text or group.link or "*");
				else
					first[i] = (group.text or group.link or "*") .. " -> " .. (text or "*");
				end
			end
			return first, first_group;
		end
	end
end
local function SearchForSourceID(sourceID)
	local group = app:GetDataCache();
	if group and sourceID and sourceID > 0 then return SearchForSourceIDRecursively(group, sourceID); end
end

-- Item Searching by Link
local searchCache = {};
local function SearchForItemLink(link)
	if link then
		local now = time();
		local cache = searchCache[link];
		if cache and (now - cache[3]) < cache[4] then return cache[1], cache[2]; end
	
		if string.match(link, "item") then
			-- Parse the link and get the itemID and bonus ids.
			local itemString = string.match(link, "item[%-?%d:]+") or link;
			if itemString then
				local _, itemID, enchantId, gemId1, gemId2, gemId3, gemId4, suffixId, uniqueId, linkLevel, 
					specializationID, upgradeId, difficultyID, numBonusIds = strsplit(":", link);
				itemID = tonumber(itemID or "0") or 0;
				if itemID then
					local listing, group, working, important;
					-- Source ID searching is much faster and more reliable.
					local sourceID = GetSourceID(link);
					if sourceID then
						important = true;
						if GetDataMember("ShowSources") then
							listing, group = SearchForSourceID(sourceID);
							if not listing then
								listing, group = SearchForItemID(itemID);
								if not listing then listing = {}; end
							end
							for i,text in ipairs(listing) do
								for source,replacement in pairs(L("ABBREVIATIONS")) do
									text = string.gsub(text, source,replacement);
								end
								listing[i] = text;
							end
						else
							-- User doesn't want to see the sources. Just use the groups.
							listing = {};
						end
						local sourceInfo = C_TransmogCollection.GetSourceInfo(sourceID);
						if sourceInfo then
							if not group then group = { ["collected"] = sourceInfo.isCollected }; end
							if GetDataMember("ShowSharedAppearances") then
								for i, otherSourceID in ipairs(C_TransmogCollection.GetAllAppearanceSources(sourceInfo.visualID)) do
									local otherSource = C_TransmogCollection.GetSourceInfo(otherSourceID);
									if otherSource then
										local otherItem = Harvest(otherSource.itemID);
										if otherItem then
											local text;
											local link = otherItem.link or select(2, GetItemInfo(otherSource.itemID));
											if not link then 
												link = "Retrieving item...";
												working = true;
											end
											if otherItem.u then
												text = "|T" .. (L("UNOBTAINABLE_ITEM_TEXTURES")[L("UNOBTAINABLE_ITEM_REASONS")[otherItem.u or 1][1]] or "Interface\\FriendsFrame\\StatusIcon-DnD") .. ":0|t";
											else
												text = "   ";
											end
											text = text .. link .. " (" .. (otherSourceID == sourceID and "*" or otherSource.itemID) .. ")" .. "/" .. L(otherSource.isCollected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON");
											tinsert(listing, text);
										end
									end
								end
								tinsert(listing, L("VISUAL_ID") .. "/" .. tostring(sourceInfo.visualID));
							end
							tinsert(listing, L("SOURCE_ID") .. "/" .. sourceID);
						end
					elseif GetDataMember("ShowSources") then
						listing, group = SearchForItemID(itemID);
						if listing then
							for i,text in ipairs(listing) do
								for source,replacement in pairs(L("ABBREVIATIONS")) do
									text = string.gsub(text, source,replacement);
								end
								listing[i] = text;
							end
						end
					end
					
					if not listing then listing = {}; end
					if itemID > 0 then tinsert(listing, L("ITEM_ID") .. "/" .. itemID); end
					
					-- Cache the result for a while depending on the importance of the item
					cache = { };
					cache[1] = listing;
					cache[2] = group;
					cache[3] = now;
					cache[4] = (working and 0.5) or (important and 60) or 100000000;
					searchCache[link] = cache;
					return listing, group;
				end
			end
		else
			--return { "Unsupported link: " .. link };
		end
	end
end

-- Map Information Lib
local function ExpandGroupsRecursively(group, expanded)
	if group.rows and not group.itemID then
		group.expanded = expanded;
		for i, subgroup in ipairs(group.rows) do
			ExpandGroupsRecursively(subgroup, expanded);
		end
	end
end
local function FindMapDataRecursively(listing, data, mapID)
	if data then
		for i, group in ipairs(data) do
			if group.mapID then
				-- Return the group if it has the map ID we're looking for.
				if group.mapID == mapID then
					-- Expand/Collapse the Difficulties (must be one level below)
					if group.rows then
						local found = false;
						local _, _, difficultyID = GetInstanceInfo();
						ExpandGroupsRecursively(group, true);
						if difficultyID then
							for j, subgroup in ipairs(group.rows) do
								if subgroup.difficultyID then
									subgroup.expanded = subgroup.difficultyID == difficultyID;
									if subgroup.expanded then found = true; end
								end
							end
							if not found then
								difficultyID = difficultyID + 1;
								for j, subgroup in ipairs(group.rows) do
									if subgroup.difficultyID then
										subgroup.expanded = subgroup.difficultyID == difficultyID;
										if subgroup.expanded then found = true; end
									end
								end
							end
						end
					end
					tinsert(listing, group);
				else
					-- A map may have a sub-map inside of it.
					FindMapDataRecursively(listing, group.rows, mapID);
				end
			elseif group.npcID or group.objectID or group.questID or group.difficultyID or group.itemID then
				-- Fall through to the next group. NPC ID is sorta deceptive, it's a special identifier I use for World Drops, sub groups, etc.)
			else
				-- This must be the parent group (ALL THE THINGS) or a Tier (Dungeons & Raids - Classic, Burning Crusade, etc)
				FindMapDataRecursively(listing, group.rows, mapID);
			end
		end
	end
end
local function FindMapData(mapID)
	local allData, listing = app:GetDataCache(), {};
	if allData then
		FindMapDataRecursively(listing, allData.rows, mapID);
		if #listing > 0 then return listing; end
	end
end
local function OpenMiniList(mapID)
	-- If there is at not at least one window visible after this, hide the app window.
	local popout = app:GetWindow("CurrentInstance");
	local mapData = FindMapData(mapID);
	if mapData then
		-- Simplify the returned groups
		if #mapData < 2 then
			-- Only one object matched.
			mapData = mapData[1];
		else
			-- A couple of objects matched, let's make a header.
			local header = app.CreateMap(mapID, { rows = {}, groups = {}, total = 0, collected = 0, visible = true });
			for i, group in ipairs(mapData) do
				if group.text == header.text then
					-- Merge the subgroups with the header rows
					for j, subgroup in ipairs(group.rows) do
						tinsert(header.rows, subgroup);
					end
					for key,value in pairs(group) do
						if key ~= "groups" and key ~= "collected" and key ~= "rows" and key ~= "total" then
							header[key] = value;
						end
					end
				else
					tinsert(header.rows, group);
				end
				header.collected = header.collected + (group.collected or 0);
				header.total = header.total + (group.total or 0);
			end
			
			-- Swap out the map data for the header.
			mapData = header;
		end
		
		-- Check to see if it is empty.
		popout.data = mapData;
		if mapData.collected == mapData.total then
			popout:SetVisible(false);
			if mapData.total > 0 then
				-- app.print("You've collected " .. app.DisplayName .. " from " .. (GetRealZoneText() or "this zone") .. ".");
				return false;
			end
		else
			popout:SetVisible(true);
			return false;
		end
	end
	
	-- This can trigger when you login.
	--local zoneText = GetRealZoneText();
	--if zoneText then app.print("There isn't anything listed for " .. zoneText .. "."); end
end
local function OpenMiniListForCurrentZone()
	-- Cache the original map ID.
	local originalMapID = GetCurrentMapAreaID();
	SetMapToCurrentZone();
	local mapID = GetCurrentMapAreaID();
	SetMapByID(originalMapID);
	OpenMiniList(mapID);
end
local function RefreshLocation(force)
	if not app.refreshingLocation then
		app.refreshingLocation = true;
		local automaticMiniList = GetDataMember("AutoMiniList", true);
		StartCoroutine(app, function()
			-- While the player is in combat, wait for combat to end.
			while InCombatLockdown() do coroutine.yield(); end
			
			-- Cache the original map ID.
			local originalMapID = GetCurrentMapAreaID();
			SetMapToCurrentZone();
			local mapID = GetCurrentMapAreaID();
			
			-- This is necessary because the map area ID for instances
            -- is -1 when you initially enter them for a few moments. (not even a full second)
            while not mapID or mapID < 0 do
                coroutine.yield();
                mapID = GetCurrentMapAreaID();
            end
			SetMapByID(originalMapID);
			
			-- Onyxia's Lair fix
			local otherMapID = L("ZONE_TEXT_TO_MAP_ID")[GetRealZoneText()];
			if otherMapID then mapID = otherMapID; end
			
			-- Cache that we're in the current map ID.
			if GetPersonalDataMember("MapID") ~= mapID or force then
				SetPersonalDataMember("MapID", mapID);
				if automaticMiniList then OpenMiniList(mapID); end
			end
			app.refreshingLocation = false;
		end);
		
		-- If the mini list should be automatic, then show the app window. (to allow the coroutine to execute immediately)
		if automaticMiniList then app:Show(); end
	end
end
local function RefreshSaves()
	if not app.refreshingSaves then
		app.refreshingSaves = true;
		StartCoroutine(app, function()
			-- While the player is in combat, wait for combat to end.
			while InCombatLockdown() do coroutine.yield(); end
			
			-- Update Saved Instances (I have to clear it because the saves do eventually reset)
			local saves, newSave, oldSaves = {}, false, GetPersonalDataMember("Saves", {});
			local converter = L("SAVED_TO_DJ_INSTANCES");
			for instanceIter=1,GetNumSavedInstances() do
				local name, id, reset, difficulty, locked, extended, instanceIDMostSig = GetSavedInstanceInfo(instanceIter);
				if locked then
					--app.print(tostring(instanceIter) .. ": " .. tostring(name) .. ", " .. tostring(id) .. ", " .. tostring(difficulty) .. ", " .. tostring(instanceIDMostSig));
					name = converter[name] or name;
					saves[name] = instanceIter;
					
					-- If this instance was not previously saved, mark it.
					if not oldSaves[name] then newSave = true; end
				end
			end
			
			-- Check the old saves vs. the new saves
			if not newSave then
				for key, value in pairs(oldSaves) do
					if not saves[key] then newSave = true; end
				end
			end
			
			-- If there's a new save, then also refresh the location. (this is used to apply the saved icon and tooltip)
			app.refreshingSaves = false;
			if newSave then
				SetPersonalDataMember("Saves", saves);
				RefreshLocation();
			end
		end);
	end
end
local function RefreshSources(groups, bonusIDs)
	if groups then
		for key, group in ipairs(groups) do
			while InCombatLockdown() do coroutine.yield(); end
			if group.itemID then
				if not getmetatable(group) then setmetatable(group, { __index = (group.ignoreBonus and Harvest(group.itemID)) or Harvest(group.itemID, group.ids or bonusIDs) }); end
				if group.s and group.s > 0 and not GetDataSubMember("Collected", group.s) then
					local sourceInfo = C_TransmogCollection.GetSourceInfo(group.s);
					if sourceInfo and app.ItemSourceFilter(sourceInfo) then SetDataSubMember("Collected", group.s, 1); end
				end
			end
			if group.toyID and not GetDataSubMember("CollectedToys", group.toyID) and PlayerHasToy(group.toyID) then
				SetDataSubMember("CollectedToys", group.toyID, 1);
			end
			if group.groups then RefreshSources(group.groups, group.ids or bonusIDs); end
		end
	end
end
local function RefreshCollections(groups)
	if not app.RefreshingCollections then
		app.RefreshingCollections = true;
		StartCoroutine(app, function()
			-- Harvest Illusion Collections
			for i,illusion in ipairs(C_TransmogCollection.GetIllusions()) do
				if illusion.isCollected then SetDataSubMember("CollectedIllusions", illusion.sourceID, 1); end
			end
			
			-- Wait a frame before harvesting item collection status.
			coroutine.yield();
			
			-- Harvest Item Collections that are used by the addon.
			RefreshSources(groups or app:GetDataCache().groups);
			app.RefreshingCollections = false;
			
			-- Refresh the Collection Windows!
			app:RefreshData(false, true);
		end);
	end
end
AllTheThings.RefreshCollections = RefreshCollections; -- To expose this to external users.
AllTheThings.RefreshLocation = RefreshLocation;
AllTheThings.OpenMiniListForCurrentZone = OpenMiniListForCurrentZone;
AllTheThings.OpenMiniList = OpenMiniList;

-- Achievement Lib
app.BaseAchievement = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 105;
		elseif key == "text" then
			--local IDNumber, Name, Points, Completed, Month, Day, Year, Description, Flags, Image, RewardText, isGuildAch = GetAchievementInfo(t.achievementID);
			return GetAchievementLink(t.achievementID) or select(2, GetAchievementInfo(t.achievementID)) or ("Achievement #" .. t.achievementID);
		elseif key == "link" then
			return GetAchievementLink(t.achievementID);
		elseif key == "icon" then
			return select(10, GetAchievementInfo(t.achievementID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateAchievement = function(id, t)
	if not t then t = {}; end
	if not t.groups and t[1] then t = { ["groups"] = t }; end
	t.achievementID = id;
	setmetatable(t, app.BaseAchievement);
	return t;
end

-- Difficulty Lib
app.BaseDifficulty = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			return GetDifficultyInfo(t.difficultyID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateDifficulty = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.difficultyID = id;
	setmetatable(t, app.BaseDifficulty);
	return t;
end

-- Encounter Lib
app.BaseEncounter = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			if t["isRaid"] then
				return "|cffff8000" .. (select(1, EJ_GetEncounterInfo(t.encounterID)) or "") .. "|r";
			end
			return select(1, EJ_GetEncounterInfo(t.encounterID)) or "";
		elseif key == "description" then
			return select(2, EJ_GetEncounterInfo(t.encounterID)) or "";
		elseif key == "link" then
			return select(5, EJ_GetEncounterInfo(t.encounterID)) or "";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateEncounter = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.encounterID = id;
	setmetatable(t, app.BaseEncounter);
	return t;
end

-- Illusion Lib
app.BaseIllusion = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 103;
		elseif key == "text" then
			return select(3, C_TransmogCollection.GetIllusionSourceInfo(t.illusionID));
		elseif key == "link" then
			return select(3, C_TransmogCollection.GetIllusionSourceInfo(t.illusionID));
		elseif key == "icon" then
			return "Interface/ICONS/INV_Enchant_Disenchant";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateIllusion = function(id, t)
	if not t then t = {};
	elseif not t.groups and t[1] then t = { ["groups"] = t }; end
	t.illusionID = id;
	setmetatable(t, app.BaseIllusion);
	return t;
end

-- Instance Lib
app.BaseInstance = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			if t["isRaid"] then
				return "|cffff8000" .. (select(1, EJ_GetInstanceInfo(t.instanceID)) or "") .. "|r";
			end
			return select(1, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "description" then
			return select(2, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "icon" then
			return select(6, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "link" then
			return select(8, EJ_GetInstanceInfo(t.instanceID)) or "";
		elseif key == "saved" then
			local saved = GetPersonalDataSubMember("Saves", (select(1, EJ_GetInstanceInfo(t.instanceID)) or "")); -- TODO: Convert this to an int-based system.... maybe?
			if saved then rawset(t, key, saved); end
			return saved;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateInstance = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.instanceID = id;
	return setmetatable(t, app.BaseInstance);
end
app.CreateItem = function(id, t)
	if not t then
		local item = { ["itemID"] = id };
		if t and t[1] then item.groups = t; end
		return item;
	end
	if not t.groups and t[1] then t = { ["groups"] = t }; end
	t.itemID = id;
	return t;
end
app.CreateItemIgnoreBonusID = function(id, t)
	if not t then
		local item = { ["itemID"] = id, ["ignoreBonus"] = true };
		if t then item.groups = t; end
		return item;
	end
	if not t.groups then t = { ["groups"] = t }; end
	t.ignoreBonus = true;
	t.itemID = id;
	return t;
end

-- Map Lib
app.BaseMap = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			local mapID = t.mapID;
			return (mapID and mapID > 0 and GetMapNameByID(mapID)) or ("Map ID #" .. (mapID or "???"));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMap = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.mapID = id;
	setmetatable(t, app.BaseMap);
	return t;
end

-- Mount Lib
app.BaseMount = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 100;
		elseif key == "text" then
			return select(1, GetSpellLink(t.mountID)) or select(1, GetSpellInfo(t.mountID)) or ("Spell #" .. t.mountID);
		elseif key == "description" then
			return select(2, GetMountExtraInfo(t.mountID));
		elseif key == "link" then
			return select(1, GetSpellLink(t.mountID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.mountID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateMount = function(id, t)
	if not t then t = {}; end
	if not t.groups and t[1] then t = { ["groups"] = t }; end
	t.mountID = id;
	setmetatable(t, app.BaseMount);
	return t;
end

-- NPC Lib
app.BaseNPC = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			local npcID = t["npcID"];
			local name = L("NPC_ID_NAMES")[npcID] or ("Unknown NPC ID #" .. npcID);
			if t["isRaid"] then name = "|cffff8000" .. name .. "|r"; end
			rawset(t, "text", name);
			return name;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateNPC = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.npcID = id;
	setmetatable(t, app.BaseNPC);
	return t;
end

-- Object Lib (as in "World Object")
app.BaseObject = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			local objectID = t["objectID"];
			local name = L("OBJECT_ID_NAMES")[objectID] or ("Unknown Object ID #" .. objectID);
			if t["isRaid"] then name = "|cffff8000" .. name .. "|r"; end
			rawset(t, "text", name);
			return name;
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateObject = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.objectID = id;
	setmetatable(t, app.BaseObject);
	return t;
end

-- Pet Type Lib
app.BasePetType = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 101;
		elseif key == "text" then
			return _G["BATTLE_PET_NAME_" .. t.petType];
		elseif key == "icon" then
			return "Interface\\Icons\\Icon_PetFamily_"..PET_TYPE_SUFFIX[t.petType];
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreatePetType = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.petType = id;
	setmetatable(t, app.BasePetType);
	return t;
end

-- Profession Lib
app.BaseProfession = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 200;
		elseif key == "text" then
			return select(1, GetSpellInfo(t.professionID));
		elseif key == "link" then
			--return select(1, GetSpellLink(t.professionID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.professionID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateProfession = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.professionID = id;
	setmetatable(t, app.BaseProfession);
	return t;
end

-- Quest Lib
app.BaseQuest = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 104;
		elseif key == "text" then
			local questName = QuestTitleFromID[t.questID];
			if questName then return "|Hquest:" .. t.questID .. "|h[" .. questName .. "]|h"; end
			return "|Hquest:" .. t.questID .. "|h[]|h";
		elseif key == "link" then
			return "quest:" .. t.questID;
		elseif key == "icon" then
			return "Interface\\Icons\\Achievement_Quests_Completed_08";
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateQuest = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.questID = id;
	setmetatable(t, app.BaseQuest);
	return t;
end

-- Spell Lib
app.BaseSpell = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			return select(1, GetSpellLink(t.spellID)) or select(1, GetSpellInfo(t.spellID)) or ("Spell #" .. t.spellID);
		elseif key == "link" then
			return select(1, GetSpellLink(t.spellID));
		elseif key == "icon" then
			return select(3, GetSpellInfo(t.spellID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSpell = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.spellID = id;
	setmetatable(t, app.BaseSpell);
	return t;
end

-- Species Lib
app.BaseSpecies = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 101;
		elseif key == "text" then
			return select(1, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "icon" then
			return select(2, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		elseif key == "description" then
			return select(6, C_PetJournal.GetPetInfoBySpeciesID(t.speciesID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateSpecies = function(id, t)
	if not t then t = {};
	elseif not t.groups then t = { ["groups"] = t }; end
	t.speciesID = id;
	setmetatable(t, app.BaseSpecies);
	return t;
end

-- Tier Lib
app.TierDB = {
	[1] = { texture = [[Interface\Glues\Common\Glues-WoW-ClassicLogo]] },
	[2] = { texture = [[Interface\Glues\Common\Glues-WoW-BCLogo]] },
	[3] = { texture = [[Interface\Glues\Common\Glues-WoW-WotLKLogo]] },
	[4] = { texture = [[Interface\Glues\Common\Glues-WoW-CCLogo]] },
	[5] = { texture = [[Interface\Glues\Common\Glues-WoW-MPLogo]] },
	[6] = { texture = [[Interface\Glues\Common\GLUES-WOW-WODLOGO]] },
	[7] = { atlas = "Glues-WoW-LegionLogo" },
};
app.BaseTier = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "text" then
			return EJ_GetTierInfo(t.tierID);
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateTier = function(id, t)
	if not t.groups then t = { ["groups"] = t }; end
	t.tierID = id;
	setmetatable(t, app.BaseTier);
	return t;
end

-- Toy Lib
app.BaseToy = {
	__index = function(t, key)
		if key == "expanded" then
			-- TODO: Use a data setting.
			return false;
		elseif key == "f" then
			return 102;
		elseif key == "text" then
			return select(2, C_ToyBox.GetToyInfo(t.toyID));
		elseif key == "link" then
			return C_ToyBox.GetToyLink(t.toyID);
		elseif key == "icon" then
			return select(3, C_ToyBox.GetToyInfo(t.toyID));
		else
			-- Something that isn't dynamic.
			return table[key];
		end
	end
};
app.CreateToy = function(id, t)
	if not t then t = {};
	elseif not t.groups then t = { ["groups"] = t }; end
	t.toyID = id;
	setmetatable(t, app.BaseToy);
	return t;
end


-- Filtering
function app.Filter()
	-- Meaning "Don't display."
	return false;
end
function app.NoFilter()
	-- Meaning "Display as expected."
	return true;
end
function app.FilterGroupsByLevel(group)
	return app.Level >= (group.Lvl or 0);
end
function app.FilterGroupsByCompletion(group)
	return group.collected < group.total;
end
function app.FilterItemBind(item)
	return item.b == 2; -- BoE
end
function app.FilterItemClass(item)
	return GetDataMember("IgnoreAllFilters") or app.ItemBindFilter(item) or 
		(app.FilterItemClass_RequireItemFilter(item.f)
			and app.ClassRequirementFilter(item.classes)
			and app.RaceRequirementFilter(item.races));
end
function app.FilterItemClass_RequireClasses(classes)
	if classes then
		for key,value in pairs(classes) do
			if value == app.ClassIndex then return true; end
		end
	else
		return true;
	end
end
function app.FilterItemClass_RequireItemFilter(f)
	if f and not GetPersonalDataSubMember("ItemFilters", f, true) then return false; end
	return true;
end
function app.FilterItemClass_RequireRaces(races)
	if races then
		for key,value in pairs(races) do
			if value == app.RaceIndex then return true; end
		end
	else
		return true;
	end
end
function app.FilterItemSource(sourceInfo)
	return sourceInfo.isCollected;
end
function app.FilterItemSourceUnique(sourceInfo)
	if sourceInfo.isCollected then
		-- NOTE: This makes it so that the loop isn't necessary.
		return true;
	else
		-- If at least one of the sources of this visual ID was collected, that means that we've acquired the base appearance.
		-- NOTE: Some of the messaging provided by Blizzard "You haven't collected this appearance." is actually wrong.
		-- In some cases, one or more of the sources for that visual ID was collected already, just not currently
		-- available to your faction / class / character level. (This is kinda silly, but that's how it works)
		-- Please do not file bugs regarding this, I've already identified that this was the reason for the message discrepency.
		local invType = sourceInfo.invType;
		if invType then
			for i, sourceID in ipairs(C_TransmogCollection.GetAllAppearanceSources(sourceInfo.visualID)) do
				local otherSource = C_TransmogCollection.GetSourceInfo(sourceID);
				if otherSource.isCollected and otherSource.invType == invType and app.FilterItemClass(Harvest(otherSource.itemID)) then return true; end
			end
		else
			local categoryID = sourceInfo.categoryID;
			if categoryID then
				for i, sourceID in ipairs(C_TransmogCollection.GetAllAppearanceSources(sourceInfo.visualID)) do
					local otherSource = C_TransmogCollection.GetSourceInfo(sourceID);
					if otherSource.isCollected and otherSource.categoryID == categoryID and app.FilterItemClass(Harvest(otherSource.itemID)) then return true; end
				end
			end
		end
		return false;
	end
end

-- Default Filter Settings (changed in VARIABLES_LOADED and in the Options Menu)
app.GroupRequirementsFilter = app.NoFilter;
app.GroupVisibilityFilter = app.NoFilter;
app.ItemBindFilter = app.FilterItemBind;
app.ItemSourceFilter = app.FilterItemSource;
app.CollectedItemVisibilityFilter = app.NoFilter;
app.MissingItemVisibilityFilter = app.NoFilter;
app.ClassRequirementFilter = app.NoFilter;
app.RaceRequirementFilter = app.NoFilter;

local function CreateMinimapButton()
	-- Create the Button for the Minimap frame. Create a local and non-local copy.
	local button = CreateFrame("BUTTON", app:GetName() .. "-Minimap", Minimap);
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD");
	button:SetFrameStrata("HIGH");
	button:SetMovable(true);
	button:EnableMouse(true);
	button:SetSize(33, 33);
	button:SetPoint("CENTER", 0, 0, "CENTER", 0, 0);
	button:RegisterForDrag("LeftButton", "RightButton");
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	
	-- Create the Button Texture
	local texture = button:CreateTexture(nil, "BACKGROUND");
	texture:SetTexture("Interface\\Icons\\INV_Axe_106.blp");
	texture:SetSize(21, 21);
	texture:SetTexCoord(0,1,0,1);
	texture:SetPoint("TOPLEFT", 7, -6);
	
	-- Create the Button Tracking Border
	local border = button:CreateTexture(nil, "BORDER");
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder");
	border:SetSize(56, 56);
	border:SetPoint("TOPLEFT");
	
	-- Button Configuration
	button.update = function(self)
		local position = GetDataMember("Position", -19.9380328877568);
		self:SetPoint("CENTER", "Minimap", "CENTER", -78 * cos(position), 78 * sin(position));
	end
	local update = function(self)
		local w, x = GetCursorPosition();
		local y, z = Minimap:GetLeft(), Minimap:GetBottom();
		local s = UIParent:GetScale();
		w = y - w / s + 70; x = x / s - z - 70;
		SetDataMember("Position", math.deg(math.atan2(x, w)));
		self:Raise();
		self:update();
	end

	-- Register for Frame Events
	button:SetScript("OnDragStart", function(self)
		self:SetScript("OnUpdate", update);
	end);
	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil);
	end);
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT");
		GameTooltip:SetText(app.DisplayName);
		GameTooltip:AddLine(L("MINIMAP_MOUSEOVER_TEXT"), 1, 1, 1);
		GameTooltip:Show();
	end);
	button:SetScript("OnLeave", function(self)
		GameTooltip:Hide();
	end);
	button:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
			-- Right Button opens the Options menu.  (Calling this twice actually makes it work correctly)
			ShowInterfaceOptions();
		else
			-- Left Button Toggles the App
			app:ToggleWindow("Prime");
		end
	end);
	button:update();
	button:Show();
	return button;
end
local function CreateSettingsMenu()
	local name = app:GetName();
	local frame = CreateFrame("FRAME", name .. "-Settings", UIParent);
	frame.name = L("TITLE_OPTIONS");
	InterfaceOptions_AddCategory(frame);
	
	frame.Title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
    frame.Title:SetPoint("TOPLEFT", 16, -16)
    frame.Title:SetText(L("TITLE_OPTIONS"));
	
	frame.Version = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
    frame.Version:SetPoint("TOPRIGHT", -16, -16)
    frame.Version:SetText(GetAddOnMetadata("AllTheThings", "Version"));
	
	frame.Separator = frame:CreateTexture(nil, "ARTWORK");
	frame.Separator:SetPoint("LEFT", frame.Title, "BOTTOMLEFT", 0, -2);
	frame.Separator:SetColorTexture(0.2, 0.2, 0.2);
	frame.Separator:SetSize(590, 1);
	
	-- Preferences
	frame.PreferencesTitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal");
    frame.PreferencesTitle:SetPoint("TOPLEFT", frame.Separator, "BOTTOMLEFT", 10, -10);
    frame.PreferencesTitle:SetText(L("PREFERENCES"));
	
	frame.ShowMinimapButton = CreateFrame("CheckButton", name .. "-ShowMinimapButton", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowMinimapButton:SetPoint("TOPLEFT", frame.PreferencesTitle, "BOTTOMLEFT", 10, -4);
	frame.ShowMinimapButton.Label = _G[frame.ShowMinimapButton:GetName() .. "Text"];
	frame.ShowMinimapButton.Label:SetText("Show Minimap Button");
	frame.ShowMinimapButton.Label:SetWidth(200);
	frame.ShowMinimapButton:SetChecked(GetDataMember("ShowMinimapButton"));
	frame.ShowMinimapButton:SetScript("OnClick", function(self)
		local checked = self:GetChecked();
		SetDataMember("ShowMinimapButton", checked);
		if (checked == true) then
			if not app.Minimap then app.Minimap = CreateMinimapButton(); end
			app.Minimap:Show();
		elseif app.Minimap then
			app.Minimap:Hide();
		end
	end);
	
	frame.ShowNotifications = CreateFrame("CheckButton", name .. "-ShowNotifications", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowNotifications:SetPoint("LEFT", frame.PreferencesTitle, "LEFT", 10, 0);
	frame.ShowNotifications:SetPoint("TOP", frame.ShowMinimapButton, "BOTTOM", 0, 6);
	frame.ShowNotifications.Label = _G[frame.ShowNotifications:GetName() .. "Text"];
	frame.ShowNotifications.Label:SetText("Show Collection Notifications");
	frame.ShowNotifications.Label:SetWidth(200);
	frame.ShowNotifications:SetChecked(GetDataMember("ShowNotifications", true));
	frame.ShowNotifications:SetScript("OnClick", function(self)
		SetDataMember("ShowNotifications", self:GetChecked());
	end);
	
	frame.ShowCompletedGroups = CreateFrame("CheckButton", name .. "-ShowCompletedGroups", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowCompletedGroups:SetPoint("LEFT", frame.PreferencesTitle, "LEFT", 10, 0);
	frame.ShowCompletedGroups:SetPoint("TOP", frame.ShowNotifications, "BOTTOM", 0, 6);
	frame.ShowCompletedGroups.Label = _G[frame.ShowCompletedGroups:GetName() .. "Text"];
	frame.ShowCompletedGroups.Label:SetText("Show Completed Groups");
	frame.ShowCompletedGroups.Label:SetWidth(200);
	frame.ShowCompletedGroups:SetChecked(GetDataMember("ShowCompletedGroups"));
	frame.ShowCompletedGroups:SetScript("OnClick", function(self)
		SetDataMember("ShowCompletedGroups", self:GetChecked());
		if self:GetChecked() then
			app.GroupVisibilityFilter = app.NoFilter;
		else
			app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
		end
		app:RefreshData();
	end);
	
	frame.ShowCollectedItems = CreateFrame("CheckButton", name .. "-ShowCollectedItems", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowCollectedItems:SetPoint("TOPLEFT", frame.ShowCompletedGroups, "BOTTOMLEFT", 0, 6);
	frame.ShowCollectedItems.Label = _G[frame.ShowCollectedItems:GetName() .. "Text"];
	frame.ShowCollectedItems.Label:SetText("Show Collected Items");
	frame.ShowCollectedItems.Label:SetWidth(200);
	frame.ShowCollectedItems:SetChecked(GetDataMember("ShowCollectedItems"));
	frame.ShowCollectedItems:SetScript("OnClick", function(self)
		SetDataMember("ShowCollectedItems", self:GetChecked());
		if self:GetChecked() then
			app.CollectedItemVisibilityFilter = app.NoFilter;
		else
			app.CollectedItemVisibilityFilter = app.Filter;
		end
		app:RefreshData();
	end);
	
	frame.ShowMissingItems = CreateFrame("CheckButton", name .. "-ShowMissingItems", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowMissingItems:SetPoint("TOPLEFT", frame.ShowCollectedItems, "BOTTOMLEFT", 0, 6);
	frame.ShowMissingItems.Label = _G[frame.ShowMissingItems:GetName() .. "Text"];
	frame.ShowMissingItems.Label:SetText("Show Missing Items");
	frame.ShowMissingItems.Label:SetWidth(200);
	frame.ShowMissingItems:SetChecked(GetDataMember("ShowMissingItems"));
	frame.ShowMissingItems:SetScript("OnClick", function(self)
		SetDataMember("ShowMissingItems", self:GetChecked());
		if self:GetChecked() then
			app.MissingItemVisibilityFilter = app.NoFilter;
		else
			app.MissingItemVisibilityFilter = app.Filter;
		end
		app:RefreshData();
	end);
	
	frame.UniqueAppearances = CreateFrame("CheckButton", name .. "-UniqueAppearances", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.UniqueAppearances:SetPoint("TOPLEFT", frame.ShowMissingItems, "BOTTOMLEFT", 10, 2);
	frame.UniqueAppearances.Label = _G[frame.UniqueAppearances:GetName() .. "Text"];
	frame.UniqueAppearances.Label:SetText("> |CFFFFFF00Turn Off Completionist Mode|r <");
	frame.UniqueAppearances.Label:SetWidth(250);
	frame.UniqueAppearances:SetChecked(GetDataMember("UniqueAppearances"));
	frame.UniqueAppearances:SetScript("OnClick", function(self)
		SetDataMember("UniqueAppearances", self:GetChecked());
		SetDataMember("Collected", {});	-- This option causes a caching issue, so we have to purge the collected data cache.
		--[[
		SetDataMember("CollectedPets", {});
		SetDataMember("CollectedToys", {});
		SetDataMember("CollectedIllusions", {});
		SetDataMember("CollectedSpecies", {});
		SetDataMember("CollectedMounts", {});
		]]--
		if self:GetChecked() then
			app.ItemSourceFilter = app.FilterItemSourceUnique;
		else
			app.ItemSourceFilter = app.FilterItemSource;
		end
		app:RefreshData(false, true);
		RefreshCollections();
	end);
	
	frame.AutoMiniList = CreateFrame("CheckButton", name .. "-AutoMiniList", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.AutoMiniList:SetPoint("LEFT", frame.ShowMinimapButton.Label, "RIGHT", 50, 6);
	frame.AutoMiniList.Label = _G[frame.AutoMiniList:GetName() .. "Text"];
	frame.AutoMiniList.Label:SetText("Auto Mini List");
	frame.AutoMiniList.Label:SetWidth(300);
	frame.AutoMiniList:SetChecked(GetDataMember("AutoMiniList", true));
	frame.AutoMiniList:SetScript("OnClick", function(self)
		SetDataMember("AutoMiniList", self:GetChecked());
		if self:GetChecked() then
			OpenMiniListForCurrentZone();
		end
	end);
	
	frame.AutoRefreshSaves = CreateFrame("CheckButton", name .. "-AutoRefreshSaves", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.AutoRefreshSaves:SetPoint("TOPLEFT", frame.AutoMiniList, "BOTTOMLEFT", 0, 6);
	frame.AutoRefreshSaves.Label = _G[frame.AutoRefreshSaves:GetName() .. "Text"];
	frame.AutoRefreshSaves.Label:SetText("Auto Refresh Saves");
	frame.AutoRefreshSaves.Label:SetWidth(300);
	frame.AutoRefreshSaves:SetChecked(GetDataMember("AutoRefreshSaves"));
	frame.AutoRefreshSaves:SetScript("OnClick", function(self)
		SetDataMember("AutoRefreshSaves", self:GetChecked());
		if self:GetChecked() then
			app:RegisterEvent("BOSS_KILL");
		else
			app:UnregisterEvent("BOSS_KILL");
		end
	end);
	
	
	frame.PlayFanfare = CreateFrame("CheckButton", name .. "-PlayFanfare", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.PlayFanfare:SetPoint("TOPLEFT", frame.AutoRefreshSaves, "BOTTOMLEFT", 0, 6);
	frame.PlayFanfare.Label = _G[frame.PlayFanfare:GetName() .. "Text"];
	frame.PlayFanfare.Label:SetText("Play Collection Fanfare");
	frame.PlayFanfare.Label:SetWidth(300);
	frame.PlayFanfare:SetChecked(GetDataMember("PlayFanfare"));
	frame.PlayFanfare:SetScript("OnClick", function(self)
		SetDataMember("PlayFanfare", self:GetChecked());
	end);
	
	frame.PlayRemoveSound = CreateFrame("CheckButton", name .. "-PlayRemoveSound", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.PlayRemoveSound:SetPoint("TOPLEFT", frame.PlayFanfare, "BOTTOMLEFT", 0, 6);
	frame.PlayRemoveSound.Label = _G[frame.PlayRemoveSound:GetName() .. "Text"];
	frame.PlayRemoveSound.Label:SetText("Play Remove Sound");
	frame.PlayRemoveSound.Label:SetWidth(300);
	frame.PlayRemoveSound:SetChecked(GetDataMember("PlayRemoveSound"));
	frame.PlayRemoveSound:SetScript("OnClick", function(self)
		SetDataMember("PlayRemoveSound", self:GetChecked());
	end);
	
	frame.EnableTooltipInformation = CreateFrame("CheckButton", name .. "-EnableTooltipInformation", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.EnableTooltipInformation:SetPoint("TOPLEFT", frame.PlayRemoveSound, "BOTTOMLEFT", 0, 6);
	frame.EnableTooltipInformation.Label = _G[frame.EnableTooltipInformation:GetName() .. "Text"];
	frame.EnableTooltipInformation.Label:SetText("Enable Tooltip Information");
	frame.EnableTooltipInformation.Label:SetWidth(300);
	frame.EnableTooltipInformation:SetChecked(GetDataMember("EnableTooltipInformation"));
	frame.EnableTooltipInformation:SetScript("OnClick", function(self)
		SetDataMember("EnableTooltipInformation", self:GetChecked());
	end);
	
	frame.ShowSharedAppearances = CreateFrame("CheckButton", name .. "-ShowSharedAppearances", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowSharedAppearances:SetPoint("TOPLEFT", frame.EnableTooltipInformation, "BOTTOMLEFT", 10, 6);
	frame.ShowSharedAppearances.Label = _G[frame.ShowSharedAppearances:GetName() .. "Text"];
	frame.ShowSharedAppearances.Label:SetText("Show Shared Appearances");
	frame.ShowSharedAppearances.Label:SetWidth(300);
	frame.ShowSharedAppearances:SetChecked(GetDataMember("ShowSharedAppearances"));
	frame.ShowSharedAppearances:SetScript("OnClick", function(self)
		SetDataMember("ShowSharedAppearances", self:GetChecked());
		wipe(searchCache);
	end);
	
	frame.ShowSources = CreateFrame("CheckButton", name .. "-ShowSources", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.ShowSources:SetPoint("TOPLEFT", frame.ShowSharedAppearances, "BOTTOMLEFT", 0, 6);
	frame.ShowSources.Label = _G[frame.ShowSources:GetName() .. "Text"];
	frame.ShowSources.Label:SetText("Show " .. app.DisplayName .. " Sources");
	frame.ShowSources.Label:SetWidth(300);
	frame.ShowSources:SetChecked(GetDataMember("ShowSources"));
	frame.ShowSources:SetScript("OnClick", function(self)
		SetDataMember("ShowSources", self:GetChecked());
		wipe(searchCache);
	end);
	
	
	-- Item Filters
	local itemFilters = GetPersonalDataMember("ItemFilters");
	frame.FiltersTitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal");
    frame.FiltersTitle:SetPoint("LEFT", frame.PreferencesTitle, "LEFT", 0, 0);
    frame.FiltersTitle:SetPoint("TOP", frame.UniqueAppearances, "BOTTOM", 0, -10);
    frame.FiltersTitle:SetText(L("FILTERS"));
	local lastFilter = frame.FiltersTitle;
	
	frame.IgnoreAllFilters = CreateFrame("CheckButton", name .. "-IgnoreAllFilters", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.IgnoreAllFilters:SetPoint("LEFT", frame.PreferencesTitle, "LEFT", 0, 0);
    frame.IgnoreAllFilters:SetPoint("TOP", lastFilter, "BOTTOM", 0, 0);
	frame.IgnoreAllFilters.Label = _G[frame.IgnoreAllFilters:GetName() .. "Text"];
	frame.IgnoreAllFilters.Label:SetText("Ignore All Filters (Debug Mode)");
	frame.IgnoreAllFilters.Label:SetWidth(250);
	frame.IgnoreAllFilters:SetChecked(GetDataMember("IgnoreAllFilters"));
	frame.IgnoreAllFilters:SetScript("OnClick", function(self)
		SetDataMember("IgnoreAllFilters", self:GetChecked());
		app:RefreshData();
	end);
	lastFilter = frame.IgnoreAllFilters;
	
	frame.IgnoreFiltersOnNonBindingItems = CreateFrame("CheckButton", name .. "-IgnoreFiltersOnNonBindingItems", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.IgnoreFiltersOnNonBindingItems:SetPoint("TOP", frame.IgnoreAllFilters, "TOP", 0, 0);
	frame.IgnoreFiltersOnNonBindingItems:SetPoint("LEFT", frame.PlayFanfare, "LEFT", 0, 0);
	frame.IgnoreFiltersOnNonBindingItems.Label = _G[frame.IgnoreFiltersOnNonBindingItems:GetName() .. "Text"];
	frame.IgnoreFiltersOnNonBindingItems.Label:SetText("Ignore All Filters for BoE / BoA Items");
	frame.IgnoreFiltersOnNonBindingItems.Label:SetWidth(250);
	frame.IgnoreFiltersOnNonBindingItems:SetChecked(GetDataMember("IgnoreFiltersOnNonBindingItems"));
	frame.IgnoreFiltersOnNonBindingItems:SetScript("OnClick", function(self)
		SetDataMember("IgnoreFiltersOnNonBindingItems", self:GetChecked());
		if self:GetChecked() then
			app.ItemBindFilter = app.FilterItemBind;
		else
			app.ItemBindFilter = app.Filter;
		end
		app:RefreshData(false, true);
	end);
	
	
	-- "Armor Types" and "Non-Equipment Types"
	local itemFilterNames = L("FILTER_ID_TYPES");
	for itemClassID,filters in pairs({ [4] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } }) do
		local itemClassFilter = CreateFrame("CheckButton", name .. "-" .. itemClassID, frame, "InterfaceOptionsCheckButtonTemplate");
		itemClassFilter:SetPoint("LEFT", frame.ShowMissingItems, "LEFT", 0, 0);
		itemClassFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 0);
		itemClassFilter.itemClassID = itemClassID;
		itemClassFilter.Label = _G[itemClassFilter:GetName() .. "Text"];
		itemClassFilter.Label:SetText(GetItemClassInfo(itemClassID) .. " (" .. itemClassID .. ")");
		itemClassFilter.Label:SetWidth(200);
		itemClassFilter.groups = {};
		itemClassFilter:SetScript("OnClick", function(self)
			for j, f in ipairs(self.groups) do
				local checked = not itemFilters[f.filter];
				itemFilters[f.filter] = checked;
				f:SetChecked(checked);
			end
			self:SetChecked(false);
			app:RefreshData();
		end);
		lastFilter = itemClassFilter;
		for j, filter in ipairs(filters) do
			local itemFilter = CreateFrame("CheckButton", itemClassFilter:GetName() .. "-" .. filter, frame, "InterfaceOptionsCheckButtonTemplate");
			itemFilter:SetPoint("LEFT", frame.ShowMissingItems, "LEFT", 10, 0);
			itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
			itemFilter.filter = filter;
			itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
			itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
			itemFilter.Label:SetWidth(200);
			lastFilter = itemFilter;
			tinsert(itemClassFilter.groups, itemFilter);
			itemFilter:SetChecked(itemFilters[filter]);
			itemFilter:SetScript("OnClick", function(self)
				itemFilters[self.filter] = self:GetChecked();
				app:RefreshData();
			end);
		end
	end
	
	-- The "Non-Equipment Types Title" (not actually a title, this is an anchor reference. :) )
	frame.NonEquipmentTypesTitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal");
    frame.NonEquipmentTypesTitle:SetPoint("LEFT", frame.PreferencesTitle, "LEFT", 0, 0);
    frame.NonEquipmentTypesTitle:SetPoint("TOP", lastFilter, "BOTTOM", 0, -10);
	
	-- "Weapons Types"
	local weaponItemClassID = 2;
	local weaponFilters = CreateFrame("CheckButton", name .. "-" .. weaponItemClassID, frame, "InterfaceOptionsCheckButtonTemplate");
	weaponFilters:SetPoint("LEFT", frame.NonEquipmentTypesTitle, "LEFT", 200, 0);
	weaponFilters:SetPoint("TOP", frame.IgnoreAllFilters, "BOTTOM", 0, 0);
	weaponFilters.itemClassID = weaponItemClassID;
	weaponFilters.Label = _G[weaponFilters:GetName() .. "Text"];
	weaponFilters.Label:SetText(GetItemClassInfo(weaponItemClassID) .. " (" .. weaponItemClassID .. ")");
	weaponFilters.Label:SetWidth(200);
	weaponFilters.groups = {};
	weaponFilters:SetScript("OnClick", function(self)
		for i, f in ipairs(self.groups) do
			local checked = not itemFilters[f.filter];
			itemFilters[f.filter] = checked;
			f:SetChecked(checked);
		end
		self:SetChecked(false);
		app:RefreshData();
	end);
	
	lastFilter = weaponFilters;
	for i, filter in ipairs({ 20, 21, 22, 23, 24, 25, 26, 35 }) do
		local itemFilter = CreateFrame("CheckButton", weaponFilters:GetName() .. "-" .. filter, frame, "InterfaceOptionsCheckButtonTemplate");
		itemFilter:SetPoint("LEFT", weaponFilters, "LEFT", 10, 0);
		itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
		itemFilter.filter = filter;
		itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
		itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
		itemFilter.Label:SetWidth(200);
		lastFilter = itemFilter;
		tinsert(weaponFilters.groups, itemFilter);
		itemFilter:SetChecked(itemFilters[filter]);
		itemFilter:SetScript("OnClick", function(self)
			itemFilters[self.filter] = self:GetChecked();
			app:RefreshData();
		end);
	end
	
	lastFilter = weaponFilters;
	for i, filter in ipairs({ 27, 28, 29, 30, 31, 32, 33, 34 }) do
		local itemFilter = CreateFrame("CheckButton", weaponFilters:GetName() .. filter, frame, "InterfaceOptionsCheckButtonTemplate");
		itemFilter:SetPoint("LEFT", weaponFilters, "LEFT", 210, 0);
		itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
		itemFilter.filter = filter;
		itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
		itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
		itemFilter.Label:SetWidth(200);
		lastFilter = itemFilter;
		tinsert(weaponFilters.groups, itemFilter);
		itemFilter:SetChecked(itemFilters[filter]);
		itemFilter:SetScript("OnClick", function(self)
			itemFilters[self.filter] = self:GetChecked();
			app:RefreshData();
		end);
	end
	
	-- "Non-Equipment Types" ("Title" is actually blank - this is used for positioning.)
	lastFilter = frame.NonEquipmentTypesTitle;
	for i,filter in ipairs({ 100, 101, 102, 103 }) do
		local itemFilter = CreateFrame("CheckButton", name .. "-15-" .. filter, frame, "InterfaceOptionsCheckButtonTemplate");
		itemFilter:SetPoint("LEFT", frame.ShowMissingItems, "LEFT", 0, 0);
		itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
		itemFilter.filter = filter;
		itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
		itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
		itemFilter.Label:SetWidth(200);
		lastFilter = itemFilter;
		itemFilter:SetChecked(itemFilters[filter]);
		itemFilter:SetScript("OnClick", function(self)
			itemFilters[self.filter] = self:GetChecked();
			app:RefreshData();
		end);
	end
	
	-- "Non-Equipment Types" (Part 2)
	lastFilter = frame.NonEquipmentTypesTitle;
	for i,filter in ipairs({ 104, 105, 106, 200 }) do
		local itemFilter = CreateFrame("CheckButton", name .. "-15-" .. filter, frame, "InterfaceOptionsCheckButtonTemplate");
		itemFilter:SetPoint("LEFT", frame.NonEquipmentTypesTitle, "LEFT", 200, 0);
		itemFilter:SetPoint("TOP", lastFilter, "BOTTOM", 0, 6);
		itemFilter.filter = filter;
		itemFilter.Label = _G[itemFilter:GetName() .. "Text"];
		itemFilter.Label:SetText(itemFilterNames[filter] .. " (" .. filter .. ")");
		itemFilter.Label:SetWidth(200);
		lastFilter = itemFilter;
		itemFilter:SetChecked(itemFilters[filter]);
		itemFilter:SetScript("OnClick", function(self)
			itemFilters[self.filter] = self:GetChecked();
			app:RefreshData();
		end);
	end
	
	frame.FilterGroupsByLevel = CreateFrame("CheckButton", name .. "-FilterGroupsByLevel", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.FilterGroupsByLevel:SetPoint("LEFT", frame.NonEquipmentTypesTitle, "LEFT", 400, 0);
	frame.FilterGroupsByLevel:SetPoint("TOP", frame.NonEquipmentTypesTitle, "BOTTOM", 0, 6);
	frame.FilterGroupsByLevel.Label = _G[frame.FilterGroupsByLevel:GetName() .. "Text"];
	frame.FilterGroupsByLevel.Label:SetText("Filter Groups By Level");
	frame.FilterGroupsByLevel.Label:SetWidth(300);
	frame.FilterGroupsByLevel:SetChecked(GetDataMember("FilterGroupsByLevel"));
	frame.FilterGroupsByLevel:SetScript("OnClick", function(self)
		SetDataMember("FilterGroupsByLevel", self:GetChecked());
		if self:GetChecked() then
			app:RegisterEvent("PLAYER_LEVEL_UP");
			app.GroupRequirementsFilter = app.FilterGroupsByLevel;
		else
			app:UnregisterEvent("PLAYER_LEVEL_UP");
			app.GroupRequirementsFilter = app.NoFilter;
		end
		app:RefreshData();
	end);

	frame.FilterItemsByClass = CreateFrame("CheckButton", name .. "-FilterItemsByClass", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.FilterItemsByClass:SetPoint("TOPLEFT", frame.FilterGroupsByLevel, "BOTTOMLEFT", 0, 6);
	frame.FilterItemsByClass.Label = _G[frame.FilterItemsByClass:GetName() .. "Text"];
	frame.FilterItemsByClass.Label:SetText("Filter Items By Class");
	frame.FilterItemsByClass.Label:SetWidth(300);
	frame.FilterItemsByClass:SetChecked(GetDataMember("FilterItemsByClass"));
	frame.FilterItemsByClass:SetScript("OnClick", function(self)
		SetDataMember("FilterItemsByClass", self:GetChecked());
		if self:GetChecked() then
			app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
		else
			app.ClassRequirementFilter = app.NoFilter;
		end
		app:RefreshData();
	end);

	frame.FilterItemsByRace = CreateFrame("CheckButton", name .. "-FilterItemsByRace", frame, "InterfaceOptionsCheckButtonTemplate");
	frame.FilterItemsByRace:SetPoint("TOPLEFT", frame.FilterItemsByClass, "BOTTOMLEFT", 0, 6);
	frame.FilterItemsByRace.Label = _G[frame.FilterItemsByRace:GetName() .. "Text"];
	frame.FilterItemsByRace.Label:SetText("Filter Items By Race");
	frame.FilterItemsByRace.Label:SetWidth(300);
	frame.FilterItemsByRace:SetChecked(GetDataMember("FilterItemsByRace"));
	frame.FilterItemsByRace:SetScript("OnClick", function(self)
		SetDataMember("FilterItemsByRace", self:GetChecked());
		if self:GetChecked() then
			app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
		else
			app.RaceRequirementFilter = app.NoFilter;
		end
		app:RefreshData();
	end);

end


-- Row Helper Functions
local CreateRow;
local function ClearRowData(self)
	self.ref = nil;
	self.Background:Hide();
	self.Texture:Hide();
	self.Indicator:Hide();
	self.Summary:Hide();
	self.Label:Hide();
	self:Hide();
end
local function SetRowData(self, data)
	ClearRowData(self);
	if data then
		local text = data.text;
		if not text or string.find(text, "%[%]") then
			if data.itemID then
				-- Build the Item Link based on the item ID and bonus IDs
				local itemLink = data.itemID;
				local bonusIDs = data.ids;
				if bonusIDs then
					local count = #bonusIDs;
					itemLink = string.format("item:%d::::::::::::%d", itemLink, count);
					for i=1,count do itemLink = itemLink .. ":" .. bonusIDs[i]; end
				end
			
				local name, link, _, _, _, _, _, _, _, texture = GetItemInfo(itemLink);
				if not link then
					self:GetParent().processingLinks = true;
					text = "Retrieving information...";
				else
					-- Harvest the Source ID. (shortened to "s")
					if not data.s or data.s == 0 then
						local s, dressable = GetSourceID(link);
						if dressable then 
							getmetatable(data).__index.s = s;
							SetDataMember("Items", app.Items); -- Uncomment for harvesting Source IDs
						end
					end
					data.link = link;
					data.icon = texture;
					data.text = link;
					data.icon = texture;
					text = link;
				end
			else
				self:GetParent().processingLinks = true;
				text = "Retrieving information...";
			end
		end
		local leftmost = self;
		local relative = "LEFT";
		local x = (((data.indent or 0) + 1) * GetDataMember("Indent", 8)) or 0;
		self.ref = data;
		if data.back then
			self.Background:SetAlpha(data.back or 0.2);
			self.Background:Show();
		end
		if data.saved then
			self.Indicator:SetTexture("Interface\\FriendsFrame\\StatusIcon-DnD");
			self.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
			self.Indicator:Show();
		elseif data.u then
			local reason = L("UNOBTAINABLE_ITEM_REASONS")[data.u or 1];
			self.Indicator:SetTexture(L("UNOBTAINABLE_ITEM_TEXTURES")[reason[1]] or "Interface\\FriendsFrame\\StatusIcon-DnD");
			self.Indicator:SetPoint("RIGHT", leftmost, relative, x, 0);
			self.Indicator:Show();
		end
		if data.icon then
			self.Texture:SetPoint("LEFT", leftmost, relative, x, 0);
			self.Texture:SetTexture(data.icon);
			self.Texture:Show();
			leftmost = self.Texture;
			relative = "RIGHT";
			x = 4;
		end
		
		if data.total and data.total > 0 then
			local percent = data.collected / data.total;
			self.Summary:SetText("|c" .. GetProgressColor(percent) .. tostring(data.collected) .. " / " .. tostring(data.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
			self.Summary:Show();
		else
			self.Summary:SetText(L(data.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"));
			self.Summary:Show();
		end
		self.Label:SetPoint("LEFT", leftmost, relative, x, 0);
		if self.Summary and self.Summary:IsShown() then
			self.Label:SetPoint("RIGHT", self.Summary, "LEFT", 0, 0);
		else
			self.Label:SetPoint("RIGHT");
		end
		self.Label:SetText(text);
		self.Label:Show();
		self:Show();
	end
end
local function UpdateVisibleRowData(self)
	-- If there is no raw data, then return immediately.
	if not self.rowData then return; end
	
	-- Make it so that if you scroll all the way down, you have the ability to see all of the text every time.
	local container = self.Container;
	local totalRowCount = #self.rowData + 2;
	local rowCount = math.floor(container:GetHeight() / container.rowHeight);
	local current = math.max(1, math.min(self.ScrollBar.CurrentValue, totalRowCount - rowCount));
	self.ScrollBar:SetMinMaxValues(1, math.max(1, totalRowCount - rowCount));
	
	-- Create up to the maximum number of rows required to fill the container.
	for i=#container.rows,rowCount do CreateRow(container); end
	
	-- Set the data for the first row to ALWAYS display the topmost data (essentially becoming a Title Bar)
	SetRowData(container.rows[1], self.rowData[1]);
	current = current + 1;
	
	-- Fill the remaining rows up to the (visible) row count.
	for i=2,rowCount do
		SetRowData(container.rows[i], self.rowData[current]);
		current = current + 1;
	end
	
	-- Hide the extra rows if any exist (these are created when you make the window larger and then shrink, the leftover frames are still alive)
	for i=rowCount + 1,#container.rows do
		ClearRowData(container.rows[i]);
	end
	
	-- If the rows need to be processed again, do so next update.
	if container.processingLinks then
		container.processingLinks = nil;
		Push(app, function()
			UpdateVisibleRowData(self);
		end);
	end
end
local function HideParent(self)
	self:GetParent():Toggle();
end
local function IsSelfOrChild(self, focus)
	-- This function helps validate that the focus is within the local hierarchy.
	return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
local function StopMovingOrSizing(self)
	if self.isMoving then
		self:StopMovingOrSizing();
		self.isMoving = false;
	end
end
local function StartMovingOrSizing(self, fromChild)
	if self.isMoving then
		StopMovingOrSizing(self);
	else
		self.isMoving = true;
		if ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < self:GetTop() - 40) then
			self:StartSizing();
			Push(self, function()
				if self.isMoving then
					UpdateVisibleRowData(self);
					return true;
				end
			end);
		else
			self:StartMoving();
			Push(app, function()
				if self.isMoving then
					-- This fixes a bug where the window will get stuck on the mouse until you reload.
					if IsSelfOrChild(self, GetMouseFocus()) then
						return true;
					else
						StopMovingOrSizing(self);
					end
				end
			end);
		end
	end
end
local function RowOnClick(self, button)
	local reference = self.ref;
	if reference then
		if IsShiftKeyDown() then
			if reference.rows then
				app.print("Refreshing " .. reference.text .. " collection status...");
				RefreshCollections(reference);
			else
				app.print(reference.link or self.Label:GetText());
			end
		elseif IsControlKeyDown() then
			DressUpItemLink(reference.link or self.Label:GetText());
		elseif reference.rows then
			if button == "LeftButton" then
				if self.index > 0 then
					-- Expand Functionality
					if IsAltKeyDown() then
						ExpandGroupsRecursively(reference, not reference.expanded);
					else
						reference.expanded = not reference.expanded;
					end
					app:UpdateWindows();
				else
					-- Allow the First Frame to move the parent.
					local owner = self:GetParent():GetParent();
					self:SetScript("OnMouseUp", function(self)
						self:SetScript("OnMouseUp", nil);
						StopMovingOrSizing(owner);
					end);
					StartMovingOrSizing(owner, true);
				end
			else
				if self.index > 0 then
					-- Pop Out Functionality! :O
					local popout = app:GetWindow(self.Label:GetText());
					popout.data = self.ref;
					ExpandGroupsRecursively(popout.data, true);
					popout:Toggle(true);
				else
					-- Configuration Functionality!
					ShowInterfaceOptions();
				end
			end
		end
	else
		if IsShiftKeyDown() then
			app.print(reference.link or self.Label:GetText());
		elseif IsControlKeyDown() then
			DressUpItemLink(reference.link or self.Label:GetText());
		end
	end
end
local function RowOnEnter(self)
	local reference = self.ref; -- NOTE: This is the good ref value, not the parasitic one.
	if reference and GameTooltip then
		GameTooltipIcon:Hide();
		GameTooltip:ClearLines();
		GameTooltipIcon:ClearAllPoints();
		if self:GetCenter() > (UIParent:GetWidth() / 2) then
			GameTooltip:SetOwner(self, "ANCHOR_LEFT");
			GameTooltipIcon:SetPoint("TOPRIGHT", GameTooltip, "TOPLEFT", 0, 0);
		else
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltipIcon:SetPoint("TOPLEFT", GameTooltip, "TOPRIGHT", 0, 0);
		end
		
		-- NOTE: Order matters, we "fall-through" certain values in order to pass this information to the item ID section.
		if reference.itemID then
			-- This is an item reference. :)
			if reference.link then
				GameTooltip:SetHyperlink(reference.link);
			else
				GameTooltip:SetText(self.Label:GetText());
				if reference.itemID then GameTooltip:AddDoubleLine(L("ITEM_ID"), tostring(reference.itemID)); end
			end
		elseif reference.instanceID then
			-- Contains information about an Instance (Raid or Dungeon)
			-- Is the player's character saved to this instance?
			if self.ref.saved and self.ref.saved then
				GameTooltip:SetInstanceLockEncountersComplete(self.ref.saved);
				GameTooltip:AddLine(" ");
			end
		else
			-- Standalone Fields
			if reference.toyID then GameTooltip:SetToyByItemID(reference.toyID);
			elseif not reference.encounterID then -- Dungeon Journal links do NOT work. :/
				local link = reference.link;
				if link then pcall(GameTooltip.SetHyperlink, GameTooltip, link); end
			end
		end
		
		-- Miscellaneous fields
		local style = GameTooltip:NumLines() < 1;
		if style then
			if not reference.total or reference.total < 1 then 
				GameTooltip:AddDoubleLine(self.Label:GetText(), L(reference.collected and "COLLECTED" or "NOT_COLLECTED"));
			else
				local percent = reference.collected / reference.total;
				GameTooltip:AddDoubleLine(self.Label:GetText(), "|c" .. GetProgressColor(percent) .. tostring(reference.collected) .. " / " .. tostring(reference.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
			end
		else
			if not reference.total or reference.total < 1 then
				GameTooltipTextRight1:SetText(L(reference.collected and "COLLECTED" or "NOT_COLLECTED"));
			else
				local percent = reference.collected / reference.total;
				GameTooltipTextRight1:SetText("|c" .. GetProgressColor(percent) .. tostring(reference.collected) .. " / " .. tostring(reference.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
			end
			GameTooltipTextRight1:Show();
		end
		
		if reference.Lvl then GameTooltip:AddDoubleLine(L("REQUIRES_LEVEL"), tostring(reference.Lvl)); end
		if reference.f then GameTooltip:AddDoubleLine(L("FILTER_ID"), tostring(L("FILTER_ID_TYPES")[reference.f])); end
		if reference.achievementID then GameTooltip:AddDoubleLine(L("ACHIEVEMENT_ID"), tostring(reference.achievementID)); end
		if reference.difficultyID then GameTooltip:AddDoubleLine(L("DIFFICULTY_ID"), tostring(reference.difficultyID)); end
		if reference.encounterID then GameTooltip:AddDoubleLine(L("ENCOUNTER_ID"), tostring(reference.encounterID)); end
		if reference.illusionID then GameTooltip:AddDoubleLine(L("ILLUSION_ID"), tostring(reference.illusionID)); end
		if reference.instanceID then GameTooltip:AddDoubleLine(L("INSTANCE_ID"), tostring(reference.instanceID)); end
		if reference.mountID then GameTooltip:AddDoubleLine(L("MOUNT_ID"), tostring(reference.mountID)); end
		if reference.npcID then GameTooltip:AddDoubleLine(L("NPC_ID"), tostring(reference.npcID)); end
		if reference.questID then
			GameTooltip:AddDoubleLine(L("QUEST_ID"), tostring(reference.questID));
			GameTooltip:AddDoubleLine(" ", L(IsQuestFlaggedCompleted(reference.questID) and "COMPLETE" or "INCOMPLETE"));
		end
		if reference.speciesID then GameTooltip:AddDoubleLine(L("SPECIES_ID"), tostring(reference.speciesID)); end
		if reference.spellID then GameTooltip:AddDoubleLine(L("SPELL_ID"), tostring(reference.spellID)); end
		if reference.tierID then GameTooltip:AddDoubleLine(L("EXPANSION_ID"), tostring(reference.tierID)); end
		if reference.description then GameTooltip:AddLine(reference.description, 1, 1, 1, 1); end
		if reference.mapID then GameTooltip:AddDoubleLine(L("MAP_ID"), tostring(reference.mapID)); end
		if not reference.itemID and reference.u then GameTooltip:AddLine(L("UNOBTAINABLE_ITEM_REASONS")[reference.u][2], 1, 1, 1, 1, true); end
		if reference.icon then
			if reference.rows then
				GameTooltipIcon:SetSize(96,96);
			else
				GameTooltipIcon:SetSize(64,64);
			end
			GameTooltipIcon.icon:SetTexture(reference.icon);
			GameTooltipIcon:Show();
		elseif reference.tierID then
			local tier = app.TierDB[reference.tierID];
			if tier then
				if tier.texture then
					GameTooltipIcon:SetSize(128,64);
					GameTooltipIcon.icon:SetTexture(tier.texture);
					GameTooltipIcon:Show();
				elseif tier.atlas then
					GameTooltipIcon:SetSize(128,64);
					GameTooltipIcon.icon:SetAtlas(tier.atlas);
					GameTooltipIcon:Show();
				end
			end
		end
		if reference.rows then
			GameTooltip:AddLine(L((self.index > 0 and "LEFT_CLICK_TO_EXPAND") or "LEFT_CLICK_TO_MOVE"), 1, 1, 1);
			GameTooltip:AddLine(L("SHIFT_LEFT_CLICK"), 1, 1, 1);
			GameTooltip:AddLine(L((self.index > 0 and "RIGHT_CLICK_TO_POPOUT") or "RIGHT_CLICK_TO_CONFIGURE"), 1, 1, 1);
		end
		GameTooltip:Show();
	end
end
local function RowOnLeave(self)
	if self.ref and GameTooltip then
		GameTooltip:Hide();
		GameTooltipIcon:Hide();
	end
end
CreateRow = function(self)
	local row = CreateFrame("Button", nil, self);
	row:SetHeight(self.rowHeight);
	row.index = #self.rows;
	if row.index == 0 then
		-- This means relative to the parent.
		row:SetPoint("TOPLEFT");
		row:SetPoint("TOPRIGHT");
	else
		-- This means relative to the row above this one.
		row:SetPoint("TOPLEFT", self.rows[row.index], "BOTTOMLEFT");
		row:SetPoint("TOPRIGHT", self.rows[row.index], "BOTTOMRIGHT");
	end
	table.insert(self.rows, row);
	
	-- Setup highlighting and event handling
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
	row:RegisterForClicks("LeftButtonDown","RightButtonDown");
	row:SetScript("OnClick", RowOnClick);
	row:SetScript("OnEnter", RowOnEnter);
	row:SetScript("OnLeave", RowOnLeave);
	row:EnableMouse(true);
	
	-- Background is used by the Map Highlight functionality.
	row.Background = row:CreateTexture(nil, "BACKGROUND");
	row.Background:SetPoint("LEFT", 4, 0);
	row.Background:SetPoint("BOTTOM");
	row.Background:SetPoint("RIGHT");
	row.Background:SetPoint("TOP");
	row.Background:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");
	
	-- Indicator is used by the Instance Saves functionality.
	row.Indicator = row:CreateTexture(nil, "ARTWORK");
	row.Indicator:SetPoint("BOTTOM");
	row.Indicator:SetPoint("TOP");
	row.Indicator:SetWidth(row:GetHeight());
	
	-- Texture is the icon.
	row.Texture = row:CreateTexture(nil, "ARTWORK");
	row.Texture:SetPoint("BOTTOM");
	row.Texture:SetPoint("TOP");
	row.Texture:SetWidth(row:GetHeight());
	
	-- Label is the text information you read.
	row.Label = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Label:SetJustifyH("LEFT");
	row.Label:SetPoint("BOTTOM");
	row.Label:SetPoint("TOP");
	
	-- Summary is the completion summary information. (percentage text)
	row.Summary = row:CreateFontString(nil, "ARTWORK", "GameFontNormal");
	row.Summary:SetJustifyH("CENTER");
	row.Summary:SetPoint("BOTTOM");
	row.Summary:SetPoint("RIGHT");
	row.Summary:SetPoint("TOP");
	
	-- Clear the Row Data Initially
	ClearRowData(row);
end

-- Processing Functions (Coroutines)
local function ProcessGroup(data, parent, indent, back)
	if parent.visible then
		if parent.mapID and parent.mapID == GetPersonalDataMember("MapID") then
			parent.back = 1;
		else 
			parent.back = back or parent.back;
		end
		parent.indent = indent;
		tinsert(data, parent);
		if parent.rows and parent.expanded then
			indent = indent + 1;
			back = parent.back * 0.5;
			for j, group in ipairs(parent.rows) do
				ProcessGroup(data, group, indent, back);
			end
		end
	end
end
local function UpdateGroups(parent, groups, bonusIDs)
	if groups then
		-- Iterate through the groups
		for key, group in ipairs(groups) do
			-- Determine if this user can enter the instance or acquire the item.
			local meetsRequirements = app.GroupRequirementsFilter(group);
			if meetsRequirements then
				-- Create a Row Data Object
				tinsert(parent.rows, group);
				
				-- Assign the meta table to the harvested item matching this bonus ID set.
				if group.itemID and not getmetatable(group) then setmetatable(group, { __index = (group.ignoreBonus and Harvest(group.itemID)) or Harvest(group.itemID, group.ids or bonusIDs) }); end
				
				-- If the 'can equip' filter says true
				if app.FilterItemClass(group) then
					-- Check if this is a group
					if group.groups then
						-- This group needs to be calculated
						if not group.rows then
							group.rows = {};
						else
							wipe(group.rows);
						end
						
						-- An item is a special case where it may have both an appearance and a set of items
						if group.itemID and group.s then
							if group.s > 0 then
								-- If an item has a source ID, that means we can check its collected status.
								group.collected = GetDataSubMember("Collected", group.s) and 1 or 0;
								group.total = 1;
							else
								-- This item is missing its source ID. :(
								group.collected = 0;
								group.total = 1;
								
								-- The source ID will need to be harvested.
								table.insert(GetTempDataMember("Missing"), group);
							end
						else
							-- Default to 0 for both
							group.total = 0;
							group.collected = 0;
						end
						
						-- Update the subgroups recursively...
						UpdateGroups(group, group.groups, group.ids or bonusIDs);
						
						-- Increment the parent group's totals.
						parent.total = (parent.total or 0) + group.total;
						parent.collected = (parent.collected or 0) + group.collected;
						group.visible = group.total > 0 and app.GroupVisibilityFilter(group);
					elseif group.rows then
						-- This is a pre-built group with finalized row data.
						group.rows = group.rows;
						group.total = #group.rows;
						group.collected = 0;
						parent.collected = (parent.collected or 0) + group.collected;
						parent.total = (parent.total or 0) + group.total;
						group.visible = group.total > 0;
					else
						-- This is a standalone item.
						if group.itemID then
							-- If an item has a source ID, that means we can check its collected status.
							if group.s and group.s > 0 then
								group.collected = GetDataSubMember("Collected", group.s);
							else
								-- If it doesn't, the source ID will need to be harvested.
								table.insert(GetTempDataMember("Missing"), group);
							end
						elseif group.illusionID then
							group.collected = GetDataSubMember("CollectedIllusions", group.illusionID);
						elseif group.mountID then
							group.collected = GetDataSubMember("CollectedMounts", group.mountID);
						elseif group.speciesID then
							group.collected = GetDataSubMember("CollectedSpecies", group.speciesID);
						elseif group.toyID then
							group.collected = GetDataSubMember("CollectedToys", group.toyID);
						end
						
						-- If we've collected the item, use the "Show Collected Items" filter.
						if group.collected then
							group.visible = app.CollectedItemVisibilityFilter(group);
						else
							-- Otherwise, use the "Show Missing Items" filter.
							group.visible = app.MissingItemVisibilityFilter(group);
						end
						
						-- Increment the parent group's totals.
						parent.total = (parent.total or 0) + 1;
						if group.collected then parent.collected = (parent.collected or 0) + 1; end
					end
				else
					-- Hide this group. We aren't filtering for it.
					group.visible = false;
				end
			end
		end
	end
end

-- Collection Window Creation
app.Windows = {};
local function OnScrollBarMouseWheel(self, delta)
	self.ScrollBar:SetValue(self.ScrollBar.CurrentValue - delta);
end
local function OnScrollBarValueChanged(self, value)
	local un = math.floor(value);
	local up = un + 1;
	self.CurrentValue = (up - value) > (-(un - value)) and un or up;
	UpdateVisibleRowData(self:GetParent());
end
local function SetWindowVisibility(self, show)
	if show then
		self:Show();
		self:Update();
		app:Show();
	else
		self:Hide();
		for i, self in pairs(app.Windows) do
			if self:IsVisible() then
				app:Show();
				return;
			end
		end
		app:Hide();
	end
	
	-- Return that at least one window is visible...
	return true;
end
local function ToggleWindow(self)
	return SetWindowVisibility(self, not self:IsVisible());
end
function app:ToggleWindow(suffix)
	local window = app.Windows[suffix];
	if window then ToggleWindow(window); end
end
local function UpdateWindow(self)
	-- If this window doesn't have data, do nothing.
	if not self.data then return; end
	if not self.rowData then
		self.rowData = {};
	else
		wipe(self.rowData);
	end
	if self.data and self:IsVisible() then
		self.data.expanded = true;
		ProcessGroup(self.rowData, self.data, 0, 0);
		UpdateVisibleRowData(self);
		return true;
	else
		UpdateVisibleRowData(self);
	end
end
local function UpdateWindowColor(self, suffix)
	self:SetBackdropBorderColor(1, 1, 1, 1);
	self:SetBackdropColor(0, 0, 0, 1);
end
function app:UpdateWindows()
	local anyUpdated = false;
	for i, window in pairs(app.Windows) do
		if window:Update() then anyUpdated = true; end
	end
	return anyUpdated;
end
function app:UpdateWindowColors()
	for suffix, window in pairs(app.Windows) do
		UpdateWindowColor(window, suffix);
	end
end
function app:GetDataCache()
	-- Update the Row Data by filtering raw data
	local allData = app:GetWindow("Prime").data;
	if not allData or not allData.total then
		allData = {};
		allData.rows = {};
		allData.expanded = true;
		allData.icon = "Interface\\Icons\\INV_Axe_106.blp";
		allData.text = app.DisplayName;
		allData.visible = true;
		allData.collected = 0;
		allData.total = 0;
		local groups, db = {};
		allData.groups = groups;
		
		-- Load the Sources
		if not app.Instances then
			app.LoadSources();
			app.LoadSources = nil;
		end
		
		-- Dungeons & Raids
		db = {};
		db.expanded = false;
		db.text = L("DUNGEONS&RAIDS");
		db.groups = app.Instances;
		table.insert(groups, db);
		
		-- Zones
		if app.Zones then
			db = {};
			db.expanded = false;
			db.text = L("ZONES");
			db.groups = app.Zones;
			table.insert(groups, db);
		end
		
		-- World Drops
		if app.WorldDrops then
			db = {};
			db.expanded = false;
			db.text = L("WORLD_DROPS");
			db.groups = app.WorldDrops;
			table.insert(groups, db);
		end
		
		-- World Events (deprecated?)
		if app.Events then
			db = {};
			db.expanded = false;
			db.text = L("EVENTS");
			db.groups = app.Events;
			table.insert(groups, db);
		end
		
		-- World Events
		if app.WorldEvents then
			db = {};
			db.expanded = false;
			db.text = L("EVENTS");
			db.groups = app.WorldEvents;
			table.insert(groups, db);
		end
		
		-- Professions
		if app.Professions then
			db = {};
			db.expanded = false;
			db.text = L("PROFESSIONS");
			db.groups = app.Professions;
			table.insert(groups, db);
		end
		
		-- Holidays (deprecated)
		if app.Holidays then
			db = {};
			db.expanded = false;
			db.text = L("HOLIDAYS");
			db.groups = app.Holidays;
			table.insert(groups, db);
		end
		
		-- Promotions (deprecated)
		if app.Promotions then
			db = {};
			db.expanded = false;
			db.text = L("PROMOTIONS");
			db.groups = app.Promotions;
			table.insert(groups, db);
		end
		
		-- Special Events (deprecated)
		if app.SpecialEvents then
			db = {};
			db.expanded = false;
			db.text = L("SPECIAL_EVENTS");
			db.groups = app.SpecialEvents;
			table.insert(groups, db);
		end
		
		-- Warcraft Anniversaries (deprecated)
		if app.Anniversaries then
			db = {};
			db.expanded = false;
			db.text = L("WARCRAFT_ANNIVERSARIES");
			db.groups = app.Anniversaries;
			table.insert(groups, db);
		end
		
		-- Class Sets
		if app.ClassSets then
			db = {};
			db.expanded = false;
			db.text = L("CLASS_SETS");
			db.groups = app.ClassSets;
			table.insert(groups, db);
		end
		
		-- Dungeon Sets
		if app.DungeonSets then
			db = {};
			db.expanded = false;
			db.text = L("DUNGEON_SETS");
			db.groups = app.DungeonSets;
			table.insert(groups, db);
		end
		
		-- Item Sets
		if app.ItemSets then
			db = {};
			db.expanded = false;
			db.text = L("ITEM_SETS");
			db.groups = app.ItemSets;
			table.insert(groups, db);
		end
		
		-- Gear Sets
		if app.GearSets then
			db = {};
			db.expanded = false;
			db.text = L("GEAR_SETS");
			db.groups = app.GearSets;
			table.insert(groups, db);
		end
		
		-- Companion Pets
		db = {};
		db.f = 101;
		db.expanded = false;
		db.text = L("COMPANION_PETS");
		db.groups = GetTempDataMember("COMPANION_PET_CACHE", {});
		table.insert(groups, db);
		
		-- Mounts (Dynamic)
		db = {};
		db.f = 100;
		db.expanded = false;
		db.text = L("MOUNTS");
		db.groups = GetTempDataMember("COMPANION_MOUNT_CACHE", {});
		table.insert(groups, db);
		
		local missingData = {};
		missingData.visible = true;
		missingData.expanded = false;
		missingData.text = "Items without Sources";
		missingData.rows = GetTempDataMember("Missing", {});
		table.insert(groups, missingData);
		app.refreshDataForce = true;
	end
	if app.refreshDataForce then
		app.refreshDataForce = nil;
		allData.collected = 0;
		allData.total = 0;
		wipe(allData.rows);
		wipe(GetTempDataMember("Missing"));
		UpdateGroups(allData, allData.groups);--, {767}); -- SOME DAY
		app:GetWindow("Prime").data = allData;
		
		-- NOTE: The auto refresh only happens once.
		if not app.autoRefreshedCollections then
			app.autoRefreshedCollections = true;
			if not GetPersonalDataMember("RefreshedCollectionsAlready") then
				GetPersonalDataMember("RefreshedCollectionsAlready", true);
				RefreshCollections();
			end
		end
	end
	return allData;
end
function app:RefreshData(lazy, safely)
	app.refreshDataForce = app.refreshDataForce or not lazy;
	if not app.refreshingData then
		app.refreshingData = true;
		StartCoroutine(app, function()
			-- This method can be triggered by an event, if so, we want to safely wait for combat to end.
			if safely then
				-- While the player is in combat, wait for combat to end.
				while InCombatLockdown() do coroutine.yield(); end
			end
			
			-- Send an Update to the Windows to Rebuild their Row Data
			app:GetDataCache();
			app:UpdateWindows();
			app.refreshDataForce = false;
			app.refreshingData = false;
		end);
	end
end
function app:GetWindow(suffix)
	local window = app.Windows[suffix];
	if not window then
		-- Create the window instance.
		window = CreateFrame("FRAME", app:GetName() .. "-Window-" .. suffix, UIParent);
		app.Windows[suffix] = window;
		window.Toggle = ToggleWindow;
		window.Update = UpdateWindow;
		window.SetVisible = SetWindowVisibility;
		window:SetScript("OnMouseWheel", OnScrollBarMouseWheel);
		window:SetScript("OnMouseDown", StartMovingOrSizing);
		window:SetScript("OnMouseUp", StopMovingOrSizing);
		window:SetScript("OnHide", StopMovingOrSizing);
		window:SetBackdrop(backdrop);
		UpdateWindowColor(window, suffix);
		window:SetClampedToScreen(true);
		window:SetToplevel(true);
		window:EnableMouse(true);
		window:SetMovable(true);
		window:SetResizable(true);
		window:SetPoint("CENTER");
		window:SetSize(300, 300);
		window:SetUserPlaced(true);
		window.data = {};
		window:Hide();
		
		-- The Close Button. It's assigned as a local variable so you can change how it behaves.
		window.CloseButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
		window.CloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 4, 3);
		window.CloseButton:SetScript("OnClick", HideParent);
		
		-- The Scroll Bar.
		local scrollbar = CreateFrame("Slider", nil, window, "UIPanelScrollBarTemplate");
		scrollbar:SetPoint("TOP", window.CloseButton, "BOTTOM", 0, -10);
		scrollbar:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -4, 36);
		scrollbar:SetScript("OnValueChanged", OnScrollBarValueChanged);
		scrollbar.back = scrollbar:CreateTexture(nil, "BACKGROUND");
		scrollbar.back:SetColorTexture(0,0,0,0.4)
		scrollbar.back:SetAllPoints(scrollbar);
		scrollbar:SetMinMaxValues(1, 1);
		scrollbar:SetValueStep(1);
		scrollbar.CurrentValue = 1;
		scrollbar:SetWidth(16);
		scrollbar:EnableMouseWheel(true);
		window:EnableMouseWheel(true);
		window.ScrollBar = scrollbar;
		scrollbar:SetValue(1);
		
		-- The Corner Grip. (this isn't actually used, but it helps indicate to players that they can do something)
		local grip = window:CreateTexture(nil, "ARTWORK");
		grip:SetTexture("Interface\\AddOns\\AllTheThings\\assets\\grip");
		grip:SetSize(16, 16);
		grip:SetTexCoord(0,1,0,1);
		grip:SetPoint("BOTTOMRIGHT", -5, 5);
		
		-- The Row Container. This contains all of the row frames.
		local container = CreateFrame("FRAME", nil, window);
		container:SetPoint("TOPLEFT", window, "TOPLEFT", 0, -6);
		container:SetPoint("RIGHT", scrollbar, "LEFT", 0, 0);
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 6);
		container.rowHeight = select(2, GameFontNormal:GetFont()) + 4;
		window.Container = container;
		container.rows = {};
		container:Show();
	end
	return window;
end

-- Create the Primary Collection Window (this allows you to save the size and location)
app:GetWindow("Prime");
app:GetWindow("CurrentInstance");

-- Tooltip Hooks
local function AttachTooltipWithLink(self, link, ...)
    if link then
		local listing, group = SearchForItemLink(link);
		if listing and (#listing > 0 or group) then
			if group and group.u then self:AddLine(L("UNOBTAINABLE_ITEM_REASONS")[group.u][2], 1, 1, 1, true); end
			for i,text in ipairs(listing) do
				local left, right = strsplit("/", text);
				if right then
					self:AddDoubleLine(left, right);
				else
					self:AddLine(left);
				end
			end
			
			if group then
				-- TODO: Add a preference for showing this on the first line or appending it to the bottom.
				local style = self:NumLines() < 1;
				if style then
					if not group.total or group.total < 1 then 
						self:AddDoubleLine(" ", L(group.collected and "COLLECTED" or "NOT_COLLECTED"));
					else
						local percent = group.collected / group.total;
						self:AddDoubleLine(" ", "|c" .. GetProgressColor(percent) .. tostring(group.collected) .. " / " .. tostring(group.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
					end
				else
					local rightSide = _G[self:GetName() .. "TextRight1"];
					if rightSide then
						if not group.total or group.total < 1 then 
							rightSide:SetText(L(group.collected and "COLLECTED" or "NOT_COLLECTED"));
						else
							local percent = group.collected / group.total;
							rightSide:SetText("|c" .. GetProgressColor(percent) .. tostring(group.collected) .. " / " .. tostring(group.total) .. " (" .. tostring(floor(percent * 100)) .. "%)|r");
						end
						rightSide:Show();
					end
				end
			end
		end
    end
end
local function AttachTooltip(self)
	if not self.AllTheThingsProcessing then
		self.AllTheThingsProcessing = true;
		if not InCombatLockdown() and GetDataMember("EnableTooltipInformation") then
			local link = select(2, self:GetItem());
			if link then AttachTooltipWithLink(self, link); end
		end
	end
end
local function ClearTooltip(self)
	self.AllTheThingsProcessing = nil;
end

GameTooltip:HookScript("OnShow", AttachTooltip);
GameTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
GameTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefTooltip:HookScript("OnShow", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefTooltip:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip1:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
ItemRefShoppingTooltip2:HookScript("OnShow", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
ShoppingTooltip1:HookScript("OnShow", AttachTooltip);
ShoppingTooltip1:HookScript("OnTooltipSetItem", AttachTooltip);
ShoppingTooltip1:HookScript("OnTooltipCleared", ClearTooltip);
ShoppingTooltip2:HookScript("OnShow", AttachTooltip);
ShoppingTooltip2:HookScript("OnTooltipSetItem", AttachTooltip);
ShoppingTooltip2:HookScript("OnTooltipCleared", ClearTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipSetItem", AttachTooltip);
WorldMapTooltip.ItemTooltip.Tooltip:HookScript("OnTooltipCleared", ClearTooltip);

-- ReloadUI slash command (for ease of use)
SLASH_RELOADUI1 = "/reloadui";
SLASH_RELOADUI2 = "/rl";
SlashCmdList["RELOADUI"] = ReloadUI;

-- Slash Command List
SLASH_AllTheThings1 = "/allthethings";
SLASH_AllTheThings2 = "/things";
SLASH_AllTheThings3 = "/att";
SlashCmdList["AllTheThings"] = function()
	app:ToggleWindow("Prime");
end

-- Register Events required at the start
app:RegisterEvent("PLAYER_LOGIN");
app:RegisterEvent("VARIABLES_LOADED");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
app:RegisterEvent("TOYS_UPDATED");
--app:RegisterEvent("ACHIEVEMENT_EARNED");
app:RegisterEvent("COMPANION_LEARNED");
app:RegisterEvent("COMPANION_UNLEARNED");
app:RegisterEvent("PET_JOURNAL_LIST_UPDATE");
app:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_ADDED");
app:RegisterEvent("TRANSMOG_COLLECTION_SOURCE_REMOVED");

-- Define Event Behaviours
app.events.VARIABLES_LOADED = function()
	-- Setup the localization and interpret the Display Information.
	SetLocale(GetLocale());
	app:UpdateWindowColors();
	app.DisplayName = Colorize(L("TITLE"), RGBToHex(180, 180, 255));
	
	-- Cache information about the player.
	local _, class, classIndex = UnitClass("player");
	local raceName, race = UnitRace("player");
	app.Class = class;
	app.ClassIndex = classIndex;
	app.Level = UnitLevel("player");
	local raceIndex = app.RaceDB[race];
	if type(raceIndex) == "table" then
		local factionGroup = UnitFactionGroup("player");
		raceIndex = raceIndex[factionGroup];
	end
	app.Race = race;
	app.RaceIndex = raceIndex;
	
	-- Load in the Presets if they exist for this character.
	-- Default values should fallback to their presets.
	local filters = GetPersonalDataMember("ItemFilters");
	if not filters then
		-- If a preset exist, we need to cleanly duplicate the preset data.
		-- If we don't do that, changing settings will change the preset itself. (until a restart)
		local presets, data = app.Presets[app.Class], {};
		if presets then
			for filter, state in pairs(presets) do
				data[filter] = state;
			end
		end
		SetPersonalDataMember("ItemFilters", data);
	end
	
	-- Check to see if we have a leftover ItemDB cache
	if GetDataMember("Items") then SetDataMember("Items", nil); end
	if GetDataMember("ItemDB") then SetDataMember("ItemDB", nil); end
	
	-- Register for Dynamic Events and Assign Filters
	if GetDataMember("AutoRefreshSaves", true) then app:RegisterEvent("BOSS_KILL"); end
	if GetDataMember("IgnoreFiltersOnNonBindingItems", true) then
		app.ItemBindFilter = app.FilterItemBind;
	else
		app.ItemBindFilter = app.Filter;
	end
	if GetDataMember("FilterGroupsByLevel", false) then
		app:RegisterEvent("PLAYER_LEVEL_UP");
		app.GroupRequirementsFilter = app.FilterGroupsByLevel;
	else
		app.GroupRequirementsFilter = app.NoFilter;
	end
	if GetDataMember("ShowCompletedGroups", false) then
		app.GroupVisibilityFilter = app.NoFilter;
	else
		app.GroupVisibilityFilter = app.FilterGroupsByCompletion;
	end
	if GetDataMember("ShowCollectedItems", false) then
		app.CollectedItemVisibilityFilter = app.NoFilter;
	else
		app.CollectedItemVisibilityFilter = app.Filter;
	end
	if GetDataMember("ShowMissingItems", true) then
		app.MissingItemVisibilityFilter = app.NoFilter;
	else
		app.MissingItemVisibilityFilter = app.Filter;
	end
	if GetDataMember("ShowMinimapButton", true) then
		app.Minimap = CreateMinimapButton(); -- NOTE: Create this if they turn it on.
		app.Minimap:Show();
	end
	if GetDataMember("UniqueAppearances", false) then
		app.ItemSourceFilter = app.FilterItemSourceUnique;
	else
		app.ItemSourceFilter = app.FilterItemSource;
	end
	if GetDataMember("FilterItemsByClass", true) then
		app.ClassRequirementFilter = app.FilterItemClass_RequireClasses;
	else
		app.ClassRequirementFilter = app.NoFilter;
	end
	if GetDataMember("FilterItemsByRace", true) then
		app.RaceRequirementFilter = app.FilterItemClass_RequireRaces;
	else
		app.RaceRequirementFilter = app.NoFilter;
	end
	GetDataMember("EnableTooltipInformation", true);
	GetDataMember("ShowSharedAppearances", true);
	GetDataMember("ShowSources", true);
	
	-- Create the Settings Menu and show version information
	app.print(format(L("LOADING"), GetAddOnMetadata("AllTheThings", "Version")));
	CreateSettingsMenu();
	app:RefreshData(false, true);
end
app.events.PLAYER_LOGIN = function()
	app:UnregisterEvent("PLAYER_LOGIN");
	RefreshLocation(true);
	RefreshSaves();
	LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject(app.DisplayName, {
		type = "launcher",
		icon = "Interface\\Icons\\INV_Axe_106",
		OnTooltipShow = function(self)
			GameTooltip:SetText(app.DisplayName);
			GameTooltip:AddLine(L("MINIMAP_MOUSEOVER_TEXT"), 1, 1, 1);
			GameTooltip:Show();
		end,
		OnClick = function(self, button)
			if button == "RightButton" then
				-- Right Button opens the Options menu.
				ShowInterfaceOptions();
			else
				-- Left Button Toggles the App
				app:ToggleWindow("Prime");
			end
		end,
	})
end
app.events.ZONE_CHANGED_NEW_AREA = RefreshLocation;
app.events.PLAYER_LEVEL_UP = function(newLevel)
	app.Level = newLevel;
	app:UpdateWindows();
end
app.events.BOSS_KILL = function(id, name)
	-- This is so that when you kill a boxx, you can trigger 
	-- an automatic update of your saved instance cache. 
	-- (It does lag a little, but you can disable this if you want.)
	-- Waiting until the LOOT_CLOSED occurs will prevent the failed Auto Loot bug.
	--app.print("BOSS_KILL: " .. tostring(id) .. ", " .. tostring(name));
	app:UnregisterEvent("LOOT_CLOSED");
	app:RegisterEvent("LOOT_CLOSED");
end
app.events.LOOT_CLOSED = function()
	-- Once the loot window closes after killing a boss, THEN trigger the update.
	app:UnregisterEvent("LOOT_CLOSED");
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	app:RegisterEvent("UPDATE_INSTANCE_INFO");
	RequestRaidInfo();
end
app.events.UPDATE_INSTANCE_INFO = function()
	-- We got new information, not refresh the saves. :D
	app:UnregisterEvent("UPDATE_INSTANCE_INFO");
	RefreshSaves();
end
app.events.ACHIEVEMENT_EARNED = function(...)
	print("ACHIEVEMENT_EARNED");
	print(...);
end
app.events.COMPANION_LEARNED = function(...)
	GetMountInfoCache();
	GetCompanionPetInfoCache();
	app:RefreshData(false, true);
	PlayFanfare();
end
app.events.COMPANION_UNLEARNED = function(...)
	GetCompanionPetInfoCache();
	app:RefreshData(false, true);
end
app.events.PET_JOURNAL_LIST_UPDATE = function(...)
	GetMountInfoCache();
	GetCompanionPetInfoCache();
	app:RefreshData(false, true);
end
app.events.TOYS_UPDATED = function(itemID, new)
	if itemID and not GetDataSubMember("CollectedToys", itemID) then
		SetDataSubMember("CollectedToys", itemID, true);
		app:RefreshData(false, true);
		PlayFanfare();
		
		if GetDataMember("ShowNotifications", true) then
			local name, link = GetItemInfo(itemID);
			if link then print(format(L("ITEM_ID_ADDED"), link, itemID)); end
		end
	end
end
app.events.TRANSMOG_COLLECTION_SOURCE_ADDED = function(sourceID)
	if sourceID and not GetDataSubMember("Collected", sourceID) then
		SetDataSubMember("Collected", sourceID, true);
		app:RefreshData(false, true);
		PlayFanfare();
		
		if GetDataMember("ShowNotifications", true) then
			-- NOTE: The itemlink that gets passed is BASE ITEM LINK, not the full item link.
			-- So this may show green items where an epic was obtained. (particularly with Legion drops)
			-- This is okay since items of this type share their appearance regardless of the power of the item.
			local itemLink = select(6, C_TransmogCollection.GetAppearanceSourceInfo(sourceID));
			if itemLink then print(format(L("ITEM_ID_ADDED"), itemLink, GetItemInfoInstant(itemLink))); end
		end
	end
end
app.events.TRANSMOG_COLLECTION_SOURCE_REMOVED = function(sourceID)
	if sourceID and GetDataSubMember("Collected", sourceID) then
		SetDataSubMember("Collected", sourceID, false);
		app:RefreshData(false, true);
		PlayRemoveSound();
		
		if GetDataMember("ShowNotifications", true) then
			-- Oh shucks, that was nice of you to give this item to your friend.
			-- WAIT, WHAT? A VENDOR?! OH GOD NO! TODO: Warn a user when they vendor an appearance?
			local itemLink = select(6, C_TransmogCollection.GetAppearanceSourceInfo(sourceID));
			if itemLink then print(format(L("ITEM_ID_REMOVED"), itemLink, GetItemInfoInstant(itemLink))); end
		end
	end
end