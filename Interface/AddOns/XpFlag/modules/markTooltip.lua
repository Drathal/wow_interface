local D, C, L = unpack(select(2, ...))

local _G = _G
local GetXPExhaustion = _G.GetXPExhaustion
local RAID_CLASS_COLORS = _G.RAID_CLASS_COLORS
local format = string.format

local t = nil

D.CreateMarkTooltip = function()
    t = CreateFrame("Frame")
    t:Hide()
    t.delay = 0.25

    t:SetScript("OnUpdate", function(self, elapsed)

        t.delay = t.delay - elapsed;
        if t.delay > 0 then return end

        local rested = GetXPExhaustion()

        for k, v in pairs(D.GetMarks()) do
            if v:IsMouseOver() and v.class and v.name and v.level then
                GameTooltip:ClearLines()
                GameTooltip:AddLine("XpFlag")
                GameTooltip:AddLine(k, RAID_CLASS_COLORS[v.class].r, RAID_CLASS_COLORS[v.class].g, RAID_CLASS_COLORS[v.class].b, 1)
                GameTooltip:AddLine("Level: "..v.level, 1, 1, 1, 1)
                GameTooltip:AddLine("XP: "..v.value.." / "..v.maxvalue.." ("..format("%.2f", v.value / v.maxvalue * 100).."%)", 1, 1, 1, 1)
                if rested and v.player then
                    GameTooltip:AddLine("Rested: "..rested.." ("..format("%.2f", rested / v.maxvalue * 100).."%)", 1, 1, 1, 1)
                end
                GameTooltip:Show()
            end
        end
        t.delay = 0.25

    end)

    return t
end

D.OnMarkTooltipEnter = function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    t:Show();
end

D.OnMarkTooltipLeave = function(self)
    t:Hide();
    GameTooltip:Hide()
end
