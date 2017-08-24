local Frame, FrameEvents = CreateFrame('Frame'), {}

local count, group = 1000, false
local expel = {
	['TradeSkillMaster_Destroying'] = 'TSMDestroyingFrame',
	['Easy_Obliterate']							= 'ObliterumForgeFrame'
}

Frame.ready = false
Frame.count = 0
Frame.group = false

function FrameEvents:LOOT_READY(...)
	if Frame.ready then
		return
	end
	
	for k, v in pairs(expel) do
		if IsAddOnLoaded(k) and _G[v]:IsVisible() then
			return
		end
	end
	
	if (GetCVar('autoLootDefault') == '1' and not IsModifiedClick('AUTOLOOTTOGGLE')) or (GetCVar('autoLootDefault') ~= '1' and IsModifiedClick('AUTOLOOTTOGGLE')) then
		Frame.ready = true
		Frame.count = 0

		if IsInGroup() then
			local method = GetLootMethod()
			Frame.group = method == 'master' and true or false
		end
	end	
end
for k, v in pairs(FrameEvents) do
	Frame:RegisterEvent(k)
end

Frame:SetScript('OnEvent', function(self, event, ...)
	FrameEvents[event](self, ...)
end)

Frame:SetScript('OnUpdate', function(self, timer)
	if not Frame.ready then
		return
	end
	
	local rloot, nloot = 0, GetNumLootItems() > 50 and 50 or GetNumLootItems()
	for i = nloot, 1, -1 do
		local _, _, _, rarity, locked = GetLootSlotInfo(i)
		local threshold = GetLootThreshold()
		
		Frame.count = Frame.count + 1
		
		if locked ~= nil and not locked then
			if (Frame.group and rarity < threshold) or not Frame.group then
				LootSlot(i)
			end
			
			if rarity >= threshold then
				rloot = rloot + 1
			end
		end
	end
	
	if (GetNumLootItems() - rloot) <= 0 or Frame.count > count then
		Frame.ready = false
		Frame.count = 0
		Frame.group = false
		CloseLoot()
	end
end)