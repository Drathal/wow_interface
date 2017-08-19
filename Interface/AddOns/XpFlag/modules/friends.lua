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

local function GetBNFriendName(id)
    local bnetIDAccount , _, _, isBattleTagPresence, characterName, bnetIDGameAccount, client, isOnline, _, isAFK, isDND, _, _, isRIDFriend, _, _ = BNGetFriendInfo(id)
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

D.On_FriendsFrame_Update = function() 
    local buttons = FriendsFrameFriendsScrollFrame.buttons    
    for i = 1, #buttons do
        if not buttons[i]:IsShown() then break end

        local friend = nil

        if buttons[i].buttonType == FRIENDS_BUTTON_TYPE_BNET then
            friend = GetBNFriendName(buttons[i].id)
        elseif buttons[i].buttonType == FRIENDS_BUTTON_TYPE_WOW then
            -- friend = GetFriendName(buttons[i].id)
        end

        if not friend then break end
    
        if not buttons[i].xpflagbutton then
            buttons[i].xpflagbutton = D.CreateMiniButton(buttons[i])
            buttons[i].xpflagbutton:SetScript("OnClick", function(self) 
                if self.enabledXpFlag then
                    D.marks[friend] = D.DeleteMark(D.marks[friend])
                    D.confirm[friend] = nil
                    D.RemoveFriend(friend)
                    D.On_FriendsFrame_Update()
                else                                  
                    D.confirm[friend] = buttons[i].xpflagbutton
                    D.AddFriend(friend)
                    D.On_FriendsFrame_Update()
                end
            end)    
        end

        if D.marks[friend] then
            buttons[i].xpflagbutton:SetNormalTexture("Interface\\COMMON\\Indicator-Green")
            buttons[i].xpflagbutton:SetPushedTexture("Interface\\COMMON\\Indicator-Green")
            buttons[i].xpflagbutton:SetHighlightTexture("Interface\\COMMON\\Indicator-Green")
            buttons[i].xpflagbutton.enabledXpFlag = true
        else
            buttons[i].xpflagbutton:SetNormalTexture("Interface\\COMMON\\Indicator-Gray")
            buttons[i].xpflagbutton:SetPushedTexture("Interface\\COMMON\\Indicator-Gray")
            buttons[i].xpflagbutton:SetHighlightTexture("Interface\\COMMON\\Indicator-Gray")
            buttons[i].xpflagbutton.enabledXpFlag = nil
        end        

    end
end 

D.RegisterFriends = function()
    hooksecurefunc(FriendsFrameFriendsScrollFrame, 'update', D.On_FriendsFrame_Update)
    hooksecurefunc('FriendsFrame_UpdateFriends', D.On_FriendsFrame_Update)
end

D.CreateMiniButton = function(parent)
    local b = CreateFrame("Button", nil, parent)
    b:SetFrameLevel(8)
    b:SetFrameStrata("DIALOG")
    b:SetSize(16, 16)    
    b:SetPoint("LEFT", parent, "LEFT", 3, -8)
    b:SetNormalTexture("Interface\\COMMON\\Indicator-Gray")
    b:SetPushedTexture("Interface\\COMMON\\Indicator-Gray")
    b:SetHighlightTexture("Interface\\COMMON\\Indicator-Gray")
    b:Show()
    return b
end