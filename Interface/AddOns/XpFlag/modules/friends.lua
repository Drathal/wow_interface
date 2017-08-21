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
            D.SendRequest(friendNameRealm)
        elseif not connected and friends[friendNameRealm] then
            friends[friendNameRealm] = nil
        end
    end

    return friends
end

local function GetBNFriendName(id)
    local bnetIDAccount, _, _, isBattleTagPresence, characterName, bnetIDGameAccount, client, isOnline, _, isAFK, isDND, _, _, isRIDFriend, _, _ = BNGetFriendInfo(id)
    if not bnetIDGameAccount then return end
    local _, characterName, client, realmName, realmID, faction, race, class, _, zoneName, _, _, _, _, _, _ = BNGetGameAccountInfo(bnetIDGameAccount)

    if not isOnline or not characterName or client ~= 'WoW' then return nil end

    return characterName..'-'..realmName
end

local function GetFriendName(id)
    local name, level, class, area, connected, status, note, raf, id = GetFriendInfo(i)

    if not name or not connected then return nil end

    if not string.match(name, "-") then
        name = name.."-"..D.realm
    end

    return name
end

local function GetFriendNameByButton(button)
    if button.buttonType == FRIENDS_BUTTON_TYPE_BNET then
        return GetBNFriendName(button.id)
    elseif button.buttonType == FRIENDS_BUTTON_TYPE_WOW then
        -- return GetFriendName(button.id)
    end

    return nil
end

local function OnXpFlagFriendButtonClick(button, friend)
    --print("OnXpFlagFriendButtonClick", button, friend)
    if D.marks[friend] then
        --print(" DISABLE ")
        D.SendDelete(friend)
    else
        --print(" ENABLE ")
        D.SendRequest(friend)
    end
end

local function SetXpFlagButtonState(button, state)
    if not button then return end

    if state then
        button:SetNormalTexture("Interface\\COMMON\\Indicator-Green")
        button:SetPushedTexture("Interface\\COMMON\\Indicator-Green")
        button:SetHighlightTexture("Interface\\COMMON\\Indicator-Green")
        return
    end

    button:SetNormalTexture("Interface\\COMMON\\Indicator-Gray")
    button:SetPushedTexture("Interface\\COMMON\\Indicator-Gray")
    button:SetHighlightTexture("Interface\\COMMON\\Indicator-Gray")
end

D.On_FriendsFrame_Update = function()
    --print("On_FriendsFrame_Update")
    local buttons = FriendsFrameFriendsScrollFrame.buttons

    local onlineFriends = {}

    for i = 1, #buttons do
        local friend = GetFriendNameByButton(buttons[i])
        if not friend then break end
        onlineFriends[friend] = buttons[i]
    end

    for friend, _ in pairs(D.marks) do
        if friend and friend ~= D.nameRealm and not onlineFriends[friend] then
            D.marks[friend] = D.DeleteMark(D.marks[friend])
            D.SendDelete(friend)
        end
    end

    for friend, button in pairs(onlineFriends) do
        if not button:IsShown() then break end

        if D.ShouldSendPing(friend) then
            D.SendPing(friend)
            break
        end

        if not D.hasAddon(friend) then return end

        if not button.xpflagbutton then
            button.xpflagbutton = D.CreateMiniButton(button)
            button.xpflagbutton:SetScript("OnClick", function(self) OnXpFlagFriendButtonClick(self, friend) end)
        end

        SetXpFlagButtonState(button.xpflagbutton, D.marks[friend])
    end
end

D.RegisterFriendsFrameUpdate = function()
    D:RegisterEvent("FRIENDLIST_UPDATE")
    hooksecurefunc(FriendsFrameFriendsScrollFrame, 'update', D.On_FriendsFrame_Update)
    hooksecurefunc('FriendsFrame_UpdateFriends', D.On_FriendsFrame_Update)
end

D.CreateMiniButton = function(parent)
    local b = CreateFrame("Button", nil, parent)
    b:SetFrameLevel(8)
    b:SetFrameStrata("DIALOG")
    b:SetSize(16, 16)
    b:SetPoint("LEFT", parent, "LEFT", 3, - 8)
    b:SetNormalTexture("Interface\\COMMON\\Indicator-Gray")
    b:SetPushedTexture("Interface\\COMMON\\Indicator-Gray")
    b:SetHighlightTexture("Interface\\COMMON\\Indicator-Gray")
    b:Show()
    return b
end

function D:FRIENDLIST_UPDATE()
    --D.On_FriendsFrame_Update()
end
