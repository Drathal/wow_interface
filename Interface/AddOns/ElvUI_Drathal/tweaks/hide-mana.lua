local E = ElvUI[1]
local UF = E:GetModule("UnitFrames")

-- Hook unit frame power bar update
local orig_Configure_Power = UF.Configure_Power
UF.Configure_Power = function(self, frame)
    -- If primary power is mana, update frame with power text cleared, then restore real setting
    if frame.unitframeType == "player" and UnitPowerType("player") == 0 then
        local setting = frame.db.power.text_format
        frame.db.power.text_format = ""
        orig_Configure_Power(self, frame)
        frame.db.power.text_format = setting
    else
        orig_Configure_Power(self, frame)
    end
end

local eventFrame = CreateFrame("Frame")
eventFrame:SetScript("onEvent", function()
    UF:CreateAndUpdateUF("player")
end)
eventFrame:RegisterUnitEvent("UNIT_DISPLAYPOWER", "player")