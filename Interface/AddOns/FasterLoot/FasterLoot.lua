local Frame, FrameEvents = CreateFrame('Frame'), {}
local FasterLoot = {}

FasterLoot.delay = 0.015
FasterLoot.count = 150
FasterLoot.group = false
FasterLoot.expel = {
	['TradeSkillMaster_Destroying'] = 'TSMDestroyingFrame',
	['Easy_Obliterate']							= 'ObliterumForgeFrame'
}

function FrameEvents:LOOT_READY(...)
	if self.ready then
		return
	end

	for k, v in pairs(FasterLoot.expel) do
		if IsAddOnLoaded(k) and _G[v]:IsVisible() then
			return
		end
	end

	if (GetCVar('autoLootDefault') == '1' and not IsModifiedClick('AUTOLOOTTOGGLE')) or (GetCVar('autoLootDefault') ~= '1' and IsModifiedClick('AUTOLOOTTOGGLE')) then
		self.ready = true

		if IsInGroup() then
			local method = GetLootMethod()
			self.group = method == 'master' and true or false
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
	if not self.timer then
		self.count = 0
		self.timer = 0
		self.ready = false
	end
	self.timer = self.timer + timer

	if self.timer < FasterLoot.delay or not self.ready then
		return
	end

	self.timer = 0
	self.count = self.count + 1

	local rloot = 0
	for i = GetNumLootItems(), 1, -1 do
		local _, _, _, rarity, locked = GetLootSlotInfo(i)
		local threshold = GetLootThreshold()

		if locked ~= nil and not locked then
			if (self.group and rarity < threshold) or not self.group then
				LootSlot(i)
			end

			if rarity >= threshold then
				rloot = rloot + 1
			end
		end
	end

	if (GetNumLootItems() - rloot) <= 0 or self.count > FasterLoot.count then
		CloseLoot()
		self.count = 0
		self.timer = 0
		self.ready = false
	end
end)
