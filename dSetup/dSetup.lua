local _G = _G
local playerName = UnitName("player")
local playerRealm = GetRealmName()
local currentChar = playerName .. " - " .. playerRealm
local baseProfile = "Default"
local SetCVar = _G.SetCVar

local function ensurePath(tbl, path)
    local p = tbl
    for _, prop in pairs(path) do

        if not p[prop] then
            p[prop] = {}
        end

        p = p[prop]
    end
    return p
end

local function copyTable(src, dest)
    if type(dest) ~= "table" then dest = {} end
    if type(src) == "table" then
        for k, v in pairs(src) do
            if type(v) == "table" then
                v = copyTable(v, dest[k])
            end
            dest[k] = v
        end
    end
    return dest
end

local function setupProfile(src, dest, srcProfile, destProfile)
    if not src or not dest or not srcProfile or not destProfile then return end
    if not dest["profileKeys"] then return end

    dest["profileKeys"][currentChar] = destProfile

    local profile = nil

    if src["profileKeys"] ~= nil and src["profileKeys"][srcProfile] ~= nil then
        profile = src["profileKeys"][srcProfile]
    else
        profile = srcProfile
    end

    return profile
end

local function copyProfileData(src, dest, path, srcProfile, destProfile)
    local newSrc = ensurePath(src, path)
    local newDest = ensurePath(dest, path)

    dest[destProfile] = {}
    copyTable(
        newSrc[srcProfile],
        newDest[destProfile]
    );
end

local function setupDefault(src, dest, srcProfile)
    if not src or not dest then return end
    copyProfileData(src, dest, { "profiles" }, srcProfile, baseProfile)
end

local function setupGrid2(src, dest, srcProfile)
    if not src or not dest then return end
    copyProfileData(src, dest, { "namespaces", "Grid2Frame", "profiles" }, srcProfile, baseProfile)
    copyProfileData(src, dest, { "namespaces", "Grid2Layout", "profiles" }, srcProfile, baseProfile)
    copyProfileData(src, dest, { "namespaces", "Grid2RaidDebuffs", "profiles" }, srcProfile, baseProfile)
    setupDefault(src, dest, srcProfile)

end

local setups = {
    { "Grid2", "Grid2DB", "Dronthal - Madmortem", setupGrid2 },
    { "XIV_Databar", "XIVBarDB", "Dronthal - Madmortem" },
    { "Skada", "SkadaDB", "Dronthal - Madmortem" }
}

local function setup(arg)

    print("drathal`s setup")



    local done = nil
    for _, data in pairs(setups) do

        local addonName, DBName, srcProfile, setupFunc = unpack(data)

        if arg == "all" or arg == addonName or arg == addonName:lower() then
            print("setup: ", addonName)
            done = true

            local profile = setupProfile(_G["setup"..DBName], _G[DBName], srcProfile, baseProfile)

            if profile then
                if setupFunc then
                    setupFunc(_G["setup"..DBName], _G[DBName], profile)
                else
                    setupDefault(_G["setup"..DBName], _G[DBName], profile)
                end
            else
                _G[DBName] = _G["setup"..DBName]
            end
        end
    end

    if not done then return end

    ReloadUI();
end

_G.SLASH_DSETUP1 = "/dsetup"
_G.SLASH_DSETUP2 = "/ds"
SlashCmdList["DSETUP"] = function(arg)
    if arg == "" then
        print("missing parameter: all or DBName")
        return
    end
    setup(arg)
end

SetCVar("checkAddonVersion", 0)

local function events(self, event, unit)
    if event == "PLAYER_ENTERING_WORLD" then
        SetCVar("floatingCombatTextCombatDamage", "0")
    end
end

local force = CreateFrame("Frame")
force:RegisterEvent("PLAYER_ENTERING_WORLD")
force:SetScript("OnEvent", events)

--[[
ObjectiveTrackerFrame:ClearAllPoints()
ObjectiveTrackerFrame:SetPoint("TOPRIGHT", ObjectiveFrameHolder, "TOPRIGHT", -100, -260)
ObjectiveTrackerFrame:SetClampedToScreen(false)

hooksecurefunc(ObjectiveTrackerFrame, "SetPoint", function(_, _, parent)
    if parent ~= ObjectiveFrameHolder then
        ObjectiveTrackerFrame:ClearAllPoints()
        ObjectiveTrackerFrame:SetPoint("TOPRIGHT", ObjectiveFrameHolder, "TOPRIGHT", -100, -260)
    end
end)

local function StripTextures(object, kill)
    for i = 1, object:GetNumRegions() do
        local region = select(i, object:GetRegions())
        if region and region:GetObjectType() == "Texture" then
            if kill and type(kill) == "boolean" then
                region:Kill()
            elseif region:GetDrawLayer() == kill then
                region:SetTexture(nil)
            elseif kill and type(kill) == "string" and region:GetTexture() ~= kill then
                region:SetTexture(nil)
            else
                region:SetTexture(nil)
            end
        end
    end
end

StripTextures(ObjectiveTrackerBlocksFrame.QuestHeader)
StripTextures(ObjectiveTrackerBlocksFrame.AchievementHeader)
StripTextures(ObjectiveTrackerBlocksFrame.ScenarioHeader)
StripTextures(BONUS_OBJECTIVE_TRACKER_MODULE.Header)
StripTextures(WORLD_QUEST_TRACKER_MODULE.Header)

local function SetupChatFont()
    if InCombatLockdown() then return end

    for i = 1, NUM_CHAT_WINDOWS do
        local frame = _G[string.format("ChatFrame%s", i)]
        local id = frame:GetID()
        local _, fontSize = FCF_GetChatWindowInfo(id)

        -- Min. size for chat font
        if fontSize < 12 then
            FCF_SetChatWindowFontSize(nil, frame, 12)
        else
            FCF_SetChatWindowFontSize(nil, frame, fontSize)
        end

        -- Font and font style for chat
        frame:SetFont(STANDARD_TEXT_FONT, fontSize, "OUTLINE" )
        frame:SetShadowOffset(0,0)
    end
end

local Loading = CreateFrame("Frame")
Loading:RegisterEvent("ADDON_LOADED")
Loading:RegisterEvent("PLAYER_ENTERING_WORLD")
Loading:RegisterEvent("UPDATE_CHAT_WINDOWS", "SetupChatFont")
Loading:RegisterEvent("UPDATE_FLOATING_CHAT_WINDOWS", "SetupChatFont")
Loading:SetScript("OnEvent", function(self, event, addon)
    if event == "ADDON_LOADED" then
        if addon == "Blizzard_CombatLog" then
            self:UnregisterEvent("ADDON_LOADED")
            SetupChatFont()
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        self:UnregisterEvent("PLAYER_ENTERING_WORLD")
        SetupChatFont()
    end
end)
]] --
