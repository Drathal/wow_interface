DrathalInstall = DrathalInstall or {}

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
    local profile = DrathalInstall:GetProfileName()

    _G[svname] = dst
    dst.profiles = dst.profiles or {}
    dst.profiles[profile] = deepCopy(src.profiles[profile])

    if src.namespaces then
        dst.namespaces = dst.namespaces or {}
        for nsname in pairs(src.namespaces) do
            dst.namespaces[nsname] = dst.namespaces[nsname] or {}
            dst.namespaces[nsname].profiles = dst.namespaces[nsname].profiles or {}
            dst.namespaces[nsname].profiles[profile] = deepCopy(src.namespaces[nsname].profiles[profile])
        end
    end

    local AceDB = LibStub:GetLibrary("AceDB-3.0")
    for db in pairs(AceDB.db_registry) do
        if db.sv == _G[svname] then
            db:SetProfile(profile)
            break
        end
    end
end

function DrathalInstall:InstallBigWigs()
    copyDB(self, "BigWigs3IconDB")
    LoadAddOn("BigWigs_Core")
    copyAndSelectAceProfiles(self, "BigWigs3DB")
end

function DrathalInstall:InstallAddonSimple(svname)
    copyDB(self, svname)
end

function DrathalInstall:InstallAddonAceProf(svname)
    copyAndSelectAceProfiles(self, svname)
end

function DrathalInstall:GetProfileName()
    return DrathalInstall.profileName
end
