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

<<<<<<< HEAD
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
=======
D.AddFriend = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage("XpFlag", D.CreateMessage("XpFlagRequest"), "WHISPER", target)
end

D.RemoveFriend = function(target)
    if not string.match(target, "%-") then return end
    SendAddonMessage("XpFlag", D.CreateMessage("XpFlagDelete"), "WHISPER", target)
end

D.UpdateFriends = function()
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
    for target, _ in pairs(D.marks) do
        if target and target ~= D.nameRealm then
            D.SendUpdate(target)
        end
    end
end

<<<<<<< HEAD
D.InitCommunication = function()
    D:RegisterEvent("CHAT_MSG_ADDON")
    RegisterAddonMessagePrefix(MessagePrefix)
end

function D:CHAT_MSG_ADDON(event, pre, rawmsg, chan, sender)
    if pre ~= MessagePrefix then return end
=======
D.HandleMessages = function(event, pre, rawmsg, chan, sender, marks)
    if pre ~= "XpFlag" then return end
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
    if sender == D.nameRealm then return end
    if not string.match(sender, "%-") then return end
    if not rawmsg or rawmsg == "" then return end

<<<<<<< HEAD
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
=======
    local msg = D.DecodeMessage(rawmsg)

    if msg.type == "XpFlagRequest" then
        SendAddonMessage("XpFlag", D.CreateMessage(), "WHISPER", sender)        
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
    end

    if msg.type == "XpFlagDelete" then
        D.marks[sender] = D.DeleteMark(D.marks[sender])
<<<<<<< HEAD
        D.On_FriendsFrame_Update()
    end
=======
    else
        D.UpdateMark(marks, sender, msg.xp, msg.maxxp, msg.level, msg.class)
    end

    D.On_FriendsFrame_Update()
      
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
end
