local D, C, L = unpack(select(2, ...))

local _G = _G
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax

D.CreateMessage = function(type, xp, max)
    return (type or "XpFlag")..":"..(xp or UnitXP("PLAYER"))..":"..(max or UnitXPMax("PLAYER"))..":"..D.level..":"..D.class
end

D.DecodeMessage = function(msg)
    local type, xp, maxxp, level, class = msg:match("^(.-):(.-):(.-):(.-):(.-)$");

    return {
        type = type,
        xp = xp,
        maxxp = maxxp,
        level = level,
        class = class
    }
end

D.UpdateFriends = function(marks)
    for target, _ in pairs(marks) do
        if target and target ~= D.nameRealm then
            SendAddonMessage("XpFlag", D.CreateMessage("XpFlag"), "WHISPER", target)
        end
    end
end
