local D, C, L = unpack(select(2, ...))

local _G = _G

D.GetFriends = function()
    local friends = {}
    local allFriends, onlineFriends = GetNumFriends()

    for i = 1, allFriends do
        local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i)
        if not name then break end

        local friendNameRealm = name.."-"..D.realm

        if connected and not friends[friendNameRealm] then
            friends[friendNameRealm] = true
            SendAddonMessage("XpFlag", D.CreateMessage("XpFlagRequest"), "WHISPER", friendNameRealm)
        elseif not connected and friends[friendNameRealm] then
            friends[friendNameRealm] = nil
        end
    end

    return friends
end
