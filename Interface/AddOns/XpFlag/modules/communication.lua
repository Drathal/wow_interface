local D, C, L = unpack(select(2, ...))

local _G = _G
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax
local random = math.random

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

D.AddFriend = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage("XpFlag", D.CreateMessage("XpFlagRequest"), "WHISPER", target)
end

D.RemoveFriend = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage("XpFlag", D.CreateMessage("XpFlagDelete"), "WHISPER", target)
end

D.UpdateFriends = function()
    for target, _ in pairs(D.marks) do
        if target and target ~= D.nameRealm then
            SendAddonMessage("XpFlag", D.CreateMessage("XpFlag"), "WHISPER", target)
        end
    end
end

D.HandleMessages = function(event, pre, rawmsg, chan, sender, marks)
    if pre ~= "XpFlag" then return end
    if sender == D.nameRealm then return end
    if not string.match(sender, "%-") then return end
    if not rawmsg or rawmsg == "" then return end

    local msg = D.DecodeMessage(rawmsg)

    if msg.type == "XpFlagRequest" then
        SendAddonMessage("XpFlag", D.CreateMessage(), "WHISPER", sender)        
    end

    if msg.type == "XpFlagDelete" then
        D.marks[sender] = D.DeleteMark(D.marks[sender])
    else
        D.UpdateMark(marks, sender, msg.xp, msg.maxxp, msg.level, msg.class)
    end

    D.On_FriendsFrame_Update()
      
end
