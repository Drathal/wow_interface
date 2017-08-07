local _G = _G
local playerName = UnitName("player")
local playerRealm = GetRealmName()
local mainChar = "Dronthal - Madmortem";
local currentChar = playerName .. " - " .. playerRealm
local setupFrame = CreateFrame("Frame")
local profileChar = nil

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

local function setupProfile(tbl)

    tbl["profileKeys"][currentChar] = currentChar

    if tbl["profileKeys"] ~= nil and tbl["profileKeys"][mainChar] ~= nil then
        profileChar = tbl["profileKeys"][mainChar]
    end

    if profileChar == nil then
        profileChar = mainChar
    end

    return profileChar

end

local function copyCharData(tbl) 
    tbl[currentChar] = {}
    copyTable( 
        tbl[profileChar], 
        tbl[currentChar]
    );
end

local function setupGrid2(tbl)
    copyCharData(tbl["namespaces"]["Grid2RaidDebuffs"]["profiles"])
    copyCharData(tbl["namespaces"]["Grid2Frame"]["profiles"])
    copyCharData(tbl["namespaces"]["Grid2Layout"]["profiles"])
    copyCharData(tbl["namespaces"]["Grid2Options"]["profiles"])    
    copyCharData(tbl["profiles"])    
end

local function setupXIVDatabar(tbl) 
    copyCharData(tbl["profiles"])    
end

local setups = { 
    ["Grid2DB"] = setupGrid2,
    ["XIVBarDB"] = setupXIVDatabar
}

local function setup(arg)

    for k,v in pairs(setups) do 
        setupProfile(_G[k])
        v(_G[k])   
    end

    -- ReloadUI();
end

_G.SLASH_DSETUP1 = "/dsetup"
_G.SLASH_DSETUP2 = "/ds"
SlashCmdList["DSETUP"] = function(arg)
    if currentChar == mainChar then return end
    setup(arg)   
end