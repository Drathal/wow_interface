local oUFs = { 
        [1] = "oUF_KkthnxPlayer", 
        [2] = "Bar1Holder",
        [3] = "Bar2Holder",
        [4] = "Bar5Holder" 
}


 
local function FadeIn()
        _G["oUF_KkthnxPlayer"].Range.insideAlpha = 1
        _G["oUF_KkthnxPlayer"].Range.outsideAlpha = 1
        for i = 1, 4 do
                UIFrameFadeIn(_G[oUFs[i]], 0.075, _G[oUFs[i]]:GetAlpha(), 1)
        end
end

local function FadeOut()
        _G["oUF_KkthnxPlayer"].Range.insideAlpha = 0.2
        _G["oUF_KkthnxPlayer"].Range.outsideAlpha = 0.2
        for i = 1, 4 do      
               UIFrameFadeOut(_G[oUFs[i]], 0.075, _G[oUFs[i]]:GetAlpha(), 0.2)
        end
end


local function uffade(self, event, unit)
        if event == "UNIT_SPELLCAST_START" then
            if unit == "player" then
                FadeIn()
            end
        elseif event == "UNIT_SPELLCAST_STOP" then
            if unit == "player" then
                if UnitExists("target") then
                        FadeIn()
                else
                        if not InCombatLockdown() then
                                FadeOut()
                        end
                end
            end
        elseif event == "PLAYER_REGEN_DISABLED" then
                FadeIn()            
        elseif event == "PLAYER_REGEN_ENABLED" or event == "PLAYER_ENTERING_WORLD" then
                FadeOut()
        elseif event == "PLAYER_TARGET_CHANGED" then
                if UnitExists("target") then
                        FadeIn()
                else
                        if not InCombatLockdown() then
                                FadeOut()
                        end
                end
        end
end
 
local oocfade = CreateFrame("Frame")
oocfade:RegisterEvent("PLAYER_ENTERING_WORLD")
oocfade:RegisterEvent("PLAYER_REGEN_ENABLED")
oocfade:RegisterEvent("PLAYER_REGEN_DISABLED")
oocfade:RegisterEvent("PLAYER_TARGET_CHANGED")
oocfade:RegisterEvent("UNIT_SPELLCAST_START")
oocfade:RegisterEvent("UNIT_SPELLCAST_STOP")
oocfade:SetScript("OnEvent", uffade)
