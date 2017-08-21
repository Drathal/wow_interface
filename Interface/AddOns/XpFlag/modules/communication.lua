local D, C, L = unpack(select(2, ...))

local _G = _G
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax
local random = math.random

local MessagePrefix = 'XpFlag'

local function CreateMessage(type, xp, max)
    return (type or "XpFlag")..":"..(xp or UnitXP("PLAYER"))..":"..(max or UnitXPMax("PLAYER"))..":"..D.level..":"..D.class
end

local function DecodeMessage(msg)
    local type, xp, maxxp, level, class = msg:match("^(.-):(.-):(.-):(.-):(.-)$");

    return {
        type = type,
        xp = xp,
        maxxp = maxxp,
        level = level,
        class = class
    }
end

D.SendRequest = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage(MessagePrefix, CreateMessage("XpFlagRequest"), "WHISPER", target)
end

D.SendDelete = function(target)
    if not string.match(target, "%-") then return end
    D.marks[friend] = D.DeleteMark(D.marks[friend])
    SendAddonMessage(MessagePrefix, CreateMessage("XpFlagDelete"), "WHISPER", target)
end

D.SendPing = function(target)
    if not string.match(target, "%-") then return end
    local x = SendAddonMessage(MessagePrefix, CreateMessage("XpFlagPing"), "WHISPER", target)
    D.pingedFriends[target] = true
end

D.SendPong = function(target)
    if not string.match(target, "%-") then return end
    local x = SendAddonMessage(MessagePrefix, CreateMessage("XpFlagPong"), "WHISPER", target)
end

D.SendUpdate = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage(MessagePrefix, CreateMessage("XpFlag"), "WHISPER", target)
end

D.SendUpdates = function()
    for target, _ in pairs(D.marks) do
        if target and target ~= D.nameRealm then
            D.SendUpdate(target)
        end
    end
end

D.InitCommunication = function()
    D:RegisterEvent("CHAT_MSG_ADDON")
    RegisterAddonMessagePrefix(MessagePrefix)
end

function D:CHAT_MSG_ADDON(event, pre, rawmsg, chan, sender)
    if pre ~= MessagePrefix then return end
    if sender == D.nameRealm then return end
    if not string.match(sender, "%-") then return end
    if not rawmsg or rawmsg == "" then return end

    local msg = DecodeMessage(rawmsg)

    if msg.type == "XpFlag" then
        D.UpdateMark(sender, msg.xp, msg.maxxp, msg.level, msg.class)
    end

    if msg.type == "XpFlagPing" then
        D.SendPong(sender)
    end

    if msg.type == "XpFlagPong" then
        D.friendsWithAddon[sender] = true
        D.On_FriendsFrame_Update()
    end

    if msg.type == "XpFlagRequest" then
        D.SendUpdate(sender)
        D.UpdateMark(sender, msg.xp, msg.maxxp, msg.level, msg.class)
        D.On_FriendsFrame_Update()
    end

    if msg.type == "XpFlagDelete" then
        D.marks[sender] = D.DeleteMark(D.marks[sender])
        D.On_FriendsFrame_Update()
    end
end
