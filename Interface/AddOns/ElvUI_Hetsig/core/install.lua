HetsigInstall = HetsigInstall or {}

local function deepCopy(src)
    if type(src) == "table" then
        local dst = {}
        for k,v in pairs(src) do
            dst[k] = deepCopy(v)
        end
        return dst
    else
        return src
    end
end

-- Deep copy/shallow merge DB without deleting existing profiles
local function copyDB(self, svname)
    local dst = _G[svname] or {}
    _G[svname] = dst
    for k,v in pairs(self.AddonSettings[svname]) do
        if k ~= "profiles" then
            dst[k] = deepCopy(v)
        end
    end
end

local function copyAndSelectAceProfiles(self, svname)
    local dst = _G[svname] or {}
    local src = self.AddonSettings[svname]
    _G[svname] = dst
    dst.profiles = dst.profiles or {}
    dst.profiles.Hetsig = deepCopy(src.profiles.Hetsig)

    if src.namespaces then
        dst.namespaces = dst.namespaces or {}
        for nsname in pairs(src.namespaces) do
            dst.namespaces[nsname] = dst.namespaces[nsname] or {}
            dst.namespaces[nsname].profiles = dst.namespaces[nsname].profiles or {}
            dst.namespaces[nsname].profiles.Hetsig = deepCopy(src.namespaces[nsname].profiles.Hetsig)
        end
    end

    local AceDB = LibStub:GetLibrary("AceDB-3.0")
    for db in pairs(AceDB.db_registry) do
        if db.sv == _G[svname] then
            db:SetProfile("Hetsig")
            break
        end
    end
end

function HetsigInstall:InstallEen()
    Een_ChannelColours = deepCopy(self.AddonSettings.Een_ChannelColours)
    Een_ChatFrame = deepCopy(self.AddonSettings.Een_ChatFrame)
    Een_AutoLoad = self.AddonSettings.Een_AutoLoad
    Een_Msg = self.AddonSettings.Een_Msg
    Een_Quiet = self.AddonSettings.Een_Quiet
end

function HetsigInstall:InstallMoveAnything()
    MADB = MADB or {}
    MADB.profiles = MADB.profiles or {}
    MADB.profiles.Hetsig = deepCopy(self.AddonSettings.MADB.profiles.Hetsig)
    copyDB(self, "MADB")
    if MovAny then
        MovAny:ChangeProfile("Hetsig")
    end
end

function HetsigInstall:InstallBigWigs()
    copyDB(self, "BigWigs3IconDB")
    -- BigWigs loads saved variables unconditionally, but only opens AceDB when BigWigs_Core is loaded on demand
    LoadAddOn("BigWigs_Core")
    copyAndSelectAceProfiles(self, "BigWigs3DB")
end

-- HetsigInstall:InstallAddonSimple("BugSackDB")
-- HetsigInstall:InstallAddonSimple("DejaCharacterStatsDB")
-- HetsigInstall:InstallAddonSimple("MaxCamDB")
-- HetsigInstall:InstallAddonSimple("ParagonReputationDB")
function HetsigInstall:InstallAddonSimple(svname)
    copyDB(self, svname)
end

-- HetsigInstall:InstallAddonAceProf("DoomShardsDB")
-- HetsigInstall:InstallAddonAceProf("ErrorFilterDB")
-- HetsigInstall:InstallAddonAceProf("Postal3DB")
-- HetsigInstall:InstallAddonAceProf("SkadaDB")
function HetsigInstall:InstallAddonAceProf(svname)
    copyAndSelectAceProfiles(self, svname)
end
