local K, C, L = unpack(select(2, ...))
if C.Misc.SlotDurability ~= true then return end

-- Lua API
local _G = _G
local math_min = math.min
local pairs = pairs
local rawget = rawget
local string_format = string.format

-- Wow API
local GetInventoryItemDurability = _G.GetInventoryItemDurability

local SLOTIDS = {}
for _, slot in pairs({"Head", "Shoulder", "Chest", "Waist", "Legs", "Feet", "Wrist", "Hands", "MainHand", "SecondaryHand"}) do
	SLOTIDS[slot] = GetInventorySlotInfo(slot.."Slot")
end
local frame = CreateFrame("Frame", nil, CharacterFrame)

local function RYGColorGradient(perc)
	local relperc = perc * 2 % 1
	if perc <= 0 then
		return 1, 0, 0
	elseif perc < 0.5 then
		return 1, relperc, 0
	elseif perc == 0.5 then
		return 1, 1, 0
	elseif perc < 1.0 then
		return 1 - relperc, 1, 0
	else
		return 0, 1, 0
	end
end

	local fontstrings = setmetatable({}, {
	__index = function(t, i)
		local gslot = _G["Character"..i.."Slot"]
		local fstr = gslot:CreateFontString(nil, "OVERLAY", "SystemFont_Outline_Small")
		fstr:SetPoint("BOTTOM", gslot, "BOTTOM", 0, 1)
		t[i] = fstr
		return fstr
	end,
})

function frame:OnEvent(event, arg1)
	local min = 1
	for slot, id in pairs(SLOTIDS) do
		local v1, v2 = GetInventoryItemDurability(id)

		if v1 and v2 and v2 ~= 0 then
			min = math_min(v1 / v2, min)
			local str = fontstrings[slot]
			str:SetTextColor(RYGColorGradient(v1 / v2))
			if v1 < v2 then
				str:SetText(string_format("%d%%", v1 / v2 * 100))
			else
				str:SetText(nil)
			end
		else
			local str = rawget(fontstrings, slot)
			if str then str:SetText(nil) end
		end
	end

	local r, g, b = RYGColorGradient(min)
end

local Loading = CreateFrame("Frame")
Loading:RegisterEvent("ADDON_LOADED")
Loading:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
Loading:SetScript("OnEvent", function()
	frame:OnEvent()
end)