local D, C, L = unpack(select(2, ...))

local version = GetAddOnMetadata("XpFlag", "Version");
local playerClass = select(2, UnitClass("PLAYER"));
local playerName = UnitName("PLAYER");
local playerLevel = UnitLevel("PLAYER");
local playerFaction = UnitFactionGroup("PLAYER") == "Alliance" and 1 or 0;
local playerRealm = GetRealmName();

local MAX_PLAYER_LEVEL, BNET_CLIENT_WOW = MAX_PLAYER_LEVEL, BNET_CLIENT_WOW;
local BONUS_OBJECTIVE_EXPERIENCE_FORMAT = BONUS_OBJECTIVE_EXPERIENCE_FORMAT;
local RAID_CLASS_COLORS = RAID_CLASS_COLORS;
local UnitXP, UnitXPMax = UnitXP, UnitXPMax;
local GetNumFriends, GetFriendInfo = GetNumFriends, GetFriendInfo;
local BNGetNumFriends, BNGetFriendInfo, BNGetNumFriendGameAccounts, BNGetFriendGameAccountInfo = BNGetNumFriends, BNGetFriendInfo, BNGetNumFriendGameAccounts, BNGetFriendGameAccountInfo;
local SendAddonMessage = SendAddonMessage;
local GetFramerate = GetFramerate
local wipe, pairs = wipe, pairs;
local IsInGuild, GetNumGuildMembers, GetGuildRosterInfo = IsInGuild, GetNumGuildMembers, GetGuildRosterInfo;

local min = math.min;
local max = math.max;

local marks = D.marks;
local friends = D.friends;
local playerBar = nil;

local XpFlag = D;
local f = D.f

local defaults = {
    version = version,
    showself = true,
    selfcolor = {0.25, 0.5, 1, 1},
    selfcolorrested = {0.5, 0.25, 1, 1},
    flipmarkers = true,
    width = 15,
    height = 15
}

D.tooltip = D.CreateTooltip(marks);

D.f:SetScript('OnUpdate', function(self, elapsed)
    if D.Throttle(self, elapsed) then return end

    D.AnimateWidth(playerBar)
    D.AnimateMarks(marks)
end)

function D:OnInitialize()
    self.db = defaults;

    D:RegisterEvent("PLAYER_ENTERING_WORLD");
    D:RegisterEvent("PLAYER_XP_UPDATE");
    D:RegisterEvent("PLAYER_LEVEL_UP");
    D:RegisterEvent("CHAT_MSG_ADDON");
    D:RegisterEvent("FRIENDLIST_UPDATE");
    D:RegisterEvent("PLAYER_UPDATE_RESTING");

    D:RegisterMessage("XpFlag-sparkmodel-show", D.onShowSparkModel)
    D:RegisterMessage("XpFlag-sparkmodel-hide", D.onHideSparkModel)

    RegisterAddonMessagePrefix("XpFlag")
end

function XpFlag.createMessage(msgtype, xp, maxxp)
    return (msgtype or "XpFlag")..":"..(xp or UnitXP("PLAYER"))..":"..(maxxp or UnitXPMax("PLAYER"))..":"..playerLevel..":"..playerClass
end

function XpFlag.decodeMessage(msg)
    local msgtype, xp, maxxp, level, class = msg:match("^(.-):(.-):(.-):(.-):(.-)$");

    return {
        msgtype = msgtype,
        xp = xp,
        maxxp = maxxp,
        level = level,
        class = class
    }
end

function D:PLAYER_ENTERING_WORLD(event)

    if C.player.show then
        D.UpdateMark(D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
    end

    if C.player.show and C.bar.show then
        playerBar = D.createBar()
        playerBar.to = (D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER"))
    end

    ShowFriends();
    XpFlag:FRIENDLIST_UPDATE();

    XpFlag:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function XpFlag:PLAYER_UPDATE_RESTING(event)
    if XpFlag.db.showself then
        D.UpdateMark(D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
        D.UpdatePlayerBar(playerBar)
    end
end

function XpFlag:FRIENDLIST_UPDATE()
    local allFriends, onlineFriends = GetNumFriends()

    for i = 1, allFriends do
        local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i);
        if not name then break end

        local friendNameRealm = name.."-"..playerRealm

        if connected and not friends[friendNameRealm] then
            friends[friendNameRealm] = true;
            SendAddonMessage("XpFlag", XpFlag.createMessage("XpFlagRequest"), "WHISPER", friendNameRealm);
        elseif not connected and friends[friendNameRealm] then
            friends[friendNameRealm] = nil;
        end
    end

    D.RefreshMarks();
end

function XpFlag:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    for target, _ in pairs(friends) do
        if target then
            SendAddonMessage("XpFlag", XpFlag.createMessage("XpFlag"), "WHISPER", target);
        end
    end

    if XpFlag.db.showself then
        D.UpdateMark(D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), playerLevel, playerClass);
        D.UpdatePlayerBar(playerBar)
    end
end

function XpFlag:PLAYER_LEVEL_UP(event, level)
    playerLevel = tonumber(level);
end

function XpFlag:CHAT_MSG_ADDON(event, pre, msg, chan, sender)

    if pre ~= "XpFlag" then return end
    if sender == D.nameRealm then return end
    if not msg or msg == "" then return end

    local message = XpFlag.decodeMessage(msg)

    if message.msgtype == "XpFlagRequest" then
        SendAddonMessage("XpFlag", XpFlag.createMessage(), "WHISPER", sender);
    end

    friends[sender] = true
    D.UpdateMark(sender, message.xp, message.maxxp, message.level, message.class);
end
