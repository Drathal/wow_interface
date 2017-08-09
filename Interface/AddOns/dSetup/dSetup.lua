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
        for k,v in pairs(src) do
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

local function setupGrid2(src, dest, srcProfile)
    if not src or not dest then return end
    copyProfileData(src, dest, { "namespaces", "Grid2RaidDebuffs", "profiles" } , srcProfile, baseProfile)
    copyProfileData(src, dest, { "namespaces", "Grid2Frame", "profiles" } , srcProfile, baseProfile)
    copyProfileData(src, dest, { "namespaces", "Grid2Layout", "profiles" } , srcProfile, baseProfile)
    copyProfileData(src, dest, { "namespaces", "Grid2Options", "profiles" } , srcProfile, baseProfile)
    setupDefault(src, dest, srcProfile)
    
end

local function setupDefault(src, dest, srcProfile) 
    if not src or not dest then return end
    copyProfileData(src, dest, { "profiles" } , srcProfile, baseProfile)
end

local setups = { 
    { "Grid2",       "Grid2DB",  "Dronthal - Madmortem", setupGrid2 },
    { "XIV_Databar", "XIVBarDB", "Dronthal - Madmortem" },
    { "Skada",       "SkadaDB",  "Dronthal - Madmortem" },
    { "TellMeWhen",  "TellMeWhenDB",  "Dronthal - Madmortem" }        
}

local function setup(arg)

    print("drathal`s setup")
    SetCVar("checkAddonVersion", 0)

    for _, data in pairs(setups) do 

        local addonName, DBName, srcProfile, setupFunc = unpack(data)

        if arg == "all" or arg == addonName then 
            print("setup: ", addonName)
            
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