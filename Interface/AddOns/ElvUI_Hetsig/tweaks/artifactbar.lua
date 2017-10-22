local E = ElvUI[1]
local DB = E:GetModule("DataBars")

-- Fix artifact bar strata by hooking ElvUI's artifact bar loader
local orig_LoadArtifactBar = DB.LoadArtifactBar
DB.LoadArtifactBar = function(...)
    orig_LoadArtifactBar(...)
    ElvUI_ArtifactBar:SetFrameStrata("MEDIUM")
end
