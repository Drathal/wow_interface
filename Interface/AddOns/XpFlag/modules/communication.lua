local D, C, L = unpack(select(2, ...))

local _G = _G
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax
local random = math.random

local MessagePrefix = D.addonName
local pingedFriends = {}
local friendsWithAddon = {}

local MSG_TYPE_DATA = "DATA"
local MSG_TYPE_REQUEST = "RESQUEST"
local MSG_TYPE_DELETE = "DELETE"
local MSG_TYPE_PING = "PING"
local MSG_TYPE_PONG = "PONG"

local module = D:NewModule("Communication", "AceEvent-3.0")

function module:OnEnable()
    module:RegisterEvent("CHAT_MSG_ADDON")
    module:RegisterEvent("PLAYER_XP_UPDATE")
    RegisterAddonMessagePrefix(MessagePrefix)
end

local function CreateMessage(type, xp, max, level, class)
    return (type or MSG_TYPE_DATA)..":"..(xp or UnitXP("PLAYER"))..":"..(max or UnitXPMax("PLAYER"))..":"..(level or UnitLevel("player"))..":"..(class or D.class)
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
    SendAddonMessage(MessagePrefix, CreateMessage(MSG_TYPE_REQUEST), "WHISPER", target)
end

D.SendDelete = function(target)
    if not string.match(target, "%-") then return end
    D.DeleteMark(friend)
    SendAddonMessage(MessagePrefix, CreateMessage(MSG_TYPE_DELETE), "WHISPER", target)
end

D.SendPing = function(target)
    if not string.match(target, "%-") then return end
    if friendsWithAddon[friend] or pingedFriends[friend] then return end
    local x = SendAddonMessage(MessagePrefix, CreateMessage(MSG_TYPE_PING), "WHISPER", target)
    pingedFriends[target] = true
end

D.SendPong = function(target)
    if not string.match(target, "%-") then return end
    local x = SendAddonMessage(MessagePrefix, CreateMessage(MSG_TYPE_PONG), "WHISPER", target)
end

D.SendUpdate = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage(MessagePrefix, CreateMessage(MSG_TYPE_DATA), "WHISPER", target)
end

D.SendUpdates = function()
    for target, _ in pairs(D.GetMarks()) do
        if target and target ~= D.nameRealm then
            D.SendUpdate(target)
        end
    end
end

D.ShouldSendPing = function(friend)
    if friendsWithAddon[friend] or pingedFriends[friend] then return end
    return true
end

D.hasAddon = function(friend)
    if not friendsWithAddon[friend] then return end
    return true
end

function module:CHAT_MSG_ADDON(event, pre, rawmsg, chan, sender)
    if pre ~= MessagePrefix then return end
    if sender == D.nameRealm then return end
    if not string.match(sender, "%-") then return end
    if not rawmsg or rawmsg == "" then return end

    local msg = DecodeMessage(rawmsg)

    if msg.type == MSG_TYPE_DATA then
        D.UpdateMark(sender, msg.xp, msg.maxxp, msg.level, msg.class)
    end

    if msg.type == MSG_TYPE_PING then
        D.SendPong(sender)
    end

    if msg.type == MSG_TYPE_PONG then
        pingedFriends[sender] = nil
        friendsWithAddon[sender] = true
        D.On_FriendsFrame_Update()
    end

    if msg.type == MSG_TYPE_REQUEST then
        D.SendUpdate(sender)
        D.UpdateMark(sender, msg.xp, msg.maxxp, msg.level, msg.class)
        D.On_FriendsFrame_Update()
    end

    if msg.type == MSG_TYPE_DELETE then
        D.DeleteMark(sender)
        D.On_FriendsFrame_Update()
    end
end

function module:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end
    D.SendUpdates()
end
