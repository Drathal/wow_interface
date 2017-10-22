local E = ElvUI[1]
local UF = E:GetModule("UnitFrames")

-- Force disable ElvUI player frame class bar for Warlock if DoomShards addon is enabled
local class = select(2, UnitClass("player"))
if class == "WARLOCK" and DoomShards then
    -- Hook player frame update
    local orig_Update_PlayerFrame = UF.Update_PlayerFrame
    UF.Update_PlayerFrame = function(self, frame, db)
        -- Update frame with classbar disabled, then restore real setting
        db.classbar.enable = false
        orig_Update_PlayerFrame(self, frame, db)
        db.classbar.enable = true
    end
end
