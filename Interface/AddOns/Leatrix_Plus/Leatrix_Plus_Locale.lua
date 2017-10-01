----------------------------------------------------------------------
-- 	Leatrix Plus Locale (www.leatrix.com)
----------------------------------------------------------------------

-- 	Get locale
	local GameLocale = GetLocale()

	-- GameLocale = "enUS"
	-- GameLocale = "deDE"
	-- GameLocale = "esMX"
	-- GameLocale = "esES"
	-- GameLocale = "frFR"
	-- GameLocale = "itIT"
	-- GameLocale = "ptBR"
	-- GameLocale = "ruRU"
	-- GameLocale = "koKR"
	-- GameLocale = "zhCN"
	-- GameLocale = "zhTW"

	-- Create locale table
	local _, Leatrix_Plus = ...
	local function localeFunc(L, key) return key end
	local L = setmetatable({}, {__index = localeFunc})
	Leatrix_Plus.L = L

----------------------------------------------------------------------
-- 	deDE: German
----------------------------------------------------------------------

if GameLocale == "deDE" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	esMX: Spanish (Mexico)
----------------------------------------------------------------------

if GameLocale == "esMX" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	esES: Spanish (Spain)
----------------------------------------------------------------------

if GameLocale == "esES" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	frFR: French
----------------------------------------------------------------------

if GameLocale == "frFR" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	itIT: Italian
----------------------------------------------------------------------

if GameLocale == "itIT" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	ptBR: Portugese (Brazil)
----------------------------------------------------------------------

if GameLocale == "ptBR" then

--Translation missing 
-- L["A cinematic skip was attempted."] = ""
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
--Translation missing 
-- L["A friend request from"] = ""
--Translation missing 
-- L["A movie skip was attempted."] = ""
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
--Translation missing 
-- L["Accept resurrection"] = ""
--Translation missing 
-- L["Accept Resurrection"] = ""
--Translation missing 
-- L["Accept summon"] = ""
--Translation missing 
-- L["Account achievements are being shared."] = ""
--Translation missing 
-- L["Account achievements are hidden."] = ""
--Translation missing 
-- L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = ""
--Translation missing 
-- L["Addon"] = ""
--Translation missing 
-- L["Alerts"] = ""
--Translation missing 
-- L["All 3 battle pet slots need to be unlocked."] = ""
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
--Translation missing 
-- L["Arathi Highlands"] = ""
--Translation missing 
-- L["Arrival on Argus"] = ""
--Translation missing 
-- L["Ashenvale"] = ""
--Translation missing 
-- L["Ashran"] = ""
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
--Translation missing 
-- L["Automate quests"] = ""
--Translation missing 
-- L["Automation"] = ""
--Translation missing 
-- L["Azshara"] = ""
--Translation missing 
-- L["Azsuna"] = ""
--Translation missing 
-- L["Azuremyst Isle"] = ""
--Translation missing 
-- L["Back to Main Menu"] = ""
--Translation missing 
-- L["Barrens"] = ""
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
--Translation missing 
-- L["Battlegrounds"] = ""
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
--Translation missing 
-- L["Blade's Edge Mountains"] = ""
--Translation missing 
-- L["Blizzard"] = ""
--Translation missing 
-- L["Block duels"] = ""
--Translation missing 
-- L["Block friend requests"] = ""
--Translation missing 
-- L["Block party invites"] = ""
--Translation missing 
-- L["Block pet battle duels"] = ""
--Translation missing 
-- L["Blocks"] = ""
--Translation missing 
-- L["Bloodmyst Isle"] = ""
--Translation missing 
-- L["Borean Tundra"] = ""
--Translation missing 
-- L["Bottom"] = ""
--Translation missing 
-- L["Broken Isles"] = ""
--Translation missing 
-- L["Broken Shore"] = ""
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
--Translation missing 
-- L["Buff Frame"] = ""
--Translation missing 
-- L["Buffs"] = ""
--Translation missing 
-- L["Burning Steppes"] = ""
--Translation missing 
-- L["Buyout Only"] = ""
--Translation missing 
-- L["Camera distance"] = ""
--Translation missing 
-- L["Cataclysm"] = ""
--Translation missing 
-- L["Chain style"] = ""
--Translation missing 
-- L["Character"] = ""
--Translation missing 
-- L["Chat"] = ""
--Translation missing 
-- L["Chat Frame"] = ""
--Translation missing 
-- L["Checkbox labels are Ok."] = ""
--Translation missing 
-- L["Cinematics"] = ""
--Translation missing 
-- L["Class colored frames"] = ""
--Translation missing 
-- L["Class Colored Frames"] = ""
--Translation missing 
-- L["Click to configure the settings for this option."] = ""
--Translation missing 
-- L["Click to reset the settings on this page."] = ""
--Translation missing 
-- L["Click to return to the main menu."] = ""
--Translation missing 
-- L["Color the backdrops based on faction"] = ""
--Translation missing 
-- L["Combat log cannot be hidden while undocked."] = ""
--Translation missing 
-- L["Combat plates"] = ""
--Translation missing 
-- L["Configuration Panel"] = ""
--Translation missing 
-- L["Cooldowns"] = ""
--Translation missing 
-- L["Coordinates"] = ""
--Translation missing 
-- L["Coordinates Disabled"] = ""
--Translation missing 
-- L["Coordinates Enabled"] = ""
--Translation missing 
-- L["Crystalsong Forest"] = ""
--Translation missing 
-- L["Customise minimap"] = ""
--Translation missing 
-- L["Dalaran"] = ""
--Translation missing 
-- L["Dark Soil scanning activated.  Reload UI to exit."] = ""
--Translation missing 
-- L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = ""
--Translation missing 
-- L["Darken the frame background"] = ""
--Translation missing 
-- L["Darkshore"] = ""
--Translation missing 
-- L["Death of Ysera"] = ""
--Translation missing 
-- L["Deepholm"] = ""
--Translation missing 
-- L["Disable bag automation"] = ""
--Translation missing 
-- L["Disable chat fade"] = ""
--Translation missing 
-- L["Disable loot warnings"] = ""
--Translation missing 
-- L["Disable map emote"] = ""
--Translation missing 
-- L["Disable pet automation"] = ""
--Translation missing 
-- L["Disable sticky chat"] = ""
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
--Translation missing 
-- L["Draenor"] = ""
--Translation missing 
-- L["Drag the coordinates frame to position it."] = ""
--Translation missing 
-- L["Drag the frame overlay to position the frame."] = ""
--Translation missing 
-- L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Drag the tooltip overlay to position it."] = ""
--Translation missing 
-- L["Dragonblight"] = ""
--Translation missing 
-- L["Dread Wastes"] = ""
--Translation missing 
-- L["Dun Morogh"] = ""
--Translation missing 
-- L["durability"] = ""
--Translation missing 
-- L["Durability"] = ""
--Translation missing 
-- L["Durotar"] = ""
--Translation missing 
-- L["Duskwood"] = ""
--Translation missing 
-- L["Dustwallow Marsh"] = ""
--Translation missing 
-- L["Eastern"] = ""
--Translation missing 
-- L["Eastern Plaguelands"] = ""
--Translation missing 
-- L["Effects"] = ""
--Translation missing 
-- L["ELITE"] = ""
--Translation missing 
-- L["Elwynn Forest"] = ""
--Translation missing 
-- L["Enable hotkey"] = ""
--Translation missing 
-- L["Enable viewport"] = ""
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
--Translation missing 
-- L["Enhance world map"] = ""
--Translation missing 
-- L["Enhancements"] = ""
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
--Translation missing 
-- L["Error frame text will be hidden"] = ""
--Translation missing 
-- L["Error frame text will be shown"] = ""
--Translation missing 
-- L["Error Text"] = ""
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
--Translation missing 
-- L["Eversong Woods"] = ""
--Translation missing 
-- L["Exclude combat resurrection requests"] = ""
--Translation missing 
-- L["Extras"] = ""
--Translation missing 
-- L["Fade windowed map while moving"] = ""
--Translation missing 
-- L["Fall of Deathwing"] = ""
--Translation missing 
-- L["Faster auto loot"] = ""
--Translation missing 
-- L["Fate of the Horde"] = ""
--Translation missing 
-- L["Features"] = ""
--Translation missing 
-- L["Felwood"] = ""
--Translation missing 
-- L["Feralas"] = ""
--Translation missing 
-- L["Find Item"] = ""
--Translation missing 
-- L["Font size"] = ""
--Translation missing 
-- L["Frames"] = ""
--Translation missing 
-- L["Frostfire Ridge"] = ""
--Translation missing 
-- L["Game Options"] = ""
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
--Translation missing 
-- L["Ghost"] = ""
--Translation missing 
-- L["Ghostlands"] = ""
--Translation missing 
-- L["Gold Only"] = ""
--Translation missing 
-- L["Gorgrond"] = ""
--Translation missing 
-- L["Graphics and Sound"] = ""
--Translation missing 
-- L["Grizzly Hills"] = ""
--Translation missing 
-- L["Groups"] = ""
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
--Translation missing 
-- L["Hellfire Peninsula"] = ""
--Translation missing 
-- L["Help"] = ""
--Translation missing 
-- L["Hide achievement alerts"] = ""
--Translation missing 
-- L["Hide alerts"] = ""
--Translation missing 
-- L["Hide bodyguard gossip"] = ""
--Translation missing 
-- L["Hide boss banner"] = ""
--Translation missing 
-- L["Hide chat buttons"] = ""
--Translation missing 
-- L["Hide clean-up buttons"] = ""
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
--Translation missing 
-- L["Hide crafted names"] = ""
--Translation missing 
-- L["Hide encounter alerts"] = ""
--Translation missing 
-- L["Hide error messages"] = ""
--Translation missing 
-- L["Hide gryphons"] = ""
--Translation missing 
-- L["Hide level-up display"] = ""
--Translation missing 
-- L["Hide loot alerts"] = ""
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
--Translation missing 
-- L["Hide portrait numbers"] = ""
--Translation missing 
-- L["Hide profession alerts"] = ""
--Translation missing 
-- L["Hide social button"] = ""
--Translation missing 
-- L["Hide stance bar"] = ""
--Translation missing 
-- L["Hide subzone text"] = ""
--Translation missing 
-- L["Hide talking frame"] = ""
--Translation missing 
-- L["Hide the clock below the minimap"] = ""
--Translation missing 
-- L["Hide the combat log"] = ""
--Translation missing 
-- L["Hide tooltips for world units during combat"] = ""
--Translation missing 
-- L["Hide zone information above the minimap"] = ""
--Translation missing 
-- L["Hide zone text"] = ""
--Translation missing 
-- L["Highmountain"] = ""
--Translation missing 
-- L["Home"] = ""
--Translation missing 
-- L["Hotkey"] = ""
--Translation missing 
-- L["Howling Fjord"] = ""
--Translation missing 
-- L["Icecrown"] = ""
--Translation missing 
-- L["Icecrown Citadel"] = ""
--Translation missing 
-- L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = ""
--Translation missing 
-- L["If checked, a brief summary will be shown in chat when items are sold automatically."] = ""
--Translation missing 
-- L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = ""
--Translation missing 
-- L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = ""
--Translation missing 
-- L["If checked, a dark background will be used for the frame."] = ""
--Translation missing 
-- L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = ""
--Translation missing 
-- L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = ""
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
--Translation missing 
-- L["If checked, achievement alerts will not be shown."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
--Translation missing 
-- L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = ""
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
--Translation missing 
-- L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = ""
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
--Translation missing 
-- L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = ""
--Translation missing 
-- L["If checked, chat text will not fade out after a time period."] = ""
--Translation missing 
-- L["If checked, class colors will be used in the chat frame."] = ""
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
--Translation missing 
-- L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = ""
--Translation missing 
-- L["If checked, crafted items will no longer show the name of the crafter."] = ""
--Translation missing 
-- L["If checked, cursor coordinates will be shown at the top of the map."] = ""
--Translation missing 
-- L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = ""
--Translation missing 
-- L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = ""
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
--Translation missing 
-- L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = ""
--Translation missing 
-- L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = ""
--Translation missing 
-- L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = ""
--Translation missing 
-- L["If checked, guild ranks will be shown for players in your guild."] = ""
--Translation missing 
-- L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = ""
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = ""
--Translation missing 
-- L["If checked, quest updates will be shown in the error frame."] = ""
--Translation missing 
-- L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = ""
--Translation missing 
-- L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = ""
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
--Translation missing 
-- L["If checked, resurrection requests will be accepted automatically."] = ""
--Translation missing 
-- L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = ""
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
--Translation missing 
-- L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = ""
--Translation missing 
-- L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = ""
--Translation missing 
-- L["If checked, summon requests will be accepted automatically unless you are in combat."] = ""
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
--Translation missing 
-- L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = ""
--Translation missing 
-- L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = ""
--Translation missing 
-- L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = ""
--Translation missing 
-- L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = ""
--Translation missing 
-- L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = ""
--Translation missing 
-- L["If checked, the clock will be hidden."] = ""
--Translation missing 
-- L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = ""
--Translation missing 
-- L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = ""
--Translation missing 
-- L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = ""
--Translation missing 
-- L["If checked, the editbox will be moved to the top of the chat frame."] = ""
--Translation missing 
-- L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = ""
--Translation missing 
-- L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = ""
--Translation missing 
-- L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = ""
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
--Translation missing 
-- L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
--Translation missing 
-- L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = ""
--Translation missing 
-- L["If checked, the main bar gryphons will not be shown."] = ""
--Translation missing 
-- L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = ""
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the player frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
--Translation missing 
-- L["If checked, the stance bar will not be shown."] = ""
--Translation missing 
-- L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = ""
--Translation missing 
-- L["If checked, the target frame background and focus frame background will be shown in class color."] = ""
--Translation missing 
-- L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = ""
--Translation missing 
-- L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = ""
--Translation missing 
-- L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = ""
--Translation missing 
-- L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, unexplored areas of the map will be revealed."] = ""
--Translation missing 
-- L["If checked, unit targets will be shown."] = ""
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
--Translation missing 
-- L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the buff frame."] = ""
--Translation missing 
-- L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = ""
--Translation missing 
-- L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = ""
--Translation missing 
-- L["If checked, you will be able to customise and rescale the minimap."] = ""
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
--Translation missing 
-- L["If checked, you will be able to drag the chat frame to the edge of the screen."] = ""
--Translation missing 
-- L["If checked, you will be able to hide alert frames."] = ""
--Translation missing 
-- L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = ""
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = ""
--Translation missing 
-- L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = ""
--Translation missing 
-- L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = ""
--Translation missing 
-- L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = ""
--Translation missing 
-- L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = ""
--Translation missing 
-- L["If checked, you will be able to zoom out to a greater distance."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a battleground."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Ashran."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = ""
--Translation missing 
-- L["If checked, you will release automatically after you die in Wintergrasp."] = ""
--Translation missing 
-- L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = ""
--Translation missing 
-- L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = ""
--Translation missing 
-- L["If checked, your character will not perform the reading emote when you open the map."] = ""
--Translation missing 
-- L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = ""
--Translation missing 
-- L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = ""
--Translation missing 
-- L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = ""
--Translation missing 
-- L["If checked, zone text will not be shown (eg. 'Ironforge')."] = ""
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
--Translation missing 
-- L["Increase chat history"] = ""
--Translation missing 
-- L["Interface"] = ""
--Translation missing 
-- L["Invalid battle pet team parameter."] = ""
--Translation missing 
-- L["Invalid console variable."] = ""
--Translation missing 
-- L["Invalid parameter."] = ""
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
--Translation missing 
-- L["Invite from whispers"] = ""
--Translation missing 
-- L["Invite from Whispers"] = ""
--Translation missing 
-- L["Isle of Quel'Danas"] = ""
--Translation missing 
-- L["Jade Forest"] = ""
--Translation missing 
-- L["Kalimdor"] = ""
--Translation missing 
-- L["Krasarang Wilds"] = ""
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
--Translation missing 
-- L["Kun-Lai Summit"] = ""
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
--Translation missing 
-- L["Left"] = ""
--Translation missing 
-- L["Legion"] = ""
--Translation missing 
-- L["Lifetime honorable kills"] = ""
--Translation missing 
-- L["Lock the frame and make it non-interactive"] = ""
--Translation missing 
-- L["Lockout sharing"] = ""
--Translation missing 
-- L["Lost Isles & Kezan"] = ""
--Translation missing 
-- L["Maelstrom"] = ""
--Translation missing 
-- L["Mail Text"] = ""
--Translation missing 
-- L["Manage buff frame"] = ""
--Translation missing 
-- L["Manage effects"] = ""
--Translation missing 
-- L["Manage frames"] = ""
--Translation missing 
-- L["Manage tooltip"] = ""
--Translation missing 
-- L["Managed by Leatrix Plus"] = ""
--Translation missing 
-- L["Max camera zoom"] = ""
--Translation missing 
-- L["Mechanics"] = ""
--Translation missing 
-- L["Media"] = ""
--Translation missing 
-- L["Memory Usage"] = ""
--Translation missing 
-- L["Merge tracking button with calendar button"] = ""
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
--Translation missing 
-- L["Minimap"] = ""
--Translation missing 
-- L["Minimap scale"] = ""
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
--Translation missing 
-- L["Moonglade"] = ""
--Translation missing 
-- L["Mount Hyjal"] = ""
--Translation missing 
-- L["Mount not found."] = ""
--Translation missing 
-- L["Move editbox to top"] = ""
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
--Translation missing 
-- L["Movies"] = ""
--Translation missing 
-- L["Mulgore"] = ""
--Translation missing 
-- L["Music"] = ""
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
--Translation missing 
-- L["Nagrand"] = ""
--Translation missing 
-- L["Nagrand (Draenor)"] = ""
--Translation missing 
-- L["Netherstorm"] = ""
--Translation missing 
-- L["No help is available for this page."] = ""
--Translation missing 
-- L["No items with durability equipped."] = ""
--Translation missing 
-- L["No tooltip showing."] = ""
--Translation missing 
-- L["NONE"] = ""
--Translation missing 
-- L["Northrend"] = ""
--Translation missing 
-- L["Nude"] = ""
--Translation missing 
-- L["Outland"] = ""
--Translation missing 
-- L["Overall"] = ""
--Translation missing 
-- L["Pandaria"] = ""
--Translation missing 
-- L["Particle density"] = ""
--Translation missing 
-- L["Party from friends"] = ""
--Translation missing 
-- L["Pet"] = ""
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
--Translation missing 
-- L["Player"] = ""
--Translation missing 
-- L["Player Chain"] = ""
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
--Translation missing 
-- L["Quest Text"] = ""
--Translation missing 
-- L["Queue from friends"] = ""
--Translation missing 
-- L["Raid frame toggle"] = ""
--Translation missing 
-- L["Raise the frame strata level"] = ""
--Translation missing 
-- L["RARE"] = ""
--Translation missing 
-- L["RARE ELITE"] = ""
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
--Translation missing 
-- L["Release in PvP"] = ""
--Translation missing 
-- L["Reload"] = ""
--Translation missing 
-- L["Remove raid restrictions"] = ""
--Translation missing 
-- L["Repair Automatically"] = ""
--Translation missing 
-- L["Repair automatically"] = ""
--Translation missing 
-- L["Repair using guild funds if available"] = ""
--Translation missing 
-- L["Repaired for"] = ""
--Translation missing 
-- L["Requires UI reload."] = ""
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
--Translation missing 
-- L["Reset"] = ""
--Translation missing 
-- L["Resize mail text"] = ""
--Translation missing 
-- L["Resize quest text"] = ""
--Translation missing 
-- L["Resize the game world"] = ""
--Translation missing 
-- L["Rested bubbles"] = ""
--Translation missing 
-- L["Return to the Black Temple"] = ""
--Translation missing 
-- L["Reveal"] = ""
--Translation missing 
-- L["Reveal unexplored areas of the map"] = ""
--Translation missing 
-- L["Right"] = ""
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
--Translation missing 
-- L["Ruins of Gilneas"] = ""
--Translation missing 
-- L["Scale"] = ""
--Translation missing 
-- L["Searing Gorge"] = ""
--Translation missing 
-- L["Select the settings that you want to use."] = ""
--Translation missing 
-- L["Sell junk automatically"] = ""
--Translation missing 
-- L["Sell Junk Automatically"] = ""
--Translation missing 
-- L["SELLING JUNK"] = ""
--Translation missing 
-- L["Settings"] = ""
--Translation missing 
-- L["Shaders"] = ""
--Translation missing 
-- L["Shadowmoon Valley"] = ""
--Translation missing 
-- L["Shadowmoon Valley (Draenor)"] = ""
--Translation missing 
-- L["Sholazar Basin"] = ""
--Translation missing 
-- L["Show a brief summary of repair costs"] = ""
--Translation missing 
-- L["Show a summary of items sold"] = ""
--Translation missing 
-- L["Show auction controls"] = ""
--Translation missing 
-- L["Show character addons"] = ""
--Translation missing 
-- L["Show cooldowns"] = ""
--Translation missing 
-- L["Show coordinates"] = ""
--Translation missing 
-- L["Show cursor coordinates at the top of the map"] = ""
--Translation missing 
-- L["Show durability status"] = ""
--Translation missing 
-- L["Show guild ranks for your guild"] = ""
--Translation missing 
-- L["Show important error text"] = ""
--Translation missing 
-- L["Show minimap button"] = ""
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
--Translation missing 
-- L["Show pet save button"] = ""
--Translation missing 
-- L["Show player chain"] = ""
--Translation missing 
-- L["Show player frame in class color"] = ""
--Translation missing 
-- L["Show quest updates"] = ""
--Translation missing 
-- L["Show reveal checkbox at the top of the map"] = ""
--Translation missing 
-- L["Show target frame and focus frame in class color"] = ""
--Translation missing 
-- L["Show the coordinates frame"] = ""
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
--Translation missing 
-- L["Show the unit's target"] = ""
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
--Translation missing 
-- L["Show volume slider"] = ""
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
--Translation missing 
-- L["Silence rested emotes"] = ""
--Translation missing 
-- L["Silithus"] = ""
--Translation missing 
-- L["Silverpine Forest"] = ""
--Translation missing 
-- L["Skip cinematics"] = ""
--Translation missing 
-- L["Social"] = ""
--Translation missing 
-- L["Sold junk for"] = ""
--Translation missing 
-- L["Spell ID"] = ""
--Translation missing 
-- L["Spires of Arak"] = ""
--Translation missing 
-- L["Stack"] = ""
--Translation missing 
-- L["Stonetalon Mountains"] = ""
--Translation missing 
-- L["Stop"] = ""
--Translation missing 
-- L["Storm Peaks"] = ""
--Translation missing 
-- L["Stormheim"] = ""
--Translation missing 
-- L["Stranglethorn"] = ""
--Translation missing 
-- L["Support"] = ""
--Translation missing 
-- L["Suramar"] = ""
--Translation missing 
-- L["Swamp of Sorrows"] = ""
--Translation missing 
-- L["System"] = ""
--Translation missing 
-- L["Tabard"] = ""
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
--Translation missing 
-- L["Talador"] = ""
--Translation missing 
-- L["Tanaan Jungle"] = ""
--Translation missing 
-- L["Tanaris"] = ""
--Translation missing 
-- L["Target"] = ""
--Translation missing 
-- L["Target Tracking Disabled"] = ""
--Translation missing 
-- L["Target Tracking Enabled"] = ""
--Translation missing 
-- L["Teldrassil"] = ""
--Translation missing 
-- L["Terokkar Forest"] = ""
--Translation missing 
-- L["Text"] = ""
--Translation missing 
-- L["Text size"] = ""
--Translation missing 
-- L["Text Size"] = ""
--Translation missing 
-- L["Thank the player who resurrected you"] = ""
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
--Translation missing 
-- L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = ""
--Translation missing 
-- L["This panel will close automatically if you enter combat."] = ""
--Translation missing 
-- L["Thousand Needles"] = ""
--Translation missing 
-- L["Timer"] = ""
--Translation missing 
-- L["Tirisfal Glades"] = ""
--Translation missing 
-- L["To begin, choose an options page."] = ""
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
--Translation missing 
-- L["To use the Find button, you need to deselect the Game Time filter."] = ""
--Translation missing 
-- L["Tol Barad (the PvP zone)"] = ""
--Translation missing 
-- L["Tomb of Sargeras"] = ""
--Translation missing 
-- L["Tooltip"] = ""
--Translation missing 
-- L["Tooltip scale"] = ""
--Translation missing 
-- L["Tooltip title color"] = ""
--Translation missing 
-- L["Top"] = ""
--Translation missing 
-- L["Townlong Steppes"] = ""
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
--Translation missing 
-- L["Transparency"] = ""
--Translation missing 
-- L["Twilight Highlands"] = ""
--Translation missing 
-- L["Uldum"] = ""
--Translation missing 
-- L["Unclamp chat frame"] = ""
--Translation missing 
-- L["Un'Goro Crater"] = ""
--Translation missing 
-- L["Universal group color"] = ""
--Translation missing 
-- L["Use arrow keys in chat"] = ""
--Translation missing 
-- L["Use class colors in chat"] = ""
--Translation missing 
-- L["Use easy resizing"] = ""
--Translation missing 
-- L["Use Leatrix Plus to move that frame."] = ""
--Translation missing 
-- L["Use Leatrix Plus to reset that frame."] = ""
--Translation missing 
-- L["Use the mousewheel to zoom in and out"] = ""
--Translation missing 
-- L["Valley of the Four Winds"] = ""
--Translation missing 
-- L["Val'sharah"] = ""
--Translation missing 
-- L["Various"] = ""
--Translation missing 
-- L["Vashj'ir"] = ""
--Translation missing 
-- L["Vendors"] = ""
--Translation missing 
-- L["Version"] = ""
--Translation missing 
-- L["Victory at The Nighthold"] = ""
--Translation missing 
-- L["Video"] = ""
--Translation missing 
-- L["Viewport"] = ""
--Translation missing 
-- L["Visibility"] = ""
--Translation missing 
-- L["Wandering Isle"] = ""
--Translation missing 
-- L["Warlords of Draenor"] = ""
--Translation missing 
-- L["was automatically declined."] = ""
--Translation missing 
-- L["Weather density"] = ""
--Translation missing 
-- L["Welcome to Leatrix Plus."] = ""
--Translation missing 
-- L["Western Plaguelands"] = ""
--Translation missing 
-- L["Westfall"] = ""
--Translation missing 
-- L["Wetlands"] = ""
--Translation missing 
-- L["Whisper keyword"] = ""
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
--Translation missing 
-- L["Wintergrasp"] = ""
--Translation missing 
-- L["Winterspring"] = ""
--Translation missing 
-- L["World Map"] = ""
--Translation missing 
-- L["World of Warcraft"] = ""
--Translation missing 
-- L["World State"] = ""
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
--Translation missing 
-- L["You cannot do that in combat."] = ""
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
--Translation missing 
-- L["You have"] = ""
--Translation missing 
-- L["You need a battle pet team."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = ""
--Translation missing 
-- L["Your UI needs to be reloaded."] = ""
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
--Translation missing 
-- L["Zangarmarsh"] = ""
--Translation missing 
-- L["Zul'Drak"] = ""
--Translation missing 
-- L["Zygor addon not found."] = ""


end

----------------------------------------------------------------------
-- 	ruRU: Russian
----------------------------------------------------------------------

if GameLocale == "ruRU" then

L["A cinematic skip was attempted."] = "Была сделана попытка пропустить этот ролик."
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
L["A friend request from"] = "Запрос дружбы от"
L["A movie skip was attempted."] = "Была сделана попытка пропустить это видео."
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
L["Accept resurrection"] = "Подтверждать восркешение"
L["Accept Resurrection"] = "Подтверждать воскрешение"
L["Accept summon"] = "Подтверждать призыв"
L["Account achievements are being shared."] = "Достижения на учетную запись могут быть доступны другим персонажам."
L["Account achievements are hidden."] = "Достижения на учетную запись скрыты."
L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = "UI достижений не загружен. Откройте окно достижений и попробуйте снова."
L["Addon"] = "Модификация"
L["Alerts"] = "Оповещения"
L["All 3 battle pet slots need to be unlocked."] = "Все 3 слота питомцев должны быть разблокированы."
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
--Translation missing 
-- L["Anchor the cooldown icons to the player frame"] = ""
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
L["Arathi Highlands"] = "Нагорье Арати"
--Translation missing 
-- L["Arrival on Argus"] = ""
L["Ashenvale"] = "Ясеневый лес"
L["Ashran"] = "Ашран"
--Translation missing 
-- L["Automate gossip"] = ""
--Translation missing 
-- L["Automate Gossip"] = ""
L["Automate quests"] = "Автоматизация заданий"
L["Automation"] = "Автоматизация"
L["Azshara"] = "Азшара"
L["Azsuna"] = "Азсуна"
L["Azuremyst Isle"] = "Остров Лазурной Дымки"
L["Back to Main Menu"] = "Назад в главное меню"
L["Barrens"] = "Южные степи"
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
L["Battlegrounds"] = "Боевые зоны"
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
L["Blade's Edge Mountains"] = "Острогорье"
--Translation missing 
-- L["Blizzard"] = ""
L["Block duels"] = "Блокировать дуэли"
L["Block friend requests"] = "Блокировать запр. дружбы"
L["Block party invites"] = "Блокировать пригл. в группу"
L["Block pet battle duels"] = "Блокировать битвы питомцев"
L["Blocks"] = "Блокировки"
L["Bloodmyst Isle"] = "Остров Кровавой Дымки"
L["Borean Tundra"] = "Борейская тундра"
L["Bottom"] = "Нижняя"
--Translation missing 
-- L["Broken Isles"] = ""
L["Broken Shore"] = "Расколотый берег"
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
L["Buff Frame"] = "Окно эффектов"
L["Buffs"] = "Эффекты"
L["Burning Steppes"] = "Пылающие степи"
L["Buyout Only"] = "Только выкуп"
L["Camera distance"] = "Дистанция камеры"
--Translation missing 
-- L["Cataclysm"] = ""
L["Chain style"] = "Стиль контура"
L["Character"] = "Персонаж"
L["Chat"] = "Чат"
L["Chat Frame"] = "Окно чата"
L["Checkbox labels are Ok."] = "Сокращать описания."
L["Cinematics"] = "кинематика"
L["Class colored frames"] = "Рамки по цвету класса"
L["Class Colored Frames"] = "Рамки по цвету класса"
L["Click to configure the settings for this option."] = "Нажмите, чтобы настроить параметры на этой вкладке."
L["Click to reset the settings on this page."] = "Нажмите, чтобы сбросить настройки на этой странице."
L["Click to return to the main menu."] = "Нажмите, чтобы вернуться в главное меню."
L["Color the backdrops based on faction"] = "Цвет фона на основе цвета фракции"
L["Combat log cannot be hidden while undocked."] = "Журнал боя не может быть скрыт, пока отсоединён."
L["Combat plates"] = "Индикаторы"
L["Configuration Panel"] = "Панель настройки"
--Translation missing 
-- L["Cooldowns"] = ""
L["Coordinates"] = "Координаты"
L["Coordinates Disabled"] = "Координаты отключены"
L["Coordinates Enabled"] = "Координаты включены"
L["Crystalsong Forest"] = "Лес Хрустальной Песни"
L["Customise minimap"] = "Настроить миникарту"
L["Dalaran"] = "Даларан"
L["Dark Soil scanning activated.  Reload UI to exit."] = "Сканирование темной земли активировано. Перезагрузите UI для выхода."
L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = "Сканирование темной земли уже активировано. Вы должны запустить его только один раз. Перезагрузите UI для выхода."
L["Darken the frame background"] = "Затемнить фон окна"
L["Darkshore"] = "Темные берега"
--Translation missing 
-- L["Death of Ysera"] = ""
L["Deepholm"] = "Подземье"
L["Disable bag automation"] = "Отключить автоматизацию сумок"
L["Disable chat fade"] = "Откл. затемнение сообщений чата"
L["Disable loot warnings"] = "Откл. предупреждения о добыче"
L["Disable map emote"] = "Отключить эмоцию карты"
--Translation missing 
-- L["Disable pet automation"] = ""
L["Disable sticky chat"] = "Отключить липкий чат"
--Translation missing 
-- L["Disable the grey screen of death"] = ""
--Translation missing 
-- L["Disable the netherworld effect"] = ""
--Translation missing 
-- L["Disable the screen glow"] = ""
L["Draenor"] = "Дренор"
L["Drag the coordinates frame to position it."] = "Переместите окно координат."
L["Drag the frame overlay to position the frame."] = "Переместите рамки для изменения позиции окон."
L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = "Переместите рамки для изменения позиции окон.|n|nЧтобы изменить масштаб окна, щелкните по его рамке, чтобы его выбрать, а затем отрегулируйте масштаб ползунком на странице настроек.|n|nЭта панель закроется автоматически, если Вы входите в бой."
L["Drag the tooltip overlay to position it."] = "Переместите окно всплывающих подсказок."
L["Dragonblight"] = "Драконий Погост"
L["Dread Wastes"] = "Жуткие пустоши"
L["Dun Morogh"] = "Дун Морог"
L["durability"] = "прочности"
L["Durability"] = "Прочность"
L["Durotar"] = "Дуротар"
L["Duskwood"] = "Сумеречный лес"
L["Dustwallow Marsh"] = "Пылевые топи"
L["Eastern"] = "Восточные"
L["Eastern Plaguelands"] = "Восточные Чумные земли"
--Translation missing 
-- L["Effects"] = ""
L["ELITE"] = "Элитный"
L["Elwynn Forest"] = "Элвиннский лес"
L["Enable hotkey"] = "Вкл. горячую клавишу"
L["Enable viewport"] = "Включить полосы"
--Translation missing 
-- L["Enhance dressup"] = ""
--Translation missing 
-- L["Enhance Dressup"] = ""
L["Enhance world map"] = "Улучшить карту мира"
L["Enhancements"] = "Улучшения"
--Translation missing 
-- L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = ""
L["Error frame text will be hidden"] = "Сообщения об ошибках отключены"
L["Error frame text will be shown"] = "Сообщения об ошибках включены"
L["Error Text"] = "Сообщения об ошибках"
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
L["Eversong Woods"] = "Леса Вечной Песни"
L["Exclude combat resurrection requests"] = "Исключить запросы на воскрешение в бою"
L["Extras"] = "Дополнения"
L["Fade windowed map while moving"] = "Делать прозрачной карту мира в оконном режиме при перемещении"
--Translation missing 
-- L["Fall of Deathwing"] = ""
L["Faster auto loot"] = "Быстрый сбор добычи"
--Translation missing 
-- L["Fate of the Horde"] = ""
L["Features"] = "Особенности"
L["Felwood"] = "Оскверненный лес"
L["Feralas"] = "Фералас"
L["Find Item"] = "Найти предмет"
--Translation missing 
-- L["Font size"] = ""
L["Frames"] = "Рамки"
L["Frostfire Ridge"] = "Хребет Ледяного Огня"
L["Game Options"] = "Настройки игры"
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
L["Ghost"] = "Призрак"
L["Ghostlands"] = "Призрачные земли"
L["Gold Only"] = "Только золото"
L["Gorgrond"] = "Горгронд"
L["Graphics and Sound"] = "Графика и звук"
L["Grizzly Hills"] = "Седые холмы"
L["Groups"] = "Группы"
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
L["Hellfire Peninsula"] = "Полуостров Адского Пламени"
L["Help"] = "Справка"
L["Hide achievement alerts"] = "Скрыть оповещения о достижениях"
L["Hide alerts"] = "Скрыть оповещения"
L["Hide bodyguard gossip"] = "Скрыть разговоры телохранителя"
L["Hide boss banner"] = "Скрыть баннер босса"
L["Hide chat buttons"] = "Скрыть кнопки чата"
L["Hide clean-up buttons"] = "Скрыть кнопку сортировки"
--Translation missing 
-- L["Hide cooldown duration numbers (if enabled)"] = ""
L["Hide crafted names"] = "Скрыть имя изготовителя"
L["Hide encounter alerts"] = "Скрыть оповещения подземелий"
L["Hide error messages"] = "Скр. сообщ. об ошибках"
L["Hide gryphons"] = "Скрыть грифонов"
L["Hide level-up display"] = "Скрыть окно увл. уровня"
L["Hide loot alerts"] = "Скрыть оповещения о добыче"
--Translation missing 
-- L["Hide model positioning controls"] = ""
--Translation missing 
-- L["Hide order hall and garrison alerts"] = ""
--Translation missing 
-- L["Hide order hall bar"] = ""
L["Hide portrait numbers"] = "Скрыть числа на портрете"
L["Hide profession alerts"] = "Скрыть оповещения профессий"
--Translation missing 
-- L["Hide social button"] = ""
L["Hide stance bar"] = "Скрыть окно стоек"
L["Hide subzone text"] = "Скрыть название территории"
L["Hide talking frame"] = "Скрыть окно разговоров"
L["Hide the clock below the minimap"] = "Скрыть часы под миникартой"
L["Hide the combat log"] = "Скрыть журнал боя"
L["Hide tooltips for world units during combat"] = "Скрыть подсказки для мировых объектов во время боя"
L["Hide zone information above the minimap"] = "Скрыть информацию о зоне на миникарте"
L["Hide zone text"] = "Скрыть название зоны"
L["Highmountain"] = "Крутогорье"
L["Home"] = "Домой"
L["Hotkey"] = "Горячая клавиша"
L["Howling Fjord"] = "Ревущий фьорд"
L["Icecrown"] = "Ледяная Корона"
--Translation missing 
-- L["Icecrown Citadel"] = ""
L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = "Если флажок установлен, информация об итоговой стоимости будет отображена в чате в процессе автоматического ремонта."
L["If checked, a brief summary will be shown in chat when items are sold automatically."] = "Если флажок установлен, стоимость всех автоматически проданных предметов низкого качества будет отображена в чате."
L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = "Если флажок установлен, в окне персонажа будет добавлена кнопка, которая покажет прочность экипировки при наведении указателя мыши на нее.|n|nКроме этого, общий процент будет показан в окне чата, если Вы умрете."
L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = "Если флажок установлен, в верхней части мировой карты будет отображен флажок, который позволит Вам переключать неисследованные области непосредственно на карте мира."
L["If checked, a dark background will be used for the frame."] = "Если флажок установлен, для окна будет использоваться темный фон."
L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = "Если флажок установлен, приглашение в группу будет автоматически отправлено любому, кто шепнет Вам назначенное ключевое слово."
L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = "Если флажок установлен, ползунок регулировки основной громкости будет отображен на окне персонажа.|n|nПолзунок может быть размещен в любом из двух местах на окне персонажа. Для переключения между ними, удерживая клавишу SHIFT щелкните правой кнопкой мыши по ползунку."
--Translation missing 
-- L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = ""
L["If checked, achievement alerts will not be shown."] = "Если флажок установлен, оповещения о достижениях не будут отображены."
L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = "Если флажок установлен, дополнительные функциональные возможности будут добавлены в аукционный дом.|n|nТолько выкуп - создать аукционы без заполнения стартовой цены.|n|nТолько золото - установить в цене медь и серебро сразу на 99, чтобы ускорить новые аукционы.|n|nПоиск - поиск аукционов для предмета, который Вы продаете.|n|nКроме этого, настройка длительности аукциона будет сохранен на всем аккаунте."
--Translation missing 
-- L["If checked, additional functionality will be added to the dressup frames."] = ""
L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "Если флажок установлен, все серые предмены в Ваших сумках будут проданы автоматически при посещении торговца.|n|nВы можете удерживать клавишу SHIFT во время общения с торговцем для временного игнорирования этой настройки."
L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = "Если флажок установлен, фон подсказки будет синим (дружественная цель) или красным (враждебная цель)."
--Translation missing 
-- L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = ""
L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = "Если флажок установлен, BattleTag и Real ID запросы дружбы будут автоматически отклоняться.|n|nВключение этого параметра автоматически отклонит любые ожидающие запросы."
--Translation missing 
-- L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = ""
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = "Если флажок установлен, кнопки чата будут скрыты.|n|nЩелчек по вкладке чата автоматически покажет последние сообщения.|n|nИспользуйте колесо мыши для прокрутки истории чата. Удерживайте нажатой клавишу SHIFT для перехода на другую страницу чата или CTRL, для перехода к верхней или нижней части истории чата."
L["If checked, chat text will not fade out after a time period."] = "Если флажок установлен, текст чата не будет исчезать после определенного периода времени."
L["If checked, class colors will be used in the chat frame."] = "Если флажок установлен, классовые цвета будут использоваться в окне чата."
--Translation missing 
-- L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = ""
--Translation missing 
-- L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = ""
--Translation missing 
-- L["If checked, cooldown icon tooltips will be shown."] = ""
--Translation missing 
-- L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = ""
L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = "Если флажок установлен, координаты Вашего местоположения будут отображаться в перемещаемом, настраиваемом окне."
L["If checked, crafted items will no longer show the name of the crafter."] = "Если флажок установлен, имя изготовителя больше не будет отображаться на изготовленной вещи."
L["If checked, cursor coordinates will be shown at the top of the map."] = "Если флажок установлен, координаты курсора мыши будут отображены в верхней части мировой карты."
L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = "Если флажок установлен, значения урона и лечения на рамках игрока и питомца будут скрыты."
L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = "Если флажок установлен, перемещение вверх вкладки Общие (если изменение размера чата заблокировано) расширит форму чата.|n|nЕсли изменение размеров чата разблокировано, перемещение вкладки Общие приведет к перемещению окна чата."
--Translation missing 
-- L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = ""
L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = "Если флажок установлен, оповещения в подземельях не будут отображены.|n|nК подземельям, в данном случае, относятся подземелья, рейды, сценарии, вторжения, гильдейские вызовы и мировые задания."
L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = "Если флажок установлен, индикаторы здоровья будут отображены только во время боя и скрыты после его завершения."
L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = "Если флажок установлен, сообщения об ошибках (например, 'Недостаточно энергии') будут скрыты.|n|nЕсли кнопка у миникарты включена, Вы можете щелкнуть правой кнопкой мыши по ней, для переключения данного параметра, не входя в настройки."
L["If checked, guild ranks will be shown for players in your guild."] = "Если флажок установлен, ранг в гильдии будет отображаться для игроков в Вашей гильдии."
L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = "Если флажок установлен, внутриигравые ролики будут пропущены, если это возможно.|n|nВы можете удерживать клавишу SHIFT перед запуском ролика, чтобы временно переопределить этот параметр.|n|nОбратите внимание, что не все ролики могут быть пропущены."
--Translation missing 
-- L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = ""
--Translation missing 
-- L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = ""
--Translation missing 
-- L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = ""
--Translation missing 
-- L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = ""
--Translation missing 
-- L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = ""
L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = "Если флажок установлен, оповещения профессий не будут отображены."
L["If checked, quest updates will be shown in the error frame."] = "Если флажок установлен, сообщения об изменении статуса заданий будут отображены в окне ошибок."
L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = "Если флажок установлен, задания будут автоматически выбраны, приняты и сданы.|n|nВы можете удерживать клавишу SHIFT во время общения с дающим задание персонажем для временного игнорирования этой настройки."
L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = "Если флажок установлен, чаты рейдов и подземелий будут окрашены в синий цвет (чтобы соответствовать цвету чата группы по умолчанию)."
L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = "Если флажок установлен, ремонт будет оплачен из средств банка гильдии, если игрок имеет на это разрешение и в банке достаточно средств."
--Translation missing 
-- L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = ""
L["If checked, resurrection requests will be accepted automatically."] = "Если флажок установлен, запросы на воскрешение будут приниматься автоматически."
L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = "Если флажок установлен, запросы на воскрешение не будут автоматически приниматься, если игрок воскрешающий Вас находится в бою."
--Translation missing 
-- L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = ""
L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = "Если флажок установлен, липкий чат будет отключен.|n|nОбратите внимание, что это не относится к временным окнам чата или Battle.net разговорам."
L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = "Если флажок установлен, текст названия территории зоны не будет отображаться (напр., 'Палаты магии')."
L["If checked, summon requests will be accepted automatically unless you are in combat."] = "Если флажок установлен, запросы призыва будут приниматься автоматически, если вы не в бою."
--Translation missing 
-- L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = ""
L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = "Если флажок установлен, список модификаций (доступный из меню игры) будет по умолчанию отображаться для Вашего текущего персонажа."
L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = "Если флажок установлен, количество времени, необходимое для автоматического сбора добычи будут значительно сокращено."
L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = "Если флажок установлен, кнопка сортировки вещей в сумках и в банке отображаться не будет."
L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = "Если флажок установлен, баннер босса отображаться не будет.|n|nЭтот баннер обычно появляется после победы над боссом.  Он показывает имя босса и полученную с него добычу."
L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = "Если флажок установлен, кнопка для переключения контейнера рейд будет отображена над его окном управления (на левой стороне экрана), а не на самом окне управления.|n|nЭто позволит переключать рамку контейнера рейда без необходимости открывать окно его управления."
L["If checked, the clock will be hidden."] = "Если флажок установлен, часы будут скрыты."
L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = "Если флажок установлен, журнал боя будет скрыт.|n|nЖурнал боя должен быть присоединён к основному окну чата для того, чтобы этот параметр работал.|n|nЕсли журнал боя откреплён, Вы можете закрепить его перетащив на вкладку чата (после этого необходимо перезагрузить UI) или сбросить настройки окна чата (из соответствующего меню)."
L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = "Если флажок установлен, окно координат будет отображаться.|nЕсли у Вас включена кнопка на миникарте, Вы можете нажать на нее правой кнопкой мыши, удерживая клавишу SHIFT для переключения этого параметра в любое время.|n|nЕсли флажок не установлен, то окно координат будет отключено, и на его обновление не будет выделено ресурсов процессора."
L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = "Если флажок установлен, то параметр 'Позволить другим просматривать только достижения персонажа' в панели настроек игрового меню ('Общение') будет выбран и заблокирован."
L["If checked, the editbox will be moved to the top of the chat frame."] = "Если флажок установлен, поле ввода текста будет перемещено в верхнюю часть окна чата."
L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = "Если флажок установлен, следующие ошибки будут отображены в окне ошибок:|n|n- Инвентарь полон|n- Журнал заданий полон|n- Оповещения об исключении|n- Оповещения банка гильдии"
L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = "Если флажок установлен, рамка будет размещена на ВЫСОКОМ слое, что позволит ей отображаться над большинством окон.|n|nЕсли флажок не установлен, будет использоваться СРЕДНИЙ уровень наложения."
L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = "Если флажок установлен, окно будет заблокировано, и Вы не сможете переместить его.|n|nВключение этого параметра сделает окно не интерактивным, то есть Вы сможете щелкнуть через него, как если бы его вообще не было.|n|nЭто полезно, если Вы показываете координаты в пространстве, где обычно необходимо куда-либо нажимать (например, игровой мир или миникарта)."
--Translation missing 
-- L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = ""
L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = "Если флажок установлен, окно разговоров не будет отображаться, когда Вы будете говорить с активным гарнизонным телохранителем.|n|nВы можете удерживать клавишу SHIFT во время общения для временного игнорирования этой настройки."
--Translation missing 
-- L["If checked, the grey screen of death will be disabled."] = ""
L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = "Если флажок установлен, окно увеличения уровня не будет отображено.|n|nЭто окно обычно отображает цели подземелья, повышение уровня, награды за битву питомцев и др."
L["If checked, the main bar gryphons will not be shown."] = "Если флажок установлен, грифона на главном окне отображаться не будут."
L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = "Если флажок установлен, кнопки отслеживания и календаря на миникарте будут объединены в одну, для экономии пространства|n|nНовая кнопка будет перемещена на место занимаемое обычно кнопкой календаря.|n|nВы сможете щелкнуть левой кнопкой мыши по этой кнопке для того, чтобы отобразить меню отслеживания и правой кнопкой мыши, чтобы показать окно календаря."
--Translation missing 
-- L["If checked, the netherworld effect will be disabled."] = ""
--Translation missing 
-- L["If checked, the order hall command bar will not be shown."] = ""
L["If checked, the player frame background will be shown in class color."] = "Если флажок установлен, фон рамки игрока будет отображаться по цвету класса."
--Translation missing 
-- L["If checked, the screen glow will be disabled."] = ""
--Translation missing 
-- L["If checked, the social button and quick-join notification will be hidden."] = ""
L["If checked, the stance bar will not be shown."] = "Если флажок установлен, окно стоек отображаться не будет."
L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = "Если флажок установлен, окно разговоров не будет отображено.|n|nОкно разговоров появляется обычно в нижней части экрана, в процессе общения с некоторыми НПС."
L["If checked, the target frame background and focus frame background will be shown in class color."] = "Если флажок установлен, фон рамок цели и фокуса будет отображаться по цвету класса."
L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = "Если флажок установлен, всплывающие подсказки будут выделены цветом, и у Вас появится возможность изменять их расположение и масштаб."
L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = "Если флажок установлен, карта мира в оконном режиме будет автоматически становиться прозрачной, если Ваш персонаж будет передвигаться и курсор мыши не будет находиться над картой."
L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = "Если флажок установлен, сведения о зоне отображаемые выше миникарты, а также кнопка карта мира, будут скрыты."
L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = "Если флажок установлен, подсказки для мировых объектов будут скрыты во время боя.|n|nВы можете удерживать клавишу SHIFT для временного игнорирования этой настройки."
L["If checked, unexplored areas of the map will be revealed."] = "Если флажок установлен, на карте будут отображены неисследованные области."
L["If checked, unit targets will be shown."] = "Если флажок установлен, будет отображаться цель цели."
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
--Translation missing 
-- L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = ""
--Translation missing 
-- L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = ""
L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = "Если флажок установлен, Вы сможете нажимать кнопки со стрелками для перемещения курсора влево и вправо в окне чата.|n|nЕсли флажок не установлен, клавиши со стрелками будут использовать настройки назначения клавиш по умолчанию."
L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = "Если флажок установлен, Вы сможете изменить размер шрифта текста задания.|n|nВключение этого параметра будет влиять на размер текста других окон, наследующих один и тот же шрифт (например, окно поиска подземелий)."
L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = "Если флажок установлен, Вы сможете изменить стандартный размер шрифта текста письма."
L["If checked, you will be able to change the position and scale of the buff frame."] = "Если флажок установлен, Вы сможете изменить позацию или масштаб окна эффектов."
L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = "Если флажок установлен, Вы сможете изменять положение и масштаб рамок игрока, цели, мирового состояния, призрака и таймера. Макет изменений будет сохранен на уровне всего аккаунта."
L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = "Если флажок установлен, Вы сможете создать темные полосы. Они накладываются на игровой мир.|n|nПолосы располагаются над игровым миром, но под интерфейсом, так что Вы сможете поместить элементы пользовательского интерфейса над темными полосами."
L["If checked, you will be able to customise and rescale the minimap."] = "Если флажок установлен, Вы сможете настраивать и изменять размеры миникарты."
--Translation missing 
-- L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = ""
L["If checked, you will be able to drag the chat frame to the edge of the screen."] = "Если флажок установлен, Вы сможете переместить рамку чата к краю экрана."
L["If checked, you will be able to hide alert frames."] = "Если флажок установлен, у Вас появиться возможность скрыть рамки оповещений."
L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = "Если флажок установлен, Вы сможете открыть Leatrix Plus нажатием назначенной клавиши."
--Translation missing 
-- L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = ""
L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = "Если флажок установлен, у Вас появиться возможность изучить скрытые области на карте и показать координаты курсора в ее верхней части."
L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = "Если флажок установлен, Вы сможете сохранить текущий состав питомцев (включкая способности) в одну команду.|n|nКнопка будет добавлена в журнал питомцев. Щелчек по кнопке покажет дополнительные операции для Вашей текущей команды. При нажатии CTRL/C команда будет скопирована в память.|n|nВы можете вставить команду (с помощью CTRL/V) в окно чата или макроса для мгновенного выбора команды."
L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = "Если флажок установлен, Вы сможете отобразить редкий, элитный или редкий элитный контур вокруг рамки игрока."
L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = "Если флажок установлен, Вы сможете включить отображение окраски фона рамок игрока, цели и фокуса по цвету класса."
L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = "Если флажок установлен, Вы будете иметь возможность использовать колесо мыши для увеличения и уменьшения масштаба миникарты. Кнопки изменения масштаба будут скрыты."
L["If checked, you will be able to zoom out to a greater distance."] = "Если флажок установлен, Вы сможете максимально отдалять камеру."
L["If checked, you will release automatically after you die in a battleground."] = "Если флажок установлен, Вы испустите дух автоматически, если умрете в боевой зоне."
L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = "Если флажок установлен, Вы будете автоматически испускать дух, когда умрете в зоне, отмеченной как PvP.|n|nДух не будет испущен автоматически, если у Вас есть способность к самовоскрешению (камень души, реинкарнация и др.)"
L["If checked, you will release automatically after you die in Ashran."] = "Если флажок установлен, Вы испустите дух автоматически, если умрете на территории Ашрана."
L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = "Если флажок установлен, Вы испустите дух автоматически, если умрете на территории Тол Барада."
L["If checked, you will release automatically after you die in Wintergrasp."] = "Если флажок установлен, Вы испустите дух автоматически, если умрете на территории озера ледяных оков."
L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = "Если флажок установлен, Ваши сумки не будут открываться или закрываться автоматически, когда Вы взаимодействуете с торговцами, банком или почтовым ящиком."
L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = "Если флажок установлен, ваш персонаж будет благодарить игрока Вас воскресившего визуальной эмоцией."
L["If checked, your character will not perform the reading emote when you open the map."] = "Если флажок установлен, Ваш персонаж не будет выполнять эмоцию чтения, когда Вы открываете карту."
L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = "Если флажок установлен, история чата увеличится до 4096 линий. Если флажок не установлен, по умолчанию будет использоваться (128 линий).|n|nВключение этого параметра может помешать отображению некоторого текста во время входа в систему."
L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "Если флажок установлен, предметы Вашей экипировки будут автоматически отремонтированы при посещении подходящего торговца.|n|nВы можете удерживать клавишу SHIFT во время общения с торговцем для временного игнорирования этой настройки."
L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = "Если флажок установлен, Вашим персонажам низкого уровня будет разрешено присоединяться к рейдовым группам.|n|nОбратите внимание, что Вы не можете присоединиться непосредственно к рейдовой группе персонажем низкого уровня. Вы должны присоединиться сначала к группе и только после этого её лидер должен преобразовать группу в рейд.|n|nПерезагрузите UI пользователя лидера группы, если он не может конвертировать группу в рейд."
L["If checked, zone text will not be shown (eg. 'Ironforge')."] = "Если флажок установлен, текст названия зоны не будет отображаться (напр., 'Стальгорн')."
--Translation missing 
-- L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = ""
L["Increase chat history"] = "Увеличить историю чата"
L["Interface"] = "Интерфейс"
L["Invalid battle pet team parameter."] = "Недопустимый параметр для команды боевых питомцев."
--Translation missing 
-- L["Invalid console variable."] = ""
L["Invalid parameter."] = "Неверный параметр."
--Translation missing 
-- L["Invalid quest ID."] = ""
--Translation missing 
-- L["Invalid taint level."] = ""
L["Invite from whispers"] = "Приглашать по сообщению"
L["Invite from Whispers"] = "Приглашать по сообщению"
L["Isle of Quel'Danas"] = "Остров Кель'Данас"
L["Jade Forest"] = "Нефритовый лес"
L["Kalimdor"] = "Калимдор"
L["Krasarang Wilds"] = "Красарангские джунгли"
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
L["Kun-Lai Summit"] = "Вершина Кунь-Лай"
--Translation missing 
-- L["Last Stand"] = ""
--Translation missing 
-- L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = ""
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
L["Left"] = "Левая"
--Translation missing 
-- L["Legion"] = ""
L["Lifetime honorable kills"] = "Всего почетных побед"
L["Lock the frame and make it non-interactive"] = "Зафиксировать окно и сделать его не интерактивным"
L["Lockout sharing"] = "Совмесная блокировка"
L["Lost Isles & Kezan"] = "Затерянные острова"
L["Maelstrom"] = "Водоворот"
L["Mail Text"] = "Текст сообщения"
L["Manage buff frame"] = "Управление окном эффектов"
--Translation missing 
-- L["Manage effects"] = ""
L["Manage frames"] = "Управление рамками"
L["Manage tooltip"] = "Упр. вспл. подсказками"
L["Managed by Leatrix Plus"] = "Управляется Leatrix Plus"
L["Max camera zoom"] = "Макс. масштаб. камеры"
L["Mechanics"] = "Механика"
L["Media"] = "СМИ"
L["Memory Usage"] = "Использовано памяти"
L["Merge tracking button with calendar button"] = "Объединить кнопки отслеживания и календаря"
--Translation missing 
-- L["message shown."] = ""
--Translation missing 
-- L["messages shown."] = ""
L["Minimap"] = "Миникарта"
L["Minimap scale"] = "Масштаб миникарты"
--Translation missing 
-- L["Missing console variable."] = ""
--Translation missing 
-- L["Missing mount name."] = ""
--Translation missing 
-- L["Missing movie ID."] = ""
--Translation missing 
-- L["Missing pet name."] = ""
--Translation missing 
-- L["Missing quest ID."] = ""
--Translation missing 
-- L["Missing sound file parameter."] = ""
--Translation missing 
-- L["Mists of Pandaria"] = ""
--Translation missing 
-- L["Modifier key"] = ""
L["Moonglade"] = "Лунная поляна"
L["Mount Hyjal"] = "Гора Хиджал"
--Translation missing 
-- L["Mount not found."] = ""
L["Move editbox to top"] = "Перемест. окно ввода вверх"
--Translation missing 
-- L["Movie not playable."] = ""
--Translation missing 
-- L["Movie number"] = ""
L["Movies"] = "Кино"
L["Mulgore"] = "Мулгор"
L["Music"] = "Музыка"
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
L["Nagrand"] = "Награнд"
L["Nagrand (Draenor)"] = "Награнд (Дренор)"
L["Netherstorm"] = "Пустоверть"
L["No help is available for this page."] = "Справка недоступна для этой страницы."
--Translation missing 
-- L["No items with durability equipped."] = ""
L["No tooltip showing."] = "Нет всплывающих подсказок для отображения."
--Translation missing 
-- L["NONE"] = ""
L["Northrend"] = "Нордскол"
L["Nude"] = "Раздеться"
L["Outland"] = "Запределье"
L["Overall"] = "Всего"
L["Pandaria"] = "Пандария"
L["Particle density"] = "Плотность частиц"
L["Party from friends"] = "Пригл. в группу от друзей"
L["Pet"] = "Питомец"
--Translation missing 
-- L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = ""
L["Player"] = "Игрок"
L["Player Chain"] = "Контур рамки игрока"
--Translation missing 
-- L["Press CTRL/C to copy."] = ""
--Translation missing 
-- L["Prevent special model animations"] = ""
--Translation missing 
-- L["Quest completed."] = ""
--Translation missing 
-- L["Quest not completed."] = ""
L["Quest Text"] = "Текст задания"
L["Queue from friends"] = "Запрос от друзей"
L["Raid frame toggle"] = "Переключатель рейд. рамки"
L["Raise the frame strata level"] = "Повысить уровень наложения"
L["RARE"] = "Редкий"
L["RARE ELITE"] = "Редкий элитный"
--Translation missing 
-- L["Recent chat window"] = ""
--Translation missing 
-- L["Recent Chat Window"] = ""
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
L["Release in PvP"] = "Испускать дух в PvP"
L["Reload"] = "Перезагрузить"
L["Remove raid restrictions"] = "Снять ограничения рейда"
L["Repair Automatically"] = "Автоматический ремонт"
L["Repair automatically"] = "Автоматический ремонт"
L["Repair using guild funds if available"] = "Использовать средства банка гильдии, если доступно"
L["Repaired for"] = "Стоимость ремонта"
L["Requires UI reload."] = "Требуется перезагрузка UI."
--Translation missing 
-- L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = ""
L["Reset"] = "Сбросить"
L["Resize mail text"] = "Измн. размер текста сообщ."
L["Resize quest text"] = "Измн. размер текста задания"
--Translation missing 
-- L["Resize the game world"] = ""
L["Rested bubbles"] = "Бонус отдыха"
--Translation missing 
-- L["Return to the Black Temple"] = ""
L["Reveal"] = "Туман войны"
L["Reveal unexplored areas of the map"] = "Показать скрытые области на карте"
L["Right"] = "Правая"
--Translation missing 
-- L["Right-click to close."] = ""
--Translation missing 
-- L["Risking It All"] = ""
L["Ruins of Gilneas"] = "Руины Гилнеаса"
L["Scale"] = "Масштаб"
L["Searing Gorge"] = "Тлеющее ущелье"
L["Select the settings that you want to use."] = "Выберите параметры, которые вы хотите использовать."
L["Sell junk automatically"] = "Автоматически продавать хлам"
L["Sell Junk Automatically"] = "Автоматически продавать хлам"
L["SELLING JUNK"] = "ПРОДАЮ ХЛАМ"
L["Settings"] = "Параметры"
L["Shaders"] = "Тени"
L["Shadowmoon Valley"] = "Долина Призрачной Луны"
L["Shadowmoon Valley (Draenor)"] = "Долина Призрачной Луны (Дренор)"
L["Sholazar Basin"] = "Низина Шолазар"
L["Show a brief summary of repair costs"] = "Отображать итоговую стоимость ремонта"
L["Show a summary of items sold"] = "Отображать стоимость проданных предметов"
L["Show auction controls"] = "Отобр. элементы упрл. аукциона"
L["Show character addons"] = "Модификации для игрока"
--Translation missing 
-- L["Show cooldowns"] = ""
L["Show coordinates"] = "Отобр. координаты"
L["Show cursor coordinates at the top of the map"] = "Показывать координаты курсора в верхней части карты"
L["Show durability status"] = "Отобр. прочность экипировки"
L["Show guild ranks for your guild"] = "Отображать ранги для Вашей гильдии"
L["Show important error text"] = "Отображать важные сообщения об ошибках"
L["Show minimap button"] = "Отобр. иконку у миникарты"
--Translation missing 
-- L["Show nude and tabard buttons"] = ""
L["Show pet save button"] = "Показать кнопку сохрн. питомцев"
L["Show player chain"] = "Отобр. контур игрока"
L["Show player frame in class color"] = "Отображать фон рамки игрока по цвету класса"
L["Show quest updates"] = "Отображать обновления задания"
L["Show reveal checkbox at the top of the map"] = "Показать флажок неисследованных областей в верхней части карты"
L["Show target frame and focus frame in class color"] = "Отображать фон рамок цели и фокуса по цвету класса"
L["Show the coordinates frame"] = "Отображать окно координат"
--Translation missing 
-- L["Show the spell ID in buff icon tooltips"] = ""
L["Show the unit's target"] = "Отображать цель цели"
--Translation missing 
-- L["Show tooltips for the cooldown icons"] = ""
L["Show volume slider"] = "Отобр. ползунок рег. громкости"
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
L["Silence rested emotes"] = "Заглушать звуки эмоций"
L["Silithus"] = "Силитус"
L["Silverpine Forest"] = "Серебряный бор"
L["Skip cinematics"] = "Пропустить ролики"
L["Social"] = "Общение"
--Translation missing 
-- L["Sold junk for"] = ""
L["Spell ID"] = "ID закл."
L["Spires of Arak"] = "Пики Арака"
L["Stack"] = "Стек"
L["Stonetalon Mountains"] = "Когтистые горы"
L["Stop"] = "Стоп"
L["Storm Peaks"] = "Грозовая гряда"
L["Stormheim"] = "Штормхейм"
L["Stranglethorn"] = "Тернистая долина"
L["Support"] = "Поддержка"
L["Suramar"] = "Сурамар"
L["Swamp of Sorrows"] = "Болото печали"
L["System"] = "Система"
L["Tabard"] = "Накидка"
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
L["Talador"] = "Таладор"
L["Tanaan Jungle"] = "Танаанские джунгли"
L["Tanaris"] = "Танарис"
L["Target"] = "Цель"
L["Target Tracking Disabled"] = "Отслеживание цели отключено"
L["Target Tracking Enabled"] = "Отслеживание цели включено"
L["Teldrassil"] = "Тельдрассил"
L["Terokkar Forest"] = "Лес Тероккар"
L["Text"] = "Текст"
L["Text size"] = "Размер текста"
L["Text Size"] = "Размер текста"
L["Thank the player who resurrected you"] = "Благодарить игрока Вас воскресившего"
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
--Translation missing 
-- L["The Burning Crusade"] = ""
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = "Эта операция назначит текущую команду боевых питомцев и их способности.|n|nНажмите CTRL/C чтобы скопировать команду. После этого Вы сможете ее вставить в окно чата или макроса с помощью CTRL/V."
L["This panel will close automatically if you enter combat."] = "Это окно будет автоматически закрыто, если Вы вступите в бой."
L["Thousand Needles"] = "Тысяча Игл"
L["Timer"] = "Таймер"
L["Tirisfal Glades"] = "Тирисфальские леса"
L["To begin, choose an options page."] = "Для начала выберите страницу настроек."
--Translation missing 
-- L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = ""
L["To use the Find button, you need to deselect the Game Time filter."] = "Чтобы использовать кнопку поиска, Вам нужно отменить выбор фильтра 'Жетон WoW'."
L["Tol Barad (the PvP zone)"] = "Тол Барад (PvP зона)"
--Translation missing 
-- L["Tomb of Sargeras"] = ""
L["Tooltip"] = "Подсказки"
L["Tooltip scale"] = "Масштаб подсказки"
L["Tooltip title color"] = "Цвет заголовка всплывающей подсказки"
L["Top"] = "Верхняя"
L["Townlong Steppes"] = "Танлунские степи"
--Translation missing 
-- L["Tracing started."] = ""
--Translation missing 
-- L["Tracing stopped."] = ""
L["Transparency"] = "Прозрачность"
L["Twilight Highlands"] = "Сумеречное нагорье"
L["Uldum"] = "Ульдум"
L["Unclamp chat frame"] = "Разжать окно чата"
L["Un'Goro Crater"] = "Кратер Ун'Горо"
L["Universal group color"] = "Универсальные цвета групп"
L["Use arrow keys in chat"] = "Использовать кнопки в чате"
L["Use class colors in chat"] = "Испл. классовые цвета в чате"
L["Use easy resizing"] = "Испл. легкое измн. размера"
L["Use Leatrix Plus to move that frame."] = "Используйте Leatrix Plus, чтобы переместить эту рамку."
L["Use Leatrix Plus to reset that frame."] = "Используйте Leatrix Plus, чтобы сбросить положение этой рамки."
L["Use the mousewheel to zoom in and out"] = "Использовать колесо мыши для увеличения или уменьшения масштаба"
L["Valley of the Four Winds"] = "Долина Четырех Ветров"
L["Val'sharah"] = "Валь'шара"
L["Various"] = "Различный"
L["Vashj'ir"] = "Вайш'ир"
L["Vendors"] = "Продавцы"
L["Version"] = "Версия"
--Translation missing 
-- L["Victory at The Nighthold"] = ""
L["Video"] = "видео"
L["Viewport"] = "Полосы"
L["Visibility"] = "Видимость"
L["Wandering Isle"] = "Скитающийся остров"
--Translation missing 
-- L["Warlords of Draenor"] = ""
L["was automatically declined."] = "был автоматически отклонён."
L["Weather density"] = "Плотность погоды"
L["Welcome to Leatrix Plus."] = "Добро пожаловать в Leatrix Plus."
L["Western Plaguelands"] = "Западные Чумные земли"
L["Westfall"] = "Западный Край"
L["Wetlands"] = "Болотина"
L["Whisper keyword"] = "Ключевое слово"
--Translation missing 
-- L["Window height"] = ""
--Translation missing 
-- L["Window width"] = ""
L["Wintergrasp"] = "Озеро Ледяных Оков"
L["Winterspring"] = "Зимние Ключи"
L["World Map"] = "Карта мира"
--Translation missing 
-- L["World of Warcraft"] = ""
L["World State"] = "Состояние мира"
--Translation missing 
-- L["Wrath of the Lich King"] = ""
--Translation missing 
-- L["Wrathgate"] = ""
L["You cannot do that in combat."] = "Вы не можете сделать это в бою."
--Translation missing 
-- L["You do not own this pet.  Only owned pets can be searched."] = ""
L["You have"] = "У Вас"
L["You need a battle pet team."] = "Вам нужна команда боевых питомцев."
L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = "Ваш UI нуждается в перезагрузке для вступления в силу ряда изменений.|n|nВы недолжны немедленно нажимать на кнопку перезагрузки, но после завершения редактирования параметров Вам необходимо будет это сделать, для вступления в силу ряда изменений."
L["Your UI needs to be reloaded."] = "Ваш UI нуждается в перезагрузке."
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
L["Zangarmarsh"] = "Зангартопь"
L["Zul'Drak"] = "Зул'Драк"
L["Zygor addon not found."] = "Модификация Zygor не найдена."


end

----------------------------------------------------------------------
-- 	koKR: Korean
----------------------------------------------------------------------

if GameLocale == "koKR" then

L["A cinematic skip was attempted."] = "시네마틱 건너띄기가 시도되었습니다."
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
L["A friend request from"] = "친구 신청"
L["A movie skip was attempted."] = "동영상 건너띄기가 시도되었습니다."
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
L["Accept resurrection"] = "부활 수락"
L["Accept Resurrection"] = "부활 수락"
L["Accept summon"] = "소환 수락"
L["Account achievements are being shared."] = "계정 업적을 공유하고 있습니다."
L["Account achievements are hidden."] = "계정 업적을 숨깁니다."
L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = "업적창이 로드되지 않습니다. 다시 시도 하세요."
L["Addon"] = "애드온"
L["Alerts"] = "경보"
L["All 3 battle pet slots need to be unlocked."] = "3개의 애완동물 슬롯을 잠금 해제하여야 합니다."
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
L["Anchor the cooldown icons to the player frame"] = "플레이어 프레임 쿨다운아이콘 표시"
--Translation missing 
-- L["And Justice for Thrall"] = ""
L["Anduin's Theme"] = "안두린 테마"
L["Arathi Highlands"] = "아라시 고원"
--Translation missing 
-- L["Arrival on Argus"] = ""
L["Ashenvale"] = "잿빛 골짜기"
L["Ashran"] = "아쉬란"
L["Automate gossip"] = "대화 자동넘김"
L["Automate Gossip"] = "대화 자동넘김"
L["Automate quests"] = "퀘스트 자동수락"
L["Automation"] = "자동화"
L["Azshara"] = "아즈샤라"
L["Azsuna"] = "아즈스나"
L["Azuremyst Isle"] = "하늘안개 섬"
L["Back to Main Menu"] = "주 메뉴로 돌아가기"
L["Barrens"] = "남부 불모의 땅"
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
L["Battlegrounds"] = "전장"
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
L["Blade's Edge Mountains"] = "칼날 산맥"
--Translation missing 
-- L["Blizzard"] = ""
L["Block duels"] = "결투 차단"
L["Block friend requests"] = "친구요청 차단"
L["Block party invites"] = "파티초대 차단"
L["Block pet battle duels"] = "애완동물대전 차단"
L["Blocks"] = "차단"
L["Bloodmyst Isle"] = "핏빛안개 섬"
L["Borean Tundra"] = "북풍의 땅"
L["Bottom"] = "하단"
L["Broken Isles"] = "부서진 섬"
L["Broken Shore"] = "부서진 해변"
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
L["Buff Frame"] = "버프 프레임"
L["Buffs"] = "버프"
L["Burning Steppes"] = "불타는 평원"
L["Buyout Only"] = "즉시구입가 만!"
L["Camera distance"] = "카메라 거리"
L["Cataclysm"] = "대격변"
L["Chain style"] = "테두리 스타일"
L["Character"] = "캐릭터"
L["Chat"] = "채팅"
L["Chat Frame"] = "채팅창"
L["Checkbox labels are Ok."] = "체크박스를 확인합니다."
L["Cinematics"] = "영화음악"
L["Class colored frames"] = "유닛프레임 직업색상"
L["Class Colored Frames"] = "프레임 직업 색상"
L["Click to configure the settings for this option."] = "설정을 구성하려면 클릭합니다."
L["Click to reset the settings on this page."] = "이 페이지를 재설정 하려면 클릭합니다."
L["Click to return to the main menu."] = "주 메뉴 돌아가기 클릭"
L["Color the backdrops based on faction"] = "진영에 따른 배경색상"
L["Combat log cannot be hidden while undocked."] = "** 창(일반/전투) 연결이 해제되면 숨길수 없습니다."
L["Combat plates"] = "전투시 이름표 표시"
L["Configuration Panel"] = "설정창"
L["Cooldowns"] = "쿨다운 아이콘"
L["Coordinates"] = "좌표"
L["Coordinates Disabled"] = "좌표 사용안함"
L["Coordinates Enabled"] = "좌표 사용"
L["Crystalsong Forest"] = "수정노래 숲"
L["Customise minimap"] = "미니맵 설정"
L["Dalaran"] = "달라란"
L["Dark Soil scanning activated.  Reload UI to exit."] = "어두운 토양 검사 활성화. 리로드-종료."
L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = "어두운 토양 검사가 이미 활성화됨."
L["Darken the frame background"] = "배경 어둡게"
L["Darkshore"] = "어둠해안"
--Translation missing 
-- L["Death of Ysera"] = ""
L["Deepholm"] = "심원의 영지"
L["Disable bag automation"] = "가방 자동열림 비활성"
L["Disable chat fade"] = "챗 사라짐 비활성"
L["Disable loot warnings"] = "전리품 경고 비활성"
L["Disable map emote"] = "지도열때 행동표현 안함."
L["Disable pet automation"] = "애완동물 자동 비활성"
L["Disable sticky chat"] = "채널고정 사용안함"
L["Disable the grey screen of death"] = "유령 효과 비활성"
L["Disable the netherworld effect"] = "지하세계 효과 비활성"
L["Disable the screen glow"] = "빛 효과 비활성"
L["Draenor"] = "드레노어"
L["Drag the coordinates frame to position it."] = "죄표 프레임 위치,크기 변경"
L["Drag the frame overlay to position the frame."] = "위치 변경은 프레임 드레그 이동하세요."
L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = "위치는 드레그 이동, 크기는 슬라이더 조정 설정."
L["Drag the tooltip overlay to position it."] = "위치 변경은 툴팁 드레그 이동"
L["Dragonblight"] = "용의 안식처"
L["Dread Wastes"] = "공포의 황무지"
L["Dun Morogh"] = "던 모로"
L["durability"] = "당신의"
L["Durability"] = "내구도"
L["Durotar"] = "듀로타"
L["Duskwood"] = "그늘숲"
L["Dustwallow Marsh"] = "먼지진흙 습지대"
L["Eastern"] = "동부 왕국"
L["Eastern Plaguelands"] = "동부 역병지대"
L["Effects"] = "이펙트"
L["ELITE"] = "정예"
L["Elwynn Forest"] = "엘윈 숲"
L["Enable hotkey"] = "단축키 사용"
L["Enable viewport"] = "뷰포트 사용"
L["Enhance dressup"] = "미리보기 강화"
L["Enhance Dressup"] = "미리보기 강화"
L["Enhance world map"] = "세계지도 강화"
L["Enhancements"] = "기능 향상"
L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = "표시하고 싶은 주문 ID를 입력합니다. 중첩 표시 경우 최소 중첩수. 소환수 경우 소환수 선택(예:야수치료). 직업 전문화 별로 저장됩니다. "
L["Error frame text will be hidden"] = "오류프레임 숨김"
L["Error frame text will be shown"] = "오류프레임 표시"
L["Error Text"] = "에러메시지"
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
L["Eversong Woods"] = "영원노래 숲"
L["Exclude combat resurrection requests"] = "전투중 부활 수락 제외."
L["Extras"] = "기타"
L["Fade windowed map while moving"] = "이동중 지도 반 투명"
--Translation missing 
-- L["Fall of Deathwing"] = ""
L["Faster auto loot"] = "빠른 전리품 획득"
--Translation missing 
-- L["Fate of the Horde"] = ""
L["Features"] = "특징"
L["Felwood"] = "악령숲"
L["Feralas"] = "페랄라스"
L["Find Item"] = "아이템찾기"
L["Font size"] = "글자 크기"
L["Frames"] = "프레임"
L["Frostfire Ridge"] = "서리불꽃 마루"
L["Game Options"] = "게임 설정"
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
L["Ghost"] = "유령"
L["Ghostlands"] = "유령의 땅"
L["Gold Only"] = "골드 만!"
L["Gorgrond"] = "고르그론드"
L["Graphics and Sound"] = "그래픽,소리"
L["Grizzly Hills"] = "회색 구릉지"
L["Groups"] = "그룹"
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
L["Hellfire Peninsula"] = "지옥불 반도"
L["Help"] = "도움말"
L["Hide achievement alerts"] = "업적 알림 숨김"
L["Hide alerts"] = "경보,알림 숨김"
L["Hide bodyguard gossip"] = "경비병 잡담 숨김"
L["Hide boss banner"] = "보스 배너 숨김"
L["Hide chat buttons"] = "채팅 버튼 숨김"
L["Hide clean-up buttons"] = "가방정리 버튼 숨김"
L["Hide cooldown duration numbers (if enabled)"] = "주문 지속시간 숨김"
L["Hide crafted names"] = "제작자 이름 숨김"
L["Hide encounter alerts"] = "교전 알림 숨김"
L["Hide error messages"] = "에러메시지 숨김"
L["Hide gryphons"] = "그리핀 문양 숨김"
L["Hide level-up display"] = "레벨 업 표시 숨김"
L["Hide loot alerts"] = "전리품 경고 숨김"
L["Hide model positioning controls"] = "케릭터 모델 컨트롤러 숨기기"
L["Hide order hall and garrison alerts"] = "직업전당,주둔지의 알림 숨김"
L["Hide order hall bar"] = "전당 바 숨김"
L["Hide portrait numbers"] = "초상화 전투수치 숨김"
L["Hide profession alerts"] = "전문기술 알림 숨김"
L["Hide social button"] = "소셜 버튼 숨김"
L["Hide stance bar"] = "태세바 숨김"
L["Hide subzone text"] = "하위지역명 숨김"
L["Hide talking frame"] = "대화 프레임 숨김"
L["Hide the clock below the minimap"] = "미니맵 시계 숨김"
L["Hide the combat log"] = "전투기록 숨김"
L["Hide tooltips for world units during combat"] = "전투중 월드유닛 툴팁 숨김"
L["Hide zone information above the minimap"] = "미니맵 상단 지역정보 숨김"
L["Hide zone text"] = "지역명 숨김"
L["Highmountain"] = "높은산"
L["Home"] = "홈"
L["Hotkey"] = "단축키"
L["Howling Fjord"] = "울부짖는 협만"
L["Icecrown"] = "얼음왕관"
L["Icecrown Citadel"] = "얼음왕관 성채"
L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = "수리비용의 간단한 요약을 채팅창에 표시."
L["If checked, a brief summary will be shown in chat when items are sold automatically."] = "판매시 간단한 요약을 채팅창에 표시"
L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = "케릭창에 내구도 정보 추가"
L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = "지도의 상단에 미탐험 지역을 표시 전환할수 있는 설정을 표시합니다."
L["If checked, a dark background will be used for the frame."] = "프레임 배경 어둡게"
L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = "귓속말 초대(파티장)시 지정된 키워드 전송."
L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = "케릭창 하단 소리 조절 표시. 마스터 볼륨."
L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = "이 옵션을 선택하면 미니맵 버튼을 사용할수 있습니다.|n|n클릭-설정창 전환.|n|nShift/왼쪽 클릭-음악 전환.|n|nShift/오른쪽 클릭-좌표 전환(활성된 경우).|n|nCtrl/왼쪽 클릭-미니맵 대상 추적 전환.|n|nCtrl/오른쪽 클릭-오류메시지 전환(활성된 경우).|n|nCtrl/Shift/왼쪽 클릭-Zygor 전환(설치된 경우).|n|nCrtl/Shift/오른쪽 클릭-원도우 모드 전환."
L["If checked, achievement alerts will not be shown."] = "업적 알림 숨김"
L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = "경매창 기능  추가 |n|n즉시구입가 만! :시작가격없이 즉구가만 생성.|n|n 골드 만! :은99동99 자동입력.골드만 입력. |n|n아이템찾기: 경매물품 검색."
L["If checked, additional functionality will be added to the dressup frames."] = "미리보기 창에 부가기능이 추가됩니다."
L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "상인과 대화시 회색템 자동판매. +shift 수동"
L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = "적대적-붉은색, 우호적-파란색"
L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = "자동소환된 애완동물 해제"
L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = "BattleTag과 실명ID 친구 요청이 자동으로 거절됩니다."
L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = "미리보기 창의 케릭터 모델은 특수 애니메이션을 수행하지 않습니다."
L["If checked, character positioning controls will not be shown in any dressup frame."] = "케릭터 컨트롤이 미리보기 창에 표시 되지 않습니다."
L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = "채팅창의 버튼을 숨깁니다. 최근메시지 표시-탭 클릭. 마우스휠 사용가능."
L["If checked, chat text will not fade out after a time period."] = "채팅글이 일정시간후 사라짐 비활성."
L["If checked, class colors will be used in the chat frame."] = "채팅창의 유저네임 직업색상 사용"
L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = "전리품 판매,우편발송 시 확인경고 표시안함."
L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = "주문 지속시간 숨김"
L["If checked, cooldown icon tooltips will be shown."] = "쿨다운 아이콘 툴팁 표시"
L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = "쿨다운 아이콘이 플레이어 프레임에 표시. 선택안하면 대상프레임"
L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = "좌표를 나타내는 프레임 표시."
L["If checked, crafted items will no longer show the name of the crafter."] = "제작된 아이템의 제작자 이름을 표시 하지 않습니다."
L["If checked, cursor coordinates will be shown at the top of the map."] = "상단에 지도상 커서 위치의 좌표를 표시합니다."
L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = "유닛프레임 초상화에 표시되는 데미지,힐 수치 표시 숨김."
L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = "채팅창 잠긴 경우 탭(일반/전투)드레그로 위쪽을 길이 조절 할수있습니다."
L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "친구목록,길드원 제외"
L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = "휴식,팻대결, Hathill Market, Grim Guzzler 경우 감정표현 음소거"
L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = "교전 알림 숨김. |n|n던전,공격대,시나리오,침략,전역퀘스트 포함"
L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = "적 이름표 비전투 숨김."
L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = "상단에 표시되는 에러메시지를 표시 하지 않습니다."
L["If checked, guild ranks will be shown for players in your guild."] = "나의 길드등급 표시"
L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = "게임 내 시네마틱 가능하면 건너뜁니다.|n|n시작할때 shift키 사용으로 수동가능.|n|n일부는 생략 할수 없습니다."
L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = "선택시, 전리품 경고를 표시하지 않습니다. |n|n 아이템, 골드, 명예, 자원 및 상점구매를 포함합니다."
L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = "선택하면 직업전당,주둔지 알림이 표시되지 않습니다|n|n건물, 추종자, 임무와 특성이 포함됨."
L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = "던전찾기 대기하지 않을때 친구,길드원 파티초대 자동 허용함."
L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = "친구목록,길드원 제외"
L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "친구목록,길드원 제외"
L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = "조리법, 발굴 현장"
L["If checked, quest updates will be shown in the error frame."] = "퀘스트 진행상황 메시지는 표시됩니다."
L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = "선택하면 퀘스트 자동 받음. 수동은 shift키+말걸기."
L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = "파티,공격대 챗색상 모두 같은색(파티)으로"
L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = "길드자금 사용에 권한이 있는경우 길드자금으로 수리 사용합니다."
L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = "파티장이 친구,길드원인 경우 던전대기열 요청을 자동 허용. 사용시 던전입장은 자동 되지 않습니다."
L["If checked, resurrection requests will be accepted automatically."] = "부활 요청시 자동 수락"
L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = "부활 플레이어 전투중 경우 부활 자동수락 안함."
L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = "버프,디버프 툴팁에 주문id 표시"
L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = "길드,파티,공격대..대화채널을 고정 되지 않게합니다."
L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = "화면 가운데 표시되는 하위지역명 숨김. (예: 신비의 전당)."
L["If checked, summon requests will be accepted automatically unless you are in combat."] = "비전투시 소환 자동수락"
L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = "미리보기 창에 휘장숨김,옷벗기 버튼이 표시됩니다."
L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = "게임옵션의 애드온 열때 해당 케릭터의 목록 표시(기본-전체)"
L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = "전리품 창을 표시안함"
L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = "소지품,은행 정리버튼 숨김"
L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = "보스를 물리칠때 표시되는 전리품 이름을 숨깁니다."
L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = "레이드 컨테이너 프레임을 전환할수 있는 버튼이 공격대 관리자 프레임에? 표시."
L["If checked, the clock will be hidden."] = "시계 숨김"
L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = "전투 로그 창을 숨깁니다."
L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = "좌표 프레임 표시. |n|n미니맵 버튼 Shift+오른클릭으로 전환 사용가능."
L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = "게임설정-소셜의 '해당 케릭터의 업적만 표시' 를 사용하고 설정 잠금."
L["If checked, the editbox will be moved to the top of the chat frame."] = "채팅입력창을 프레임 상단으로 이동 설정됩니다."
L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = "가방,퀘스트 가득참. 추방투표 알림 표시."
L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = "다른창으로 가려지지 않게 계층 설정 사용"
L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = "프레임 이동 고정"
L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = "상단과 하단 변경 사이즈 맞게 조정됨."
L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = "주둔지 경비 잡담 숨김"
L["If checked, the grey screen of death will be disabled."] = "유령 효과를 사용하지 않습니다."
L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = "레벨 업,교전의 목표,팻대결 보상 표시 숨김"
L["If checked, the main bar gryphons will not be shown."] = "스킬바의 그리핀 문양 제거"
L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = "미니맵의 달력이 추적 버튼으로 합쳐집니다. 추적버튼은 달력으로 이동. 오른쪽 클릭으로 달력 표시. "
L["If checked, the netherworld effect will be disabled."] = "지하세계 효과를 사용하지 않습니다."
L["If checked, the order hall command bar will not be shown."] = "직업 전당에서의 상단 전당 바 숨김"
L["If checked, the player frame background will be shown in class color."] = "플레이어 프레임 직업색상 표시"
L["If checked, the screen glow will be disabled."] = "빛 효과를 사용하지 않습니다."
L["If checked, the social button and quick-join notification will be hidden."] = "사용시, 소셜 버튼과 빠른참여 알림을 숨깁니다."
L["If checked, the stance bar will not be shown."] = "태세바 숨김.(드루이드...)"
L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = "화면 하단의 NPC 대화 프레임 숨김"
L["If checked, the target frame background and focus frame background will be shown in class color."] = "주시,대상 프레임 직업색상 표시"
L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = "툴팁의 크기,위치,배경색 설정"
L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = "지도에 커서가 없고 이동중일때 반 투명 해집니다."
L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = "미니맵 지역정보 숨김. 추적 툴팁에 대신 표시"
L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = "전투중 월드유닛 툴팁 숨김"
L["If checked, unexplored areas of the map will be revealed."] = "지도의 미탐험 지역을 밝혀줍니다."
L["If checked, unit targets will be shown."] = "대상의 대상 표시"
L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = "세계지도, 업적 창, 교전 도감에 와우헤드 링크가 표시 됩니다."
L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = "NPC 하나의 대화를 설정된 키로 열때 자동으로 넘김니다."
L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = "이 옵션을 선택하면 Ctrl 키를 누른 상태에서 채팅 탭을 클릭하여 복사하기 쉬운 창에서 최근 채팅을 볼 수 있습니다."
L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = "채팅 프레임에서 삽입 포인터 이동을 화살표 키로 사용 할수있음."
L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = "퀘스트 글자 크기를 변경 할수 있습니다."
L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = "우편글자 크기를 변경할수 있습니다."
L["If checked, you will be able to change the position and scale of the buff frame."] = "버프,디버프 프레임 위치,크기 설정 "
L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = "유닛,월드,유령,미러바 프레임 위치,크기 설정"
L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = "UI배치를 위한 상.하 검은색 배경 생성"
L["If checked, you will be able to customise and rescale the minimap."] = "미니맵의 사용자 설정"
L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = "선택하면 빛 효과, 유령 효과, 지하세계 효과를 해제할수 있습니다."
L["If checked, you will be able to drag the chat frame to the edge of the screen."] = "화면 모서리로 채팅창을 옮길수 있습니다."
L["If checked, you will be able to hide alert frames."] = "업적,교전,주둔지,전리품,전문기술 알림 숨김"
L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = "지정된 단축키 사용으로 Leatrix Plus를 열 수 있습니다."
L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = "플레이어 또는 대상 프레임(블리자드 유닛 프레임) 위에 5개 쿨다운 아이콘을 설정 표시 할수 있습니다.(전문화별 저장)"
L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = "미탐험 지역 표시, 좌표 표시 설정"
L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = "현재의 애완동물 그룹을 저장. 애완동물 도감의 생성된 버튼 클릭으로 코드를 crtl+c , 매크로 만들기 ctrl+v."
L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = "플레이어 프레임에 희귀,정예 문양 표시"
L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = "플레이어,대상 프레임 배경 직업색상 표시."
L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = "마우스휠로 확대,축소 사용가능. 확대/축소 버튼 숨김."
L["If checked, you will be able to zoom out to a greater distance."] = "사용시 게임설정-시점-최대시야거리: Max 고정."
L["If checked, you will release automatically after you die in a battleground."] = "전장에서 죽은후 자동 해제."
L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = "선택된 지역에서는 부활수락을 해제. 영혼석,윤회 제외."
L["If checked, you will release automatically after you die in Ashran."] = "아쉬란에서 죽은후 자동 해제."
L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = "톨바라드에서 죽은후 자동해제."
L["If checked, you will release automatically after you die in Wintergrasp."] = "겨울손아귀에서 죽은후 자동해제."
L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = "상인,은행 NPC 대화 할때"
L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = "부활시 플레이어에게 감사의 인사."
L["If checked, your character will not perform the reading emote when you open the map."] = "지도 볼때 행동 변화 없음."
L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = "기본 128행을 4096행으로 증가"
L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "상인과 대화시 자동 수리. +shift 수동"
L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = "저레벨 케릭의 공격대 초대 허용됨..?"
L["If checked, zone text will not be shown (eg. 'Ironforge')."] = "화면 가운데 표시되는 지역명 숨김. (예: 아이언포지)"
L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = "없음 으로 설정하면 시프트 키를 눌러서 일시적으로 자동화를 방지 할 수 있습니다."
L["Increase chat history"] = "채팅 기록 증가"
L["Interface"] = "인터페이스"
L["Invalid battle pet team parameter."] = "잘못된 매개변수"
L["Invalid console variable."] = "잘못된 콘솔 변수."
L["Invalid parameter."] = "잘못된 매개변수"
L["Invalid quest ID."] = "잘못된 퀘스트ID"
--Translation missing 
-- L["Invalid taint level."] = ""
L["Invite from whispers"] = "귓속말 초대"
L["Invite from Whispers"] = "귓속말 초대"
L["Isle of Quel'Danas"] = "쿠엘다나스 섬"
L["Jade Forest"] = "비취 숲"
L["Kalimdor"] = "칼림도어"
L["Krasarang Wilds"] = "크라사랑 밀림"
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
L["Kun-Lai Summit"] = "쿤라이 봉우리"
--Translation missing 
-- L["Last Stand"] = ""
L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = "Leatrix Plus는 다음 로그 아웃시 LeaPlusDB를 덮어 쓰지 않습니다."
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
L["Left"] = "왼쪽"
L["Legion"] = "군단"
--Translation missing 
-- L["Lifetime honorable kills"] = ""
L["Lock the frame and make it non-interactive"] = "창 잠금"
L["Lockout sharing"] = "업적공유 잠금"
L["Lost Isles & Kezan"] = "잃어버린 섬"
L["Maelstrom"] = "혼돈의 소용돌이"
L["Mail Text"] = "우편 글자"
L["Manage buff frame"] = "버프 프레임 설정"
L["Manage effects"] = "이펙트 관리"
L["Manage frames"] = "프레임 설정"
L["Manage tooltip"] = "툴팁 설정"
L["Managed by Leatrix Plus"] = "Leatrix Plus 에서 설정"
L["Max camera zoom"] = "최대시야거리 사용"
L["Mechanics"] = "기능"
L["Media"] = "미디어"
L["Memory Usage"] = "메모리 사용"
L["Merge tracking button with calendar button"] = "달력을 추적 버튼으로 통합"
L["message shown."] = "메시지가 표시됩니다."
L["messages shown."] = "메시지가 표시됩니다."
L["Minimap"] = "미니맵"
L["Minimap scale"] = "미니맵 크기"
L["Missing console variable."] = "누락된 콘솔 변수."
L["Missing mount name."] = "누락된 탈거."
L["Missing movie ID."] = "잘못된 영화 ID."
L["Missing pet name."] = "누락된 팻."
L["Missing quest ID."] = "퀘스트ID 없음"
L["Missing sound file parameter."] = "소리 파일 매개변수 에러"
L["Mists of Pandaria"] = "판다리아의 안개"
L["Modifier key"] = "키 설정"
L["Moonglade"] = "달숲"
L["Mount Hyjal"] = "하이잘 산"
L["Mount not found."] = "탈거를 찾을수 없습니다."
L["Move editbox to top"] = "입력창 상단"
L["Movie not playable."] = "영화를 재생할수 없습니다."
L["Movie number"] = "영화 번호"
L["Movies"] = "영화"
L["Mulgore"] = "멀고어"
L["Music"] = "음악"
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
L["Nagrand"] = "나그란드"
L["Nagrand (Draenor)"] = "나그란드 (드레노어)"
L["Netherstorm"] = "황천의 폭풍"
L["No help is available for this page."] = "도움말을 사용할수 없습니다."
L["No items with durability equipped."] = "내구성 갖춘 아이템이 없습니다."
L["No tooltip showing."] = "툴팁이 없습니다."
L["NONE"] = "없음"
L["Northrend"] = "노스렌드"
L["Nude"] = "옷벗기"
L["Outland"] = "아웃랜드"
L["Overall"] = "전체"
L["Pandaria"] = "판다리아"
L["Particle density"] = "입자 밀도"
L["Party from friends"] = "친구의 파티"
L["Pet"] = "소환수"
L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = "팻을 찾을수 없습니다. 도감의 현재 소유한 팻을 검색할수 있습니다."
L["Player"] = "플레이어"
L["Player Chain"] = "플레이어 테두리"
L["Press CTRL/C to copy."] = "CTRL / C를 눌러 복사."
L["Prevent special model animations"] = "모델 특별 애니메이션 방지"
L["Quest completed."] = "퀘스트 완료"
L["Quest not completed."] = "퀘스트 미완료"
L["Quest Text"] = "퀘스트 글자"
L["Queue from friends"] = "친구의 대기열"
L["Raid frame toggle"] = "레이드 프레임 전환"
L["Raise the frame strata level"] = "창 계층 높게"
L["RARE"] = "희귀"
L["RARE ELITE"] = "희귀 정예"
L["Recent chat window"] = "최근 채팅 창"
L["Recent Chat Window"] = "최근 채팅 창"
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
L["Release in PvP"] = "PvP지역 부활 수락 해제"
L["Reload"] = "리로드"
L["Remove raid restrictions"] = "공격대 제한 제거"
L["Repair Automatically"] = "자동 수리"
L["Repair automatically"] = "자동 수리"
L["Repair using guild funds if available"] = "길드자금 사용"
L["Repaired for"] = "수리비"
L["Requires UI reload."] = "UI 리로드 필요."
L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = "라라나 드롬과 상호 작용해야합니다. 그녀는 노스렌드,달라란,각인사의 성소 에서 찾을 수 있습니다."
L["Reset"] = "재설정"
L["Resize mail text"] = "우편 글자 설정"
L["Resize quest text"] = "퀘스트 글자 설정"
L["Resize the game world"] = "게임화면크기 재설정"
L["Rested bubbles"] = "휴식 버블"
--Translation missing 
-- L["Return to the Black Temple"] = ""
L["Reveal"] = "미탐험 밝힘"
L["Reveal unexplored areas of the map"] = "미탐험 지역 밝힘"
L["Right"] = "오른쪽"
L["Right-click to close."] = "마우스 오른쪽 버튼을 클릭하여 닫습니다."
--Translation missing 
-- L["Risking It All"] = ""
L["Ruins of Gilneas"] = "길니아스 폐허"
L["Scale"] = "크기"
L["Searing Gorge"] = "이글거리는 협곡"
L["Select the settings that you want to use."] = "사용하려는 설정을 선택합니다."
L["Sell junk automatically"] = "회색템 자동 판매"
L["Sell Junk Automatically"] = "회색템 자동판매"
L["SELLING JUNK"] = "자동판매"
L["Settings"] = "설정"
L["Shaders"] = "쉐이더"
L["Shadowmoon Valley"] = "어둠달 골짜기"
L["Shadowmoon Valley (Draenor)"] = "어둠달 골짜기 (드레노어)"
L["Sholazar Basin"] = "숄라자르 분지"
L["Show a brief summary of repair costs"] = "수리비용 표시"
L["Show a summary of items sold"] = "판매항목 요약 표시"
L["Show auction controls"] = "경매 추가 기능"
L["Show character addons"] = "케릭터 애드온 표시"
L["Show cooldowns"] = "쿨다운 아이콘 표시"
L["Show coordinates"] = "좌표 표시"
L["Show cursor coordinates at the top of the map"] = "커서 위치의 좌표 표시"
L["Show durability status"] = "내구도 표시"
L["Show guild ranks for your guild"] = "나의 길드 등급 표시"
L["Show important error text"] = "중요한 오류 표시"
L["Show minimap button"] = "미니맵 버튼 표시"
L["Show nude and tabard buttons"] = "휘장,옷벗기 버튼 표시"
L["Show pet save button"] = "애완동물 저장 버튼"
L["Show player chain"] = "플레이어 테두리 표시"
L["Show player frame in class color"] = "플레이어 프레임 직업색상 표시"
L["Show quest updates"] = "퀘스트 업데이트 표시"
L["Show reveal checkbox at the top of the map"] = "지도의 상단 체크박스 표시"
L["Show target frame and focus frame in class color"] = "주시,대상 프레임 직업색상 표시"
L["Show the coordinates frame"] = "좌표 프레임 표시"
L["Show the spell ID in buff icon tooltips"] = "툴팁 주문ID 표시"
L["Show the unit's target"] = "대상의대상 표시"
L["Show tooltips for the cooldown icons"] = "쿨다운 아이콘 툴팁 표시"
L["Show volume slider"] = "소리 조절 표시"
L["Show Wowhead links"] = "와우헤드 링크 표시"
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
L["Silence rested emotes"] = "감정표현 음소거"
L["Silithus"] = "실리더스"
L["Silverpine Forest"] = "은빛소나무 숲"
L["Skip cinematics"] = "동영상 건너띄기"
L["Social"] = "소셜"
L["Sold junk for"] = "회색템 판매"
L["Spell ID"] = "주문 ID"
L["Spires of Arak"] = "아라크 첨탑"
L["Stack"] = "중첩"
L["Stonetalon Mountains"] = "돌발톱 산맥"
L["Stop"] = "중지"
L["Storm Peaks"] = "폭풍우 봉우리"
L["Stormheim"] = "스톰하임"
L["Stranglethorn"] = "가시덤불 골짜기"
L["Support"] = "지원"
L["Suramar"] = "수라마르"
L["Swamp of Sorrows"] = "슬픔의 늪"
L["System"] = "시스템"
L["Tabard"] = "휘장숨김"
--Translation missing 
-- L["Taint level: Basic (1)."] = ""
--Translation missing 
-- L["Taint level: Disabled (0)."] = ""
--Translation missing 
-- L["Taint level: Full (2)."] = ""
L["Talador"] = "탈라도르"
L["Tanaan Jungle"] = "타나안 밀림"
L["Tanaris"] = "타나리스"
L["Target"] = "대상"
L["Target Tracking Disabled"] = "대상 추적 사용안함"
L["Target Tracking Enabled"] = "대상 추적 사용"
L["Teldrassil"] = "텔드랏실"
L["Terokkar Forest"] = "테로카르 숲"
L["Text"] = "글자"
L["Text size"] = "글자 크기"
L["Text Size"] = "글자 크기"
L["Thank the player who resurrected you"] = "부활 감사합니다."
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
L["The Burning Crusade"] = "불타는 성전"
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = "현재 팻과 선택된 능력을 그룹으로 저장합니다. 생성된 코드를 복사 crtl+c , 매크로에 붙어넣기 ctrl+v 저장"
L["This panel will close automatically if you enter combat."] = "전투시 자동으로 닫힙니다."
L["Thousand Needles"] = "버섯구름 봉우리"
L["Timer"] = "미러바"
L["Tirisfal Glades"] = "티리스팔 숲"
L["To begin, choose an options page."] = "설정 페이지를 선택합니다."
L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = "최근 채팅 창을 이동하려면 CTRL 및 SHIFT 키를 누른 상태에서 창을 드래그하십시오."
L["To use the Find button, you need to deselect the Game Time filter."] = "찾기 버튼을 사용하려면 게임 시간 필터를 해제해야합니다."
L["Tol Barad (the PvP zone)"] = "톨 바라드"
--Translation missing 
-- L["Tomb of Sargeras"] = ""
L["Tooltip"] = "툴팁"
L["Tooltip scale"] = "툴팁 크기"
L["Tooltip title color"] = "툴팁 제목 색상"
L["Top"] = "상단"
L["Townlong Steppes"] = "탕랑 평원"
L["Tracing started."] = "추적 시작."
L["Tracing stopped."] = "추적 중지."
L["Transparency"] = "투명도"
L["Twilight Highlands"] = "황혼의 고원"
L["Uldum"] = "울둠"
L["Unclamp chat frame"] = "채팅창 고정 해제"
L["Un'Goro Crater"] = "운고로 분화구"
L["Universal group color"] = "그룹 색상 통합"
L["Use arrow keys in chat"] = "화살표 키 사용"
L["Use class colors in chat"] = "직업색상 사용"
L["Use easy resizing"] = "쉬운 크기조절"
L["Use Leatrix Plus to move that frame."] = "프레임 이동 사용"
L["Use Leatrix Plus to reset that frame."] = "프레임 재설정 사용"
L["Use the mousewheel to zoom in and out"] = "확대/축소 마우스휠 사용"
L["Valley of the Four Winds"] = "네 바람의 계곡"
L["Val'sharah"] = "발샤라"
L["Various"] = "기타"
L["Vashj'ir"] = "바쉬르"
L["Vendors"] = "상인"
L["Version"] = "버전"
--Translation missing 
-- L["Victory at The Nighthold"] = ""
L["Video"] = "비디오"
L["Viewport"] = "뷰포트"
L["Visibility"] = "가시성"
L["Wandering Isle"] = "유랑도"
L["Warlords of Draenor"] = "드레노어의 전쟁군주"
L["was automatically declined."] = "자동으로 거절되었습니다."
L["Weather density"] = "기상 밀도"
L["Welcome to Leatrix Plus."] = "Leatrix Plus 에 오신 것을 환영합니다."
L["Western Plaguelands"] = "서부 역병지대"
L["Westfall"] = "서부 몰락지대"
L["Wetlands"] = "저습지"
L["Whisper keyword"] = "키워드"
L["Window height"] = "창 높이"
L["Window width"] = "창 너비"
L["Wintergrasp"] = "겨울손아귀 호수"
L["Winterspring"] = "여명의 설원"
L["World Map"] = "세계지도"
L["World of Warcraft"] = "월드 오브 워크래프트"
L["World State"] = "월드 상태"
L["Wrath of the Lich King"] = "리치 왕의 분노"
--Translation missing 
-- L["Wrathgate"] = ""
L["You cannot do that in combat."] = "전투중으로 할수 없습니다."
L["You do not own this pet.  Only owned pets can be searched."] = "당신은 이 팻을 소유하고 있지 않습니다. 소유한 팻만 검색할수 있습니다."
L["You have"] = "장비 내구도"
L["You need a battle pet team."] = "애완동물대전 팀이 필요합니다."
L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = "일부 변경사항을 적용하려면 UI를 다시 로드 하여야 합니다. 요구시 리로드 버튼 활성화."
L["Your UI needs to be reloaded."] = "당신의 UI는 다시 로드 해야 합니다."
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
L["Zangarmarsh"] = "장가르 습지대"
L["Zul'Drak"] = "줄드락"
L["Zygor addon not found."] = "Zygor 애드온 찾을수 없음."


end

----------------------------------------------------------------------
-- 	zhCN: Simplified Chinese (People's Republic of China)
----------------------------------------------------------------------

if GameLocale == "zhCN" then

L["A cinematic skip was attempted."] = "一个过场动画成功跳过。"
L["A Falling Star"] = "陨落之星"
L["A Found Memento"] = "寻获的记忆碎片"
L["A friend request from"] = "你有一个好友申请，来自"
L["A movie skip was attempted."] = "一个电影片段成功跳过。"
L["A New Life for Undeath"] = "亡灵的新生"
L["A Taste of Iron"] = "钢铁的滋味"
L["Accept resurrection"] = "自动接受战复"
L["Accept Resurrection"] = "自动接受战复"
L["Accept summon"] = "自动接受召唤"
L["Account achievements are being shared."] = "帐号成就已经共享。"
L["Account achievements are hidden."] = "账号成就已隐藏。"
L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = "成就插件尚未载入，请打开成就面板后重试。"
L["Addon"] = "插件"
L["Alerts"] = "隐藏通知提示"
L["All 3 battle pet slots need to be unlocked."] = "所有3个宠物栏位需要预先解锁。"
L["An Inside Job"] = "内部工作"
L["An Unclear Path"] = "不明的道路"
L["Anchor the cooldown icons to the player frame"] = "冷却图标锚点至玩家头像"
L["And Justice for Thrall"] = "萨尔的正义"
L["Anduin's Theme"] = "安度因的旋律"
L["Arathi Highlands"] = "阿拉希高地"
L["Arrival on Argus"] = "进军阿古斯"
L["Ashenvale"] = "灰谷"
L["Ashran"] = "阿什兰"
L["Automate gossip"] = "对话自动交互"
L["Automate Gossip"] = "对话自动交互"
L["Automate quests"] = "任务自动交接"
L["Automation"] = "自动交互"
L["Azshara"] = "艾萨拉"
L["Azsuna"] = "阿苏纳"
L["Azuremyst Isle"] = "秘蓝岛"
L["Back to Main Menu"] = "返回"
L["Barrens"] = "南贫瘠之地"
L["Battle of Serpent's Heart"] = "蛇心之战"
L["Battlegrounds"] = "战场"
L["Bigger is Better (Alliance)"] = "越大越好（联盟）"
L["Bigger is Better (Horde)"] = "越大越好（部落）"
L["Blade's Edge Mountains"] = "刀锋山"
L["Blizzard"] = "暴雪"
L["Block duels"] = "屏蔽决斗信息"
L["Block friend requests"] = "屏蔽好友申请"
L["Block party invites"] = "屏蔽队伍邀请"
L["Block pet battle duels"] = "屏蔽宠物对战"
L["Blocks"] = "屏蔽"
L["Bloodmyst Isle"] = "秘血岛"
L["Borean Tundra"] = "北风苔原"
L["Bottom"] = "底部"
L["Broken Isles"] = "破碎群岛"
L["Broken Shore"] = "破碎海滩"
L["Broken Shore (Alliance)"] = "破碎海滩（联盟）"
L["Broken Shore (Horde)"] = "破碎海滩（部落）"
L["Buff Frame"] = "Buff框体"
L["Buffs"] = "Buffs"
L["Burning Steppes"] = "燃烧平原"
L["Buyout Only"] = "仅限一口价"
L["Camera distance"] = "镜头距离"
L["Cataclysm"] = "大地的裂变"
L["Chain style"] = "边框样式"
L["Character"] = "角色"
L["Chat"] = "聊天功能"
L["Chat Frame"] = "聊天窗口"
L["Checkbox labels are Ok."] = "复选框信息检查通过"
L["Cinematics"] = "过场动画"
L["Class colored frames"] = "框体职业染色"
L["Class Colored Frames"] = "框体职业染色"
L["Click to configure the settings for this option."] = "点击进行额外的选项设置"
L["Click to reset the settings on this page."] = "点击重置此页面的设置。"
L["Click to return to the main menu."] = "点击返回到主菜单"
L["Color the backdrops based on faction"] = "根据阵营着色边框"
L["Combat log cannot be hidden while undocked."] = "战斗记录窗口被分离时无法隐藏。"
L["Combat plates"] = "自动开关姓名板"
L["Configuration Panel"] = "设置面板"
L["Cooldowns"] = "冷却计时"
L["Coordinates"] = "坐标"
L["Coordinates Disabled"] = "禁用坐标显示"
L["Coordinates Enabled"] = "启用坐标显示"
L["Crystalsong Forest"] = "晶歌森林"
L["Customise minimap"] = "自定义小地图"
L["Dalaran"] = "达拉然"
L["Dark Soil scanning activated.  Reload UI to exit."] = "黑色泥土扫描启用，取消需重载插件。"
L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = "黑色泥土扫描已经启用，你只需要进行一次操作。取消需重载插件。"
L["Darken the frame background"] = "显示深色背景"
L["Darkshore"] = "黑海岸"
L["Death of Ysera"] = "伊瑟拉之死"
L["Deepholm"] = "深岩之洲"
L["Disable bag automation"] = "禁用自动背包"
L["Disable chat fade"] = "禁用聊天窗口淡出"
L["Disable loot warnings"] = "禁用拾取通报"
L["Disable map emote"] = "禁用地图查看动作"
L["Disable pet automation"] = "禁用自动换宠"
L["Disable sticky chat"] = "禁用聊天频道粘滞"
L["Disable the grey screen of death"] = "关闭死亡灰白界面"
L["Disable the netherworld effect"] = "禁用异界效果"
L["Disable the screen glow"] = "禁用屏幕泛光"
L["Draenor"] = "德拉诺"
L["Drag the coordinates frame to position it."] = "拖动坐标框体来自定义尺寸。"
L["Drag the frame overlay to position the frame."] = "拖动框体边框来移动。"
L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = "移动面板来定位框体。|n|n如果想要改变框体尺寸，你需选定面板，然后移动滑块来选择。|n|n你一旦进入战斗，这个框体会自动关闭。"
L["Drag the tooltip overlay to position it."] = "拖动鼠标信息的外框来重新定位。"
L["Dragonblight"] = "龙骨荒野"
L["Dread Wastes"] = "恐惧废土"
L["Dun Morogh"] = "丹莫罗"
L["durability"] = "耐久度"
L["Durability"] = "耐久度"
L["Durotar"] = "杜隆塔尔"
L["Duskwood"] = "暮色森林"
L["Dustwallow Marsh"] = "尘泥沼泽"
L["Eastern"] = "东部王国"
L["Eastern Plaguelands"] = "东瘟疫之地"
L["Effects"] = "效果"
L["ELITE"] = "精英"
L["Elwynn Forest"] = "艾尔文森林"
L["Enable hotkey"] = "启用热键"
L["Enable viewport"] = "画面视口"
L["Enhance dressup"] = "增强换装预览"
L["Enhance Dressup"] = "增强换装预览"
L["Enhance world map"] = "增强世界地图"
L["Enhancements"] = "增强功能"
L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = "输入你想要监视技能的法术ID。|n|n如果你想要同时监视法术层数，需输入最小的层数（否则留空）。|n|n如果这个法术通常显示在宠物框体，请检查宠物框体上的法术信息。|n|n冷却监视的图标是根据你的职业及专精保存的。"
L["Error frame text will be hidden"] = "隐藏错误信息"
L["Error frame text will be shown"] = "显示错误信息"
L["Error Text"] = "错误文本"
L["Establish Your Garrison (Alliance)"] = "建造你的要塞（联盟）"
L["Establish Your Garrison (Horde)"] = "建造你的要塞（部落）"
L["Eversong Woods"] = "永歌森林"
L["Exclude combat resurrection requests"] = "战斗中不接受战复"
L["Extras"] = "其他"
L["Fade windowed map while moving"] = "移动时淡出区域地图"
L["Fall of Deathwing"] = "死亡之翼的陨落"
L["Faster auto loot"] = "加速自动拾取"
L["Fate of the Horde"] = "部落的命运"
L["Features"] = "功能"
L["Felwood"] = "费伍德森林"
L["Feralas"] = "菲拉斯"
L["Find Item"] = "查找物品"
L["Font size"] = "字体大小"
L["Frames"] = "框体相关"
L["Frostfire Ridge"] = "霜火岭"
L["Game Options"] = "游戏设置"
L["Garrison Shipyard (Alliance)"] = "要塞船坞（联盟）"
L["Garrison Shipyard (Horde)"] = "要塞船坞（部落）"
L["Ghost"] = "灵魂状态框体"
L["Ghostlands"] = "幽魂之地"
L["Gold Only"] = "仅输入金币"
L["Gorgrond"] = "戈尔隆德"
L["Graphics and Sound"] = "界面和音效"
L["Grizzly Hills"] = "灰熊丘陵"
L["Groups"] = "队伍"
L["Harbingers Gul'dan"] = "预言者古尔丹"
L["Harbingers Illidan"] = "预言者伊利丹"
L["Harbingers Khadgar"] = "预言者卡德加"
L["Hellfire Citadel (1)"] = "地狱火堡垒（1）"
L["Hellfire Citadel (2)"] = "地狱火堡垒（2）"
L["Hellfire Peninsula"] = "地狱火半岛"
L["Help"] = "帮助"
L["Hide achievement alerts"] = "隐藏成就通知"
L["Hide alerts"] = "隐藏信息提示"
L["Hide bodyguard gossip"] = "隐藏保镖对话"
L["Hide boss banner"] = "隐藏BOSS横幅"
L["Hide chat buttons"] = "隐藏聊天窗口按钮"
L["Hide clean-up buttons"] = "隐藏背包整理按钮"
L["Hide cooldown duration numbers (if enabled)"] = "隐藏冷却计时（若启用）"
L["Hide crafted names"] = "隐藏制造者名字"
L["Hide encounter alerts"] = "隐藏地城通知"
L["Hide error messages"] = "隐藏错误信息"
L["Hide gryphons"] = "隐藏动作条狮鹫"
L["Hide level-up display"] = "隐藏升级提示"
L["Hide loot alerts"] = "隐藏拾取通知"
L["Hide model positioning controls"] = "隐藏模型移动控制"
L["Hide order hall and garrison alerts"] = "隐藏大厅和要塞通知"
L["Hide order hall bar"] = "隐藏职业大厅信息"
L["Hide portrait numbers"] = "隐藏头像数字"
L["Hide profession alerts"] = "隐藏专业通知"
L["Hide social button"] = "隐藏社交按钮"
L["Hide stance bar"] = "隐藏姿态条"
L["Hide subzone text"] = "隐藏次级区域文本"
L["Hide talking frame"] = "隐藏对话框体"
L["Hide the clock below the minimap"] = "隐藏时钟"
L["Hide the combat log"] = "隐藏战斗记录窗口"
L["Hide tooltips for world units during combat"] = "战斗中隐藏窗口"
L["Hide zone information above the minimap"] = "隐藏区域信息"
L["Hide zone text"] = "隐藏区域文本"
L["Highmountain"] = "至高岭"
L["Home"] = "主页"
L["Hotkey"] = "热键"
L["Howling Fjord"] = "嚎风峡湾"
L["Icecrown"] = "冰冠冰川"
L["Icecrown Citadel"] = "冰冠堡垒"
L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = "勾选后，自动修理的大致费用会显示在聊天窗口。"
L["If checked, a brief summary will be shown in chat when items are sold automatically."] = "勾选后，自动售出的杂物会在聊天窗口显示一个大致的总价。"
L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = "勾选后，一个按钮会显示在角色框体，其鼠标提示信息会显示身上的装备耐久度。|n|n当你死后，你的整体耐久度也会显示在聊天框体。"
L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = "勾选后，一个复选框会显示在地图上方，让你可以通过它自行开关未探索区域的显示功能。"
L["If checked, a dark background will be used for the frame."] = "勾选后，框体会启用一个深色的背景。"
L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = "勾选后，你将自动邀请那些密语你关键词的玩家。|n|n你必须不处于队伍中，或当你是队长时才可进行此项操作。"
L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = "勾选后，一个全局音量控制滑块会显示在角色信息框体。|n|n这个音量控制可以在两个位置之间切换，你可以按住SHIFT+鼠标右键进行切换。"
L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = "勾选后，小地图上将出现一个快捷按钮。|n|n点击：开关设置面板。|n|nSHIFT+左键：开关音乐。|n|nSHIFT+右键：开关坐标（需启用）。|n|nCTRL+左键：开关小地图目标追踪。|n|nCTRL+右键：开关错误信息（需启用）。|n|nCTRL+SHIFT+左键：开关Zygor插件（需安装）。|n|nCTRL+SHIFT+右键：开关窗口模式。"
L["If checked, achievement alerts will not be shown."] = "勾选后，获得成就的提示不再显示。"
L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = "勾选后，会给拍卖行添加额外的功能：|n|n仅限一口价 - 使用后，你不再需要输入起始价格。|n|n仅输入金币 - 自动在银币和铜币位输入99，以便加快新物品的上架。|n|n搜索按钮 - 在拍卖行搜索你正在出售的物品。|n|n额外的，拍卖物品的持续时间设置将保存为账户通用设置。"
L["If checked, additional functionality will be added to the dressup frames."] = "勾选后，会给换装面板增强一些额外的功能。"
L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "勾选后，当你访问商贩时将自动出售背包中的杂物。|n|n当你访问时按住Shift键，可以暂时忽略该功能。"
L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = "勾选后，信息窗口的边框会更改为蓝色（右方）或者红色（敌方）。"
L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = "勾选后，被自动召唤的战斗宠物会在若干秒后被自动召回。|n|n这包括将宠物拖动到对战队伍栏位和进入宠物对战的指令。|n|n需要注意的是，战斗中自动召唤的宠物会在战斗结束后再解散。"
L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = "勾选后，战网好友申请会自动屏蔽。|n|n启用后，当前待处理的申请会自动拒绝。"
L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = "勾选后，试衣间、拍卖行换装预览和幻化面板的角色模型不再有特殊的动画效果。"
L["If checked, character positioning controls will not be shown in any dressup frame."] = "勾选后，角色位置控制不再显示于任意的试装页面。"
L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = "勾选后，聊天窗口的按钮会被隐藏。|n|n点击窗口标签会自动显示最新的消息。|n|n使用鼠标滚轮可以查看历史消息。按住SHIFT进行消息页面跳转，按住CTRL将滚动至消息页首/页尾。"
L["If checked, chat text will not fade out after a time period."] = "勾选后，聊天信息不会在一定时间后淡出。"
L["If checked, class colors will be used in the chat frame."] = "勾选后，聊天窗口中会使用职业颜色。"
L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = "勾选后，当你选择Roll点或者想要出售/邮寄一个可交易物品时，不再显示确认信息。"
L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = "勾选后，冷却计时数字不再显示。|n|n如果未勾选，在界面-动作条中启用冷却计时后，在相关的冷却中的法术图标会显示计时数字。"
L["If checked, cooldown icon tooltips will be shown."] = "勾选后，冷却计时图标支持显示鼠标提示信息。"
L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = "勾选后，冷却图标会在玩家头像上方，不再在目标头像上方。|n|n如果未勾选，则显示在目标头像上方。"
L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = "勾选后，你当前所在地点的坐标会显示在一个可自定义的窗口。"
L["If checked, crafted items will no longer show the name of the crafter."] = "勾选后，制造物品不再显示制造者的名字。"
L["If checked, cursor coordinates will be shown at the top of the map."] = "勾选后，鼠标浮点坐标会显示在世界地图上方。"
L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = "勾选后，在玩家头像和宠物头像上的伤害及治疗数字不再显示。"
L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = "勾选后，对锁定的聊天窗口进行拖动，会使其竖直拉伸。|n|n对已解锁的聊天窗口进行拖动，会使其移动。"
L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "勾选后，对于非好友和非公会成员的决斗信息会被屏蔽。"
L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = "选后，当你处于下列情况时表情音效会被禁音：|n|n休息时|n|n处于宠物对战中|n|n在半山集市|n|n在黑铁酒吧|n|n当你不处于上述位置时表情音效恢复。"
L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = "勾选后，地城的提示不再显示。|n|n包括地下城、团队、场景战役、要塞入侵、公会挑战和世界任务。"
L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = "勾选后，敌对姓名板会在战斗中自动开启，离开战斗后关闭。"
L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = "勾选后，错误信息（例如“怒气不足”）不再显示。|n|n如果你启用了小地图按钮，你可以CTRL+右键点击来进行开关。"
L["If checked, guild ranks will be shown for players in your guild."] = "勾选后，显示公会会阶。"
L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = "勾选后，游戏内可以跳过的过程动画会自动跳过。|n|n当一个过场动画开始前，你可以按住Shift键来忽略该项设置。|n|n注意，部分过场动画无法跳过。"
L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = "勾选后，拾取通知将不再显示。|n|n这包括了物品、金钱、荣誉、资源以及商城付款。"
L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = "勾选后，职业大厅和要塞的通知不再显示。|n|n这包括了建筑、追随者、任务以及天赋的相关通知。"
L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = "勾选后，如果你不在地下城队列中，你的好友或公会成员发送的组队申请会被自动接受。"
L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = "勾选后，对于非好友和非公会成员的组队邀请会被屏蔽。"
L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "勾选后，对于非好友和非公会成员的宠物对战信息会被屏蔽。"
L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = "勾选后，专业技能的相关提示不再显示。|n|n这包括图纸和考古的提示。"
L["If checked, quest updates will be shown in the error frame."] = "勾选后，任务进度会被显示在错误信息面板。"
L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = "勾选后，任务会自动交接。|n|n当你和NPC对话时按住Shift键，可以暂时忽略此项功能。"
L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = "勾选后，团队和副本聊天信息会改为蓝色（与小队一致）。"
L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = "勾选后，修理装备时将优先使用可用的公会资金。"
L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = "勾选后，如果你的小队队长是你的好友或公会成员，其申请的地下城请求会被自动接受。|n|n这个选项不会自动将你传送到副本中。|n|n这个选项需要你在地下城页面选择一个职责。"
L["If checked, resurrection requests will be accepted automatically."] = "勾选后，你将自动接受战复。|n|n你可以点击右边的按钮进行设置。"
L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = "勾选后，当你在战斗中被战复将不再自动接受。"
L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = "勾选后，在Buff框体和目标头像下方的相关法术图标的鼠标提示框中，会显示它们的法术ID。"
L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = "勾选后，会禁用聊天频道的粘滞。|n|n此选项不会影响临时对话窗口。"
L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = "勾选后，次级区域文本不再显示。"
L["If checked, summon requests will be accepted automatically unless you are in combat."] = "勾选后，当你不处于战斗状态时会自动接受召唤。"
L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = "勾选后，战袍和裸体按钮会显示在试衣间和拍卖行的换装预览。"
L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = "勾选后，插件列表（游戏菜单处）会显示默认的对角色生效的插件。"
L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = "勾选后，自动拾取所耗的时间将大幅缩短。"
L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = "勾选后，背包及银行的整理按钮不再显示。"
L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = "勾选后，BOSS的横幅信息不再显示。|n|n该信息通常在BOSS被击败后显示。它显示BOSS的名字以及掉落。"
L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = "勾选后，打开团队信息的按钮会显示在左侧团队管理框体的上方，而不是在其内部。|n|n此选项让你无需打开团队管理框体，就可以切换团队框体。"
L["If checked, the clock will be hidden."] = "勾选后，隐藏小地图的时钟"
L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = "勾选后，战斗记录会被隐藏。|n|n战斗记录窗口必须未被分离时才能生效。|n|n如果战斗记录窗口被分离了，你可以拖动其合并至主窗口（然后重载插件），或者在聊天设置中重置设置。"
L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = "勾选后，会显示坐标框体。|n|n如果插件的小地图按钮启用了，你可以按住SHIFT+右键点击来进行设置。|n|n如果未勾选，这个坐标框体会被禁用，同时也不会有任何资源占用。"
L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = "勾选后，“对他人只显示角色成就”的选项（界面-社交）会被永久勾选并锁定。"
L["If checked, the editbox will be moved to the top of the chat frame."] = "勾选后文本框会被移动至聊天窗口上方。"
L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = "勾选后，如下的错误信息会显示在面板中：|n|n- 背包已满|n|n- 任务列表已满|n|n- 投票踢人通知"
L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = "勾选后，框体的层级会提升至最高，允许它显示在其他框体之上。|n|n如果未勾选，这个框体层级会被设置为中等。"
L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = "勾选后，框体会被锁定，你不能再移动它。|n|n启用这个选项后，框体不可交互，意味着你的鼠标不会再被其检测，仿佛框体不存在一般。|n|n这个选项用在当你把其放置于你经常需要点击的地方（比如游戏中央或者小地图）。"
L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = "勾选后，游戏界面的大小会修改适应顶部和底部的边框。|n|n当你启用这个选项时，透明度的调节不再影响这两个边框。"
L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = "勾选后，你的保镖对话时不再出现选项。|n|n对话时按住Shift键，可以暂时忽略该项设置。"
L["If checked, the grey screen of death will be disabled."] = "勾选后，死亡时的灰白页面会被禁用。"
L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = "勾选后，升级提示不再显示。|n|n升级提示功能包括副本目标、升级、小宠物奖励等等。"
L["If checked, the main bar gryphons will not be shown."] = "勾选后，动作条两边的狮鹫不再显示。"
L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = "勾选后，小地图的追踪按钮会和日历按钮合并以便节省空间。|n|n新的追踪按钮会被移动至日历按钮的位置。|n|n你可以左键点击打开追踪，右键点击打开日历。"
L["If checked, the netherworld effect will be disabled."] = "勾选后，异界效果（如法师的隐形术）会被禁用。"
L["If checked, the order hall command bar will not be shown."] = "勾选后，当你处于职业大厅时，顶部的信息条不再显示。"
L["If checked, the player frame background will be shown in class color."] = "勾选后，玩家框体的背景会显示职业颜色。"
L["If checked, the screen glow will be disabled."] = "勾选后，屏幕泛光会被禁用。"
L["If checked, the social button and quick-join notification will be hidden."] = "勾选后，社交按钮和快速加入通知会被隐藏。"
L["If checked, the stance bar will not be shown."] = "勾选后，姿态条不再显示。"
L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = "勾选后，对话面板不再显示。|n|n当NPC与你交流时，该框体通常出现在界面下方。"
L["If checked, the target frame background and focus frame background will be shown in class color."] = "勾选后，目标及焦点框体的背景会显示职业颜色。"
L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = "勾选后，鼠标信息会被着色，你可以设置他的布局和大小尺寸。"
L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = "勾选后，当你移动时，同时鼠标也并未指向区域地图，则区域地图会淡出。"
L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = "勾选后，小地图上方的区域信息和地图按钮会被隐藏。|n|n追踪按钮的鼠标提示窗口会代为显示区域信息。|n|n你可以使用所绑定的按键来打开世界地图（默认M键）"
L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = "勾选后，目标的信息窗口在战斗中会被隐藏。|n|n你可以按住SHIFT键暂时忽略这个设置。"
L["If checked, unexplored areas of the map will be revealed."] = "勾选后，将显示世界地图上的未探索区域。"
L["If checked, unit targets will be shown."] = "勾选后，目标的目标会显示在信息窗口上。"
L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = "勾选后，会在世界地图、成就面板和地城手册中显示相关的wowhead链接。"
L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = "勾选后，你可以按住预设的功能键来自动进行只有一个选项的对话。"
L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = "勾选后，你可以按住CTRL点击一个聊天标签来打开一个临时的聊天窗口。"
L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = "勾选后，你可以使用方向键移动文本框中的光标。|n|n如果未被勾选，方向键将保持它所绑定的按键功能。"
L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = "勾选后，你可以更改任务信息文本的字体大小。|n|n启用这个选项也会影响使用同一文本模版的框体（例如地下城查找器）。"
L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = "勾选后，你可以更改邮件文本的字体大小。|n|n这个选项不会影响系统邮件模版（例如拍卖行的收据信息）。"
L["If checked, you will be able to change the position and scale of the buff frame."] = "勾选后，你可以改变Buff框体的位置以及缩放大小。"
L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = "勾选后，你可以改动玩家/目标框体、灵魂状态等框体的位置和尺寸。你的布局设置会保存为帐号通用。"
L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = "勾选后，你会生成一个画面视口，这个可以在游戏界面周围增加黑色的边框背景。|n|n边框的层级是处于游戏界面和插件之间，所以你仍可以放置插件元素在上面。"
L["If checked, you will be able to customise and rescale the minimap."] = "勾选后，你可以自定义小地图的大小。"
L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = "勾选后，你可以禁用屏幕泛光、死亡时的灰白界面以及异界效果（如法师的隐形术）。"
L["If checked, you will be able to drag the chat frame to the edge of the screen."] = "勾选后，你可以把聊天窗口拖动到屏幕边缘。"
L["If checked, you will be able to hide alert frames."] = "勾选后，你可以隐藏信息提示框体。"
L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = "勾选后，你可以绑定一个快捷键来打开Leatrix Plus。"
L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = "勾选后，你可以最多放置5个你所需的冷却计时图标在目标或者玩家头像上方。"
L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = "勾选后，你可以显示地图的未探索区域，同时在顶部显示地图坐标。"
L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = "勾选后，你可以通过一个单独的指令来保存你当前宠物对战的队伍配置信息（包括技能）。|n|n一个保存的按钮会添加到宠物面板。点击该按钮会给你当前的队伍显示相关的工作指令。按下<CTRL+C>会复制并缓存你的指令。|n|n你可以通过<CTRL+V>粘贴你的指令到聊天窗口或者宏页面，以实现快速配置队伍。"
L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = "勾选后，会在玩家框体显示稀有、精英或者稀有精英的边框。"
L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = "勾选后，你会在玩家、目标及焦点框体的背景显示职业颜色。"
L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = "勾选后，你可以通过滚轮缩放小地图的区域。相关放大/缩小按钮将被隐藏。"
L["If checked, you will be able to zoom out to a greater distance."] = "勾选后，你可以加大镜头的缩放距离。"
L["If checked, you will release automatically after you die in a battleground."] = "勾选后，在战场中阵亡将自动释放尸体。"
L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = "勾选后，你在PVP区域阵亡时将自动释放尸体。|n|n你可以点击右边的按钮进行设置。|n|n当你能自我战复时（如术士灵魂石、萨满复生），不会自动释放尸体。"
L["If checked, you will release automatically after you die in Ashran."] = "勾选后，在阿什兰战场中阵亡将自动释放尸体。"
L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = "勾选后，在托尔巴拉德战场中阵亡将自动释放尸体。"
L["If checked, you will release automatically after you die in Wintergrasp."] = "勾选后，在冬拥湖中阵亡将自动释放尸体。"
L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = "勾选后，当你打开商贩、银行或者邮箱时，背包不会自动开启或者关闭。"
L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = "勾选后，当你接受战复时会发送一个感谢的表情。"
L["If checked, your character will not perform the reading emote when you open the map."] = "勾选后，当你在查看地图时，你的角色不再有一个阅读的动作。"
L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = "勾选后，你的聊天历史记录会增涨至4096行。如果未被勾选，会保持在默认的128行。|n|n启用这个设置可能会在登录时会隐藏一些聊天信息。"
L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "勾选后，当你访问修理商时将自动修理装备。|n|n你可以访问时按住Shift键，可以暂时忽略该功能。"
L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = "勾选后，你的低等级角色会被允许加入到团队中。|n|n你的低等级角色无法直接加入团队。你必须先加入到队伍中再切换成团队才可以。|n|n当队伍的队长无法把队伍转换成团队，请重载你的插件"
L["If checked, zone text will not be shown (eg. 'Ironforge')."] = "勾选后，区域文本不再显示。"
L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = "如果设置为“无”，你可以按住<Shift键>来暂时阻止自动交互功能。"
L["Increase chat history"] = "增加聊天历史记录"
L["Interface"] = "界面设置"
L["Invalid battle pet team parameter."] = "无效的宠物对战队伍参数。"
L["Invalid console variable."] = "无效控制台缓存。"
L["Invalid parameter."] = "无效参数"
L["Invalid quest ID."] = "无效的任务ID。"
L["Invalid taint level."] = "无效的污染等级。"
L["Invite from whispers"] = "密语邀请"
L["Invite from Whispers"] = "密语邀请"
L["Isle of Quel'Danas"] = "奎尔丹纳斯岛"
L["Jade Forest"] = "翡翠林"
L["Kalimdor"] = "卡利姆多"
L["Krasarang Wilds"] = "卡桑琅丛林"
L["Krasarang Wilds (Alliance)"] = "卡桑琅丛林（联盟）"
L["Krasarang Wilds (Horde)"] = "卡桑琅丛林（部落）"
L["Kun-Lai Summit"] = "昆莱山"
L["Last Stand"] = "背水一战"
L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = "下次登出时不会清空LeatrixPlus的插件缓存。"
L["Leaving Kezan"] = "逃离科赞岛"
L["Leaving the Wandering Isle"] = "离开梦幻岛"
L["Left"] = "左边"
L["Legion"] = "军团再临"
L["Lifetime honorable kills"] = "荣誉击杀总数"
L["Lock the frame and make it non-interactive"] = "框体禁用交互"
L["Lockout sharing"] = "成就共享锁定"
L["Lost Isles & Kezan"] = "失落群岛"
L["Maelstrom"] = "大漩涡"
L["Mail Text"] = "邮件文本"
L["Manage buff frame"] = "Buff框体管理"
L["Manage effects"] = "游戏效果管理"
L["Manage frames"] = "管理框体面板"
L["Manage tooltip"] = "鼠标信息窗口"
L["Managed by Leatrix Plus"] = "LeatrixPlus托管"
L["Max camera zoom"] = "最大镜头距离"
L["Mechanics"] = "特性设置"
L["Media"] = "媒体"
L["Memory Usage"] = "内存占用"
L["Merge tracking button with calendar button"] = "合并追踪与日历按钮"
L["message shown."] = "信息显示。"
L["messages shown."] = "信息显示。"
L["Minimap"] = "小地图"
L["Minimap scale"] = "小地图尺寸"
L["Missing console variable."] = "丢失控制台缓存。"
L["Missing mount name."] = "坐骑名字缺失。"
L["Missing movie ID."] = "影片编号不存在。"
L["Missing pet name."] = "宠物名字缺失。"
L["Missing quest ID."] = "缺少任务ID。"
L["Missing sound file parameter."] = "缺失音频文件参数"
L["Mists of Pandaria"] = "熊猫人之迷"
L["Modifier key"] = "功能键"
L["Moonglade"] = "月光林地"
L["Mount Hyjal"] = "海加尔山"
L["Mount not found."] = "无法找到该坐骑。"
L["Move editbox to top"] = "把文本框移动上方"
L["Movie not playable."] = "无法播放该影片。"
L["Movie number"] = "影片编号"
L["Movies"] = "电影"
L["Mulgore"] = "莫高雷"
L["Music"] = "音乐"
L["My Very Own Castle (Alliance)"] = "我的要塞独一无二（联盟）"
L["My Very Own Castle (Horde)"] = "我的要塞独一无二（部落）"
L["Nagrand"] = "纳格兰"
L["Nagrand (Draenor)"] = "纳格兰 (德拉诺)"
L["Netherstorm"] = "虚空风暴"
L["No help is available for this page."] = "此页面没有帮助信息。"
L["No items with durability equipped."] = "尚未装备任何带有耐久度的物品。"
L["No tooltip showing."] = "目前没有任何提示信息。"
L["NONE"] = "无"
L["Northrend"] = "诺森德"
L["Nude"] = "隐藏着装"
L["Outland"] = "外域"
L["Overall"] = "总计"
L["Pandaria"] = "潘达利亚"
L["Particle density"] = "粒子密度"
L["Party from friends"] = "好友组队邀请"
L["Pet"] = "宠物"
L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = "无法找到该宠物。你只能搜索你所拥有的显示在藏品宠物页面中的宠物。"
L["Player"] = "玩家框体"
L["Player Chain"] = "玩家边框"
L["Press CTRL/C to copy."] = "按住CTRL+C复制"
L["Prevent special model animations"] = "关闭特殊模型动画"
L["Quest completed."] = "任务已完成。"
L["Quest not completed."] = "任务未完成。"
L["Quest Text"] = "任务信息文本"
L["Queue from friends"] = "好友队列申请"
L["Raid frame toggle"] = "切换团队框体"
L["Raise the frame strata level"] = "提高框体层级"
L["RARE"] = "稀有"
L["RARE ELITE"] = "稀有精英"
L["Recent chat window"] = "临时聊天窗口"
L["Recent Chat Window"] = "临时聊天窗口"
L["Reincarnation of Alleria Windrunner"] = "奥蕾莉亚的再生"
L["Rejection of the Gift"] = "拒绝馈赠"
L["Release in PvP"] = "PvP自动释放尸体"
L["Reload"] = "重载插件"
L["Remove raid restrictions"] = "移除团队等级限制"
L["Repair Automatically"] = "自动修理装备"
L["Repair automatically"] = "自动修理装备"
L["Repair using guild funds if available"] = "优先可用的公会资金"
L["Repaired for"] = "修理花费"
L["Requires UI reload."] = "需要重载插件"
L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = "需要你与拉兰娜·德罗姆交流。她可以在达拉然（诺森德）的铭文店里找到。"
L["Reset"] = "重置"
L["Resize mail text"] = "重设邮件文本"
L["Resize quest text"] = "重设任务文本"
L["Resize the game world"] = "修改界面大小"
L["Rested bubbles"] = "休息气泡信息"
L["Return to the Black Temple"] = "重返黑暗神殿"
L["Reveal"] = "地图全亮"
L["Reveal unexplored areas of the map"] = "显示地图未探索区域"
L["Right"] = "右边"
L["Right-click to close."] = "右键点击关闭。"
L["Risking It All"] = "孤注一掷"
L["Ruins of Gilneas"] = "吉尔尼斯废墟"
L["Scale"] = "尺寸"
L["Searing Gorge"] = "灼热峡谷"
L["Select the settings that you want to use."] = "选择你想启用的设置。"
L["Sell junk automatically"] = "自动出售杂物"
L["Sell Junk Automatically"] = "自动出售杂物"
L["SELLING JUNK"] = "出售杂物"
L["Settings"] = "设置"
L["Shaders"] = "阴影"
L["Shadowmoon Valley"] = "影月谷"
L["Shadowmoon Valley (Draenor)"] = "影月谷 (德拉诺)"
L["Sholazar Basin"] = "索拉查盆地"
L["Show a brief summary of repair costs"] = "显示修理花费"
L["Show a summary of items sold"] = "显示售出杂物的总价"
L["Show auction controls"] = "显示拍卖行控制"
L["Show character addons"] = "显示角色插件"
L["Show cooldowns"] = "显示冷却计时"
L["Show coordinates"] = "显示坐标"
L["Show cursor coordinates at the top of the map"] = "显示鼠标浮点坐标"
L["Show durability status"] = "显示耐久度"
L["Show guild ranks for your guild"] = "显示会阶"
L["Show important error text"] = "显示重要错误文本"
L["Show minimap button"] = "显示小地图按钮"
L["Show nude and tabard buttons"] = "显示裸体和战袍按钮"
L["Show pet save button"] = "保存宠物按钮"
L["Show player chain"] = "显示玩家边框"
L["Show player frame in class color"] = "玩家框体"
L["Show quest updates"] = "显示任务进度"
L["Show reveal checkbox at the top of the map"] = "地图上方显示开关复选框"
L["Show target frame and focus frame in class color"] = "目标及焦点框体"
L["Show the coordinates frame"] = "显示坐标框体"
L["Show the spell ID in buff icon tooltips"] = "显示法术ID"
L["Show the unit's target"] = "显示目标的目标"
L["Show tooltips for the cooldown icons"] = "冷却计时提示框"
L["Show volume slider"] = "显示音量控制"
L["Show Wowhead links"] = "显示wowhead链接"
L["Siege of Orgrimmar (Alliance)"] = "决战奥格瑞玛（联盟）"
L["Siege of Orgrimmar (Horde)"] = "决战奥格瑞玛（部落）"
L["Silence rested emotes"] = "表情禁音"
L["Silithus"] = "希利苏斯"
L["Silverpine Forest"] = "银松森林"
L["Skip cinematics"] = "跳过过场动画"
L["Social"] = "社交信息"
L["Sold junk for"] = "杂物出售总计"
L["Spell ID"] = "法术ID"
L["Spires of Arak"] = "阿兰卡峰林"
L["Stack"] = "层数"
L["Stonetalon Mountains"] = "石爪山脉"
L["Stop"] = "停止"
L["Storm Peaks"] = "风暴峭壁"
L["Stormheim"] = "风暴峡湾"
L["Stranglethorn"] = "荆棘谷"
L["Support"] = "帮助支持"
L["Suramar"] = "苏拉玛"
L["Swamp of Sorrows"] = "悲伤沼泽"
L["System"] = "系统设置"
L["Tabard"] = "隐藏战袍"
L["Taint level: Basic (1)."] = "污染等级：基本(1)。"
L["Taint level: Disabled (0)."] = "污染等级：禁用(0)。"
L["Taint level: Full (2)."] = "污染等级：全面(2)。"
L["Talador"] = "塔拉多"
L["Tanaan Jungle"] = "塔纳安丛林"
L["Tanaris"] = "塔纳利斯"
L["Target"] = "目标框体"
L["Target Tracking Disabled"] = "禁用目标追踪"
L["Target Tracking Enabled"] = "启用目标追踪"
L["Teldrassil"] = "泰达希尔"
L["Terokkar Forest"] = "泰罗卡森林"
L["Text"] = "文本信息"
L["Text size"] = "字体尺寸"
L["Text Size"] = "字体尺寸"
L["Thank the player who resurrected you"] = "感谢战复你的玩家"
L["The Art of War"] = "战争的艺术"
L["The Battle for Shattrath"] = "沙塔斯之战"
L["The Battle of Thunder Pass"] = "雷电王座之战"
L["The Burning Crusade"] = "燃烧的远征"
L["The Dark Portal"] = "黑暗之门"
L["The Invasion Begins"] = "入侵开始"
L["The King's Command"] = "国王的征召"
L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = "这个命令会指派你的当前宠物对战队伍并保存技能选择信息。|n|n按下<CTRL+C>来复制指令，然后通过<CTRL+V>来粘贴指令到聊天窗口或者宏页面中。"
L["This panel will close automatically if you enter combat."] = "此面板在你进入战斗后自动关闭。"
L["Thousand Needles"] = "千针石林"
L["Timer"] = "计时框体"
L["Tirisfal Glades"] = "提瑞斯法林地"
L["To begin, choose an options page."] = "请选择一项开始使用"
L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = "你可以按住CTRL+SHIFT来拖动临时聊天窗口。"
L["To use the Find button, you need to deselect the Game Time filter."] = "使用搜索功能前，你要取消选择游戏时间过滤器。"
L["Tol Barad (the PvP zone)"] = "托尔巴拉德战场"
L["Tomb of Sargeras"] = "萨格拉斯之墓"
L["Tooltip"] = "鼠标信息窗口"
L["Tooltip scale"] = "信息窗口大小"
L["Tooltip title color"] = "鼠标提示信息颜色"
L["Top"] = "顶部"
L["Townlong Steppes"] = "螳螂高原"
L["Tracing started."] = "追踪开始。"
L["Tracing stopped."] = "追踪停止。"
L["Transparency"] = "透明度"
L["Twilight Highlands"] = "暮光高地"
L["Uldum"] = "奥丹姆"
L["Unclamp chat frame"] = "不限制窗口位置"
L["Un'Goro Crater"] = "安戈洛环形山"
L["Universal group color"] = "统一队伍颜色"
L["Use arrow keys in chat"] = "允许使用方向键"
L["Use class colors in chat"] = "聊天职业染色"
L["Use easy resizing"] = "使用简单拉伸"
L["Use Leatrix Plus to move that frame."] = "使用Leatrix Plues来移动框体"
L["Use Leatrix Plus to reset that frame."] = "使用Leatrix Plues来重置框体"
L["Use the mousewheel to zoom in and out"] = "启用滚轮缩放"
L["Valley of the Four Winds"] = "四风谷"
L["Val'sharah"] = "瓦尔莎拉"
L["Various"] = "各个"
L["Vashj'ir"] = "瓦丝琪尔"
L["Vendors"] = "商贩"
L["Version"] = "版本"
L["Victory at The Nighthold"] = "暗夜要塞的胜利"
L["Video"] = "视频"
L["Viewport"] = "视口"
L["Visibility"] = "可见性"
L["Wandering Isle"] = "迷踪岛"
L["Warlords of Draenor"] = "德拉诺之王"
L["was automatically declined."] = "已经自动拒绝。"
L["Weather density"] = "天气密度"
L["Welcome to Leatrix Plus."] = "欢迎使用Leatrix Plus"
L["Western Plaguelands"] = "西瘟疫之地"
L["Westfall"] = "西部荒野"
L["Wetlands"] = "湿地"
L["Whisper keyword"] = "密语关键词"
L["Window height"] = "窗口高度"
L["Window width"] = "窗口宽度"
L["Wintergrasp"] = "冬拥湖"
L["Winterspring"] = "冬泉谷"
L["World Map"] = "世界地图"
L["World of Warcraft"] = "魔兽世界"
L["World State"] = "世界信息框体"
L["Wrath of the Lich King"] = "巫妖王之怒"
L["Wrathgate"] = "愤怒之门"
L["You cannot do that in combat."] = "你无法在战斗中进行该项操作。"
L["You do not own this pet.  Only owned pets can be searched."] = "你还未拥有这只宠物。你只能搜索你拥有的宠物。"
L["You have"] = "你有"
L["You need a battle pet team."] = "你需要一个宠物对战队伍。"
L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = "你需要进行重载插件后才能使部分设置生效。|n|n你无需立即点击重载插件按钮，但是你完成设置并希望其生效时，必须点击它。"
L["Your UI needs to be reloaded."] = "你的插件需要重新载入。"
L["Yrel and the Dark Star"] = "伊蕾尔与黑暗之心"
L["Ysera's Corruption"] = "伊瑟拉的腐化"
L["Zangarmarsh"] = "赞加沼泽"
L["Zul'Drak"] = "祖达克"
L["Zygor addon not found."] = "你尚未安装Zygor插件。"


end

----------------------------------------------------------------------
-- 	zhTW: Traditional Chinese (Taiwan)
----------------------------------------------------------------------

if GameLocale == "zhTW" then

L["A cinematic skip was attempted."] = "一個過場動畫成功跳過。"
--Translation missing 
-- L["A Falling Star"] = ""
--Translation missing 
-- L["A Found Memento"] = ""
L["A friend request from"] = "你有一個好友申請，來自"
L["A movie skip was attempted."] = "一個電影片段成功跳過。"
--Translation missing 
-- L["A New Life for Undeath"] = ""
--Translation missing 
-- L["A Taste of Iron"] = ""
L["Accept resurrection"] = "自動接受復活"
L["Accept Resurrection"] = "自動接受復活"
L["Accept summon"] = "自動接受召喚"
L["Account achievements are being shared."] = "帳號成就已經共享。"
L["Account achievements are hidden."] = "帳號成就已隱藏。"
L["Achievement UI is not loaded yet.  Open Achievements frame then try again."] = "成就插件尚未載入，請打開成就面板後重試。"
L["Addon"] = "插件"
L["Alerts"] = "隱藏通知提示"
L["All 3 battle pet slots need to be unlocked."] = "所有的三個戰寵欄位需要解鎖。"
--Translation missing 
-- L["An Inside Job"] = ""
--Translation missing 
-- L["An Unclear Path"] = ""
L["Anchor the cooldown icons to the player frame"] = "固定冷卻圖標到玩家框架"
--Translation missing 
-- L["And Justice for Thrall"] = ""
--Translation missing 
-- L["Anduin's Theme"] = ""
L["Arathi Highlands"] = "阿拉希高地"
--Translation missing 
-- L["Arrival on Argus"] = ""
L["Ashenvale"] = "梣谷"
L["Ashran"] = "艾斯蘭"
L["Automate gossip"] = "自動對話"
L["Automate Gossip"] = "自動對話"
L["Automate quests"] = "任務自動化"
L["Automation"] = "自動化"
L["Azshara"] = "艾薩拉"
L["Azsuna"] = "艾蘇納"
L["Azuremyst Isle"] = "藍謎島"
L["Back to Main Menu"] = "返回"
L["Barrens"] = "南貧瘠之地"
--Translation missing 
-- L["Battle of Serpent's Heart"] = ""
L["Battlegrounds"] = "戰場"
--Translation missing 
-- L["Bigger is Better (Alliance)"] = ""
--Translation missing 
-- L["Bigger is Better (Horde)"] = ""
L["Blade's Edge Mountains"] = "劍刃山脈"
--Translation missing 
-- L["Blizzard"] = ""
L["Block duels"] = "拒絕決鬥"
L["Block friend requests"] = "封鎖好友邀請"
L["Block party invites"] = "封鎖隊伍邀請"
L["Block pet battle duels"] = "封鎖寵物對戰"
L["Blocks"] = "封鎖"
L["Bloodmyst Isle"] = "血謎島"
L["Borean Tundra"] = "北風凍原"
L["Bottom"] = "底部"
L["Broken Isles"] = "破碎群島"
L["Broken Shore"] = "破碎海岸"
--Translation missing 
-- L["Broken Shore (Alliance)"] = ""
--Translation missing 
-- L["Broken Shore (Horde)"] = ""
L["Buff Frame"] = "增益框架"
L["Buffs"] = "增益"
L["Burning Steppes"] = "燃燒平原"
L["Buyout Only"] = "僅限直購價"
L["Camera distance"] = "鏡頭距離"
L["Cataclysm"] = "浩劫與重生"
L["Chain style"] = "邊框樣式"
L["Character"] = "角色"
L["Chat"] = "聊天功能"
L["Chat Frame"] = "聊天視窗"
L["Checkbox labels are Ok."] = "複選框標籤是OK的。"
L["Cinematics"] = "過場動畫"
L["Class colored frames"] = "框架職業染色"
L["Class Colored Frames"] = "框架職業染色"
L["Click to configure the settings for this option."] = "點擊進行額外的選項設置"
L["Click to reset the settings on this page."] = "點擊重置此頁面的設置。"
L["Click to return to the main menu."] = "點擊返回到主選單"
L["Color the backdrops based on faction"] = "根據陣營著色邊框"
L["Combat log cannot be hidden while undocked."] = "戰鬥記錄視窗被分離時無法隱藏。"
L["Combat plates"] = "自動開關姓名板"
L["Configuration Panel"] = "設置面板"
L["Cooldowns"] = "冷卻"
L["Coordinates"] = "坐標"
L["Coordinates Disabled"] = "停用坐標顯示"
L["Coordinates Enabled"] = "啟用坐標顯示"
L["Crystalsong Forest"] = "水晶之歌森林"
L["Customise minimap"] = "自定義小地圖"
L["Dalaran"] = "達拉然"
L["Dark Soil scanning activated.  Reload UI to exit."] = "深色土壤掃描啟用，取消需重載插件。"
L["Dark Soil scanning is already activated.  You only need to run this once.  Reload UI to exit."] = "深色土壤掃描已經啟用，你只需要進行一次操作。取消需重載插件。"
L["Darken the frame background"] = "顯示深色背景"
L["Darkshore"] = "黑海岸"
--Translation missing 
-- L["Death of Ysera"] = ""
L["Deepholm"] = "地深之源"
L["Disable bag automation"] = "停用背包自動開啟"
L["Disable chat fade"] = "停用聊天視窗淡出"
L["Disable loot warnings"] = "停用拾取通報"
L["Disable map emote"] = "停用地圖查看動作"
L["Disable pet automation"] = "停用寵物自動化"
L["Disable sticky chat"] = "停用聊天頻道粘附"
L["Disable the grey screen of death"] = "停用死亡灰屏"
L["Disable the netherworld effect"] = "停用虛空特效"
L["Disable the screen glow"] = "停用螢幕泛光"
L["Draenor"] = "德拉諾"
L["Drag the coordinates frame to position it."] = "拖動坐標框架來自定義尺寸。"
L["Drag the frame overlay to position the frame."] = "拖曳框架的遮罩以定位此框架。"
L["Drag the frame overlays to position the frames.|n|nTo change the scale of a frame, click it to select it then adjust the scale slider.|n|nThis panel will close automatically if you enter combat."] = "移動面板來定位框架。|n|n如果想要改變框架尺寸，你需選定面板，然後移動滑塊來選擇。|n|n你一旦進入戰鬥，這個框架會自動關閉。"
L["Drag the tooltip overlay to position it."] = "拖動鼠標訊息的外框來重新定位。"
L["Dragonblight"] = "龍骨荒野"
L["Dread Wastes"] = "悚然荒野"
L["Dun Morogh"] = "丹莫洛"
L["durability"] = "耐久度"
L["Durability"] = "耐久度"
L["Durotar"] = "杜洛塔"
L["Duskwood"] = "暮色森林"
L["Dustwallow Marsh"] = "塵泥沼澤"
L["Eastern"] = "東部王國"
L["Eastern Plaguelands"] = "東瘟疫之地"
L["Effects"] = "特效"
L["ELITE"] = "精英"
L["Elwynn Forest"] = "艾爾文森林"
L["Enable hotkey"] = "啟用熱鍵"
L["Enable viewport"] = "啟用視窗背景"
L["Enhance dressup"] = "增強試衣間"
L["Enhance Dressup"] = "增強試衣間"
L["Enhance world map"] = "增強世界地圖"
L["Enhancements"] = "增強功能"
L["Enter the spell IDs for the cooldown icons that you want to see.|n|nIf you want a cooldown icon to show only when it is stacked, enter the minimum stack size (otherwise leave it blank).|n|nIf a cooldown icon normally appears under the pet frame, check the pet checkbox.|n|nCooldown icons are saved to your class and specialisation."] = "輸入你想見到冷卻圖標的法術ID。|n|n如果你想要冷卻圖標只有在堆疊時顯示，輸入最小堆疊大小(否則保持空白)。|n|n如果冷卻圖標通常出現在寵物框架之下，請勾選寵物複選框。|n|n冷卻圖標會根據你的職業與專精儲存。"
L["Error frame text will be hidden"] = "隱藏錯誤訊息"
L["Error frame text will be shown"] = "顯示錯誤訊息"
L["Error Text"] = "錯誤文字"
--Translation missing 
-- L["Establish Your Garrison (Alliance)"] = ""
--Translation missing 
-- L["Establish Your Garrison (Horde)"] = ""
L["Eversong Woods"] = "永歌森林"
L["Exclude combat resurrection requests"] = "排除戰鬥復活"
L["Extras"] = "其他"
L["Fade windowed map while moving"] = "移動時淡出區域地圖"
--Translation missing 
-- L["Fall of Deathwing"] = ""
L["Faster auto loot"] = "加速自動拾取"
--Translation missing 
-- L["Fate of the Horde"] = ""
L["Features"] = "功能"
L["Felwood"] = "費伍德森林"
L["Feralas"] = "菲拉斯"
L["Find Item"] = "搜尋物品"
L["Font size"] = "文字大小"
L["Frames"] = "框架相關"
L["Frostfire Ridge"] = "霜火峰"
L["Game Options"] = "游戲設置"
--Translation missing 
-- L["Garrison Shipyard (Alliance)"] = ""
--Translation missing 
-- L["Garrison Shipyard (Horde)"] = ""
L["Ghost"] = "靈魂狀態框架"
L["Ghostlands"] = "鬼魂之地"
L["Gold Only"] = "僅輸入金幣"
L["Gorgrond"] = "格古隆德"
L["Graphics and Sound"] = "圖形和音效"
L["Grizzly Hills"] = "灰白之丘"
L["Groups"] = "隊伍"
--Translation missing 
-- L["Harbingers Gul'dan"] = ""
--Translation missing 
-- L["Harbingers Illidan"] = ""
--Translation missing 
-- L["Harbingers Khadgar"] = ""
--Translation missing 
-- L["Hellfire Citadel (1)"] = ""
--Translation missing 
-- L["Hellfire Citadel (2)"] = ""
L["Hellfire Peninsula"] = "地獄火半島"
L["Help"] = "幫助"
L["Hide achievement alerts"] = "隱藏成就通知"
L["Hide alerts"] = "隱藏訊息提示"
L["Hide bodyguard gossip"] = "隱藏保鏢對話"
L["Hide boss banner"] = "隱藏BOSS橫幅"
L["Hide chat buttons"] = "隱藏聊天視窗按鈕"
L["Hide clean-up buttons"] = "隱藏背包整理按鈕"
L["Hide cooldown duration numbers (if enabled)"] = "隱藏冷卻持續時間數字(如果啟用)"
L["Hide crafted names"] = "隱藏製造者名稱"
L["Hide encounter alerts"] = "隱藏地城通知"
L["Hide error messages"] = "隱藏錯誤訊息"
L["Hide gryphons"] = "隱藏動作條獅鷲"
L["Hide level-up display"] = "隱藏升級提示"
L["Hide loot alerts"] = "隱藏拾取通知"
L["Hide model positioning controls"] = "隱藏模型定位控制"
L["Hide order hall and garrison alerts"] = "隱藏職業大廳與要塞通知"
L["Hide order hall bar"] = "隱藏職業大廳條"
L["Hide portrait numbers"] = "隱藏頭像數字"
L["Hide profession alerts"] = "隱藏專業通知"
L["Hide social button"] = "隱藏社交按鈕"
L["Hide stance bar"] = "隱藏姿態條"
L["Hide subzone text"] = "隱藏次級區域文字"
L["Hide talking frame"] = "隱藏對話框架"
L["Hide the clock below the minimap"] = "隱藏時鐘"
L["Hide the combat log"] = "隱藏戰鬥記錄視窗"
L["Hide tooltips for world units during combat"] = "戰鬥中隱藏視窗"
L["Hide zone information above the minimap"] = "隱藏區域訊息"
L["Hide zone text"] = "隱藏區域文字"
L["Highmountain"] = "高嶺"
L["Home"] = "首頁"
L["Hotkey"] = "熱鍵"
L["Howling Fjord"] = "凜風峽灣"
L["Icecrown"] = "寒冰皇冠"
--Translation missing 
-- L["Icecrown Citadel"] = ""
L["If checked, a brief summary of repair costs will be shown in chat when an automated repair is attempted."] = "勾選後，自動修理的費用摘要會顯示在聊天視窗。"
L["If checked, a brief summary will be shown in chat when items are sold automatically."] = "勾選後，會在聊天視窗顯示自動售出之垃圾的摘要總計。"
L["If checked, a button will be added to the character sheet which will show your equipped item durability when you hover the pointer over it.|n|nIn addition, an overall percentage will be shown in the chat frame when you die."] = "勾選後，一個按鈕會顯示在角色框架，其鼠標提示訊息會顯示身上的裝備耐久度。|n|n當你死後，你的整體耐久度也會顯示在聊天框架。"
L["If checked, a checkbox will be shown at the top of the map which will allow you to toggle unexplored areas directly from the map frame."] = "勾選後，一個復選框會顯示在地圖上方，讓你可以自行切換未探索區域的顯示功能。"
L["If checked, a dark background will be used for the frame."] = "勾選後，框架會啟用一個深色的背景。"
L["If checked, a group invite will be automatically sent to anyone who whispers a designated keyword to you.|n|nYou need to be either ungrouped or party leader in your own group for this to work."] = "勾選後，你將自動邀請那些密語你關鍵詞的玩家。|n|n你必須不處於隊伍中，或當你是隊長時才可進行此項操作。"
L["If checked, a master volume slider will be shown on the character sheet.|n|nThe volume slider can be placed in either of two locations on the character sheet.  To toggle between them, hold the shift key down and right-click the slider."] = "勾選後，一個全局音量控制桿會顯示在角色訊息視窗。|n|n這個音量控制可以在兩個位置之間切換，你可以按住SHIFT+鼠標右鍵進行切換。"
L["If checked, a minimap button will be available.|n|nClick - Toggle options panel.|n|nSHIFT/Left-click - Toggle music.|n|nSHIFT/Right-click - Toggle coordinates (if enabled).|n|nCTRL/Left-click - Toggle minimap target tracking.|n|nCTRL/Right-click - Toggle errors (if enabled).|n|nCTRL/SHIFT/Left-click - Toggle Zygor (if installed).|n|nCTRL/SHIFT/Right-click - Toggle windowed mode."] = "勾選後，小地圖按鈕將可使用。|n|n點擊：開關設置面板。|n|nSHIFT/左鍵點擊 – 開關音樂。|n|nSHIFT/右鍵點擊 – 開關座標(如果啟用)。|n|nCTRL/左鍵點擊 – 開關小地圖目標追蹤。|n|nCTRL/右鍵點擊 – 開關錯誤顯示(如果啟用)。|n|nCTRL/SHIFT/左鍵點擊 – 開關Zygor(如果安裝)。|n|nCTRL/SHIFT/右鍵點擊 – 切換視窗模式。"
L["If checked, achievement alerts will not be shown."] = "勾選後，獲得成就的提示不再顯示。"
L["If checked, additional functionality will be added to the auction house.|n|nBuyout only - create buyout auctions without filling in the starting price.|n|nGold only - set the copper and silver prices at 99 to speed up new auctions.|n|nFind - search the auction house for the item you are selling.|n|nIn addition, the auction duration setting will be saved account-wide."] = "勾選後，會給拍賣行添加額外的功能：|n|n僅限直購價 - 使用後，你不再需要輸入起始價格。|n|n僅輸入金幣 - 自動在銀幣和銅幣位輸入99，以便加快新物品的上架。|n|n搜索按鈕 - 在拍賣行搜索你正在出售的物品。|n|n額外的，拍賣物品的持續時間設置將保存為賬戶通用設置。"
L["If checked, additional functionality will be added to the dressup frames."] = "勾選後，試衣間會增加額外功能。"
L["If checked, all grey items in your bags will be sold automatically when you visit a merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "勾選後，當你訪問商販時將自動出售背包中的垃圾。|n|n當你訪問時按住Shift鍵，可以暫時忽略該功能。"
L["If checked, backdrops will be tinted blue (friendly) or red (hostile)."] = "勾選後，訊息視窗的邊框會更改為藍色（友方）或者紅色（敵方）。"
L["If checked, battle pets which are automatically summoned will be dismissed within a few seconds.|n|nThis includes dragging a pet onto the first team slot in the pet journal and entering a battle pet team save command.|n|nNote that pets which are automatically summoned during combat will be dismissed when combat ends."] = "勾選後，自動召喚的戰寵將在幾秒內被解散。|n|n這包含了拖曳寵物到寵物日誌第一個隊伍空格以及輸入一個戰寵隊伍儲存指令。|n|n注意在戰鬥中自動召喚的寵物會在戰鬥結束後被解散。"
L["If checked, BattleTag and Real ID friend requests will be automatically declined.|n|nEnabling this option will automatically decline any pending requests."] = "勾選後，戰網好友邀請會自動拒絕。|n|n啟用後，當前待處理的邀請會自動拒絕。"
L["If checked, character models shown in the dressing room, auction house dressing room and transmogrify frame will not perform special animations."] = "勾選後，角色模型顯示在試衣間，拍賣場試衣與塑型框架不會有特別動畫。"
--Translation missing 
-- L["If checked, character positioning controls will not be shown in any dressup frame."] = ""
L["If checked, chat frame buttons will be hidden.|n|nClicking chat tabs will automatically show the latest messages.|n|nUse the mouse wheel to scroll through the chat history.  Hold down SHIFT for page jump or CTRL to jump to the top or bottom of the chat history."] = "勾選後，聊天視窗的按鈕會被隱藏。|n|n點擊視窗標簽會自動顯示最新的消息。|n|n使用鼠標滾輪可以查看歷史訊息。按住SHIFT進行訊息頁面跳轉，按住CTRL將滾動至訊息頁首/頁尾。"
L["If checked, chat text will not fade out after a time period."] = "勾選後，聊天訊息不會在一定時間後淡出。"
L["If checked, class colors will be used in the chat frame."] = "勾選後，聊天視窗中會使用職業顏色。"
L["If checked, confirmations will no longer appear when you choose a loot roll option or attempt to sell or mail a tradable item."] = "勾選後，當你選擇一個擲骰選項或是試圖出售或郵寄可交易物品將不再確認。"
L["If checked, cooldown duration numbers will not be shown over the cooldowns.|n|nIf unchecked, cooldown duration numbers will be shown over the cooldowns if they are enabled in the game options panel ('ActionBars' menu)."] = "勾選後，冷卻持續時間數字將不顯示在冷卻上。|n|n取消勾選後，冷卻持續時間數字將會顯示在冷卻上如果已在遊戲選項面板中啟用('動作條'選單)。"
L["If checked, cooldown icon tooltips will be shown."] = "勾選後，冷卻圖標的提示將會顯示。"
L["If checked, cooldown icons will be shown above the player frame instead of the target frame.|n|nIf unchecked, cooldown icons will be shown above the target frame."] = "勾選後，冷卻圖標將顯示在玩家框架之上而非目標框架。|n|n取消勾選後，冷卻圖標將顯示在目標框架之上。"
L["If checked, coordinates representing your character's location will be shown in a movable, customisable frame."] = "勾選後，你當前所在地點的坐標會顯示在一個可自定義的視窗。"
L["If checked, crafted items will no longer show the name of the crafter."] = "勾選後，製造物品將不再顯示製造者名稱"
L["If checked, cursor coordinates will be shown at the top of the map."] = "勾選後，滑鼠所在坐標會顯示在世界地圖上方。"
L["If checked, damage and healing numbers in the player and pet portrait frames will be hidden."] = "勾選後，在玩家頭像和寵物頭像上的傷害及治療數字不再顯示。"
L["If checked, dragging the General chat tab while the chat frame is locked will expand the chat frame upwards.|n|nIf the chat frame is unlocked, dragging the General chat tab will move the chat frame."] = "勾選後，對鎖定的聊天視窗進行拖動，會使其豎直拉伸。|n|n對已解鎖的聊天視窗進行拖動，會使其移動。"
L["If checked, duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "勾選後，對於非好友與公會成員的決鬥請求會被封鎖。"
L["If checked, emote sounds will be silenced while your character is:|n|n- resting|n- in a pet battle|n- at the Hathill Market|n- at the Grim Guzzler|n|nEmote sounds will be enabled when none of the above apply."] = "勾選後，當你處於下列情況時表情音效會被靜音：|n|n- 休息時|n- 寵物戰鬥中|n- 在半丘市集|n- 在黑鐵酒吧|n|n當你不處於上述位置時表情音效恢復。"
L["If checked, encounter alerts will not be shown.|n|nThis includes dungeons, raids, scenarios, invasions, guild challenges and world quests."] = "勾選後，地城的提示不再顯示。|n|n包括地下城、團隊、場景戰役、要塞入侵、公會挑戰和世界任務。"
L["If checked, enemy nameplates will be shown during combat and hidden when combat ends."] = "勾選後，敵對姓名板會在戰鬥中自動開啟，離開戰鬥後關閉。"
L["If checked, error messages (such as 'Not enough rage') will not be shown.|n|nIf you have the minimap button enabled, you can hold down CTRL and right-click it to toggle error messages without affecting this setting."] = "勾選後，錯誤訊息（例如“怒氣不足”）不再顯示。|n|n如果你啟用了小地圖按鈕，你可以Ctrl+右鍵點擊來進行開關。"
L["If checked, guild ranks will be shown for players in your guild."] = "勾選後，顯示公會會階。"
L["If checked, in-game cinematics will be skipped if at all possible.|n|nYou can hold the shift key down when a cinematic is about to start to over-ride this setting.|n|nNote that some cinematics cannot be skipped."] = "勾選後，游戲內可以跳過的過程動畫會自動跳過。|n|n當一個過場動畫開始前，你可以按住Shift鍵來忽略該項設置。|n|n注意，部分過場動畫無法跳過。"
L["If checked, loot alerts will not be shown.|n|nThis includes items, money, honor, resources and store purchases."] = "勾選後，拾取提醒將不會顯示。|n|n這包含了物品、金錢、榮譽、資源與商店採購。"
L["If checked, order hall and garrison alerts will not be shown.|n|nThis includes buildings, followers, missions and talents."] = "勾選後，職業大廳與要塞通知將不顯示。|n|n這包含了建築物、追隨者、任務與天賦。"
L["If checked, party invitations from friends or guild members will be automatically accepted unless you are queued in Dungeon Finder."] = "勾選後，如果你不在地下城佇列中，你的好友或公會成員發送的組隊邀請會被自動接受。"
L["If checked, party invitations will be blocked unless the player inviting you is in your friends list or guild."] = "勾選後，對於非好友與公會成員的組隊邀請會被封鎖。"
L["If checked, pet battle duel requests will be blocked unless the player requesting the duel is in your friends list or guild."] = "勾選後，對於非好友與公會成員的寵物對戰請求會被封鎖。"
L["If checked, profession alerts will not be shown.|n|nThis includes recipes and digsites."] = "勾選後，專業技能的相關提示不再顯示。|n|n這包含了圖紙與挖掘地點。"
L["If checked, quest updates will be shown in the error frame."] = "勾選後，任務進度會被顯示在錯誤訊息面板。"
L["If checked, quests will be selected, accepted and turned-in automatically.|n|nYou can hold the shift key down when you talk to a quest giver to over-ride this setting."] = "勾選後，任務會自動交接。|n|n當你和NPC對話時按住Shift鍵，可以暫時忽略此項功能。"
L["If checked, raid chat and instance chat will both be colored blue (to match the default party chat color)."] = "勾選後，團隊和副本聊天訊息會改為藍色（與小隊一致）。"
L["If checked, repair costs will be taken from guild funds for characters that are guilded and have permission to repair."] = "勾選後，修理裝備時將優先使用可用的公會資金。"
L["If checked, requests initiated by your party leader to join the Dungeon Finder queue will be automatically accepted if the party leader is in your friends list or guild.|n|nThis option requires that you have selected a role for your character in the Dungeon Finder window."] = "勾選後，如果小隊隊長是你的好友或公會成員，其地城搜尋器的加入請求會被自動接受。|n|n這個選項需要你在地城搜尋器中選擇一個職責。"
L["If checked, resurrection requests will be accepted automatically."] = "勾選後，你將自動接受復活。|n|n你可以點擊右邊的按鈕進行設置。"
L["If checked, resurrection requests will not be automatically accepted if the player resurrecting you is in combat."] = "勾選後，當你在戰鬥中將不再自動接受復活。"
L["If checked, spell IDs will be shown in buff icon tooltips located in the buff frame and under the target frame."] = "勾選後，位於增益框架與目標框架之下的增益圖標提示會顯示法術ID。"
L["If checked, sticky chat will be disabled.|n|nNote that this does not apply to temporary chat windows."] = "勾選後，會停用聊天頻道的粘附。|n|n此選項不會影響臨時視窗的對話。"
L["If checked, subzone text will not be shown (eg. 'Mystic Quarter')."] = "勾選後，次級區域文字不再顯示。"
L["If checked, summon requests will be accepted automatically unless you are in combat."] = "勾選後，當你不處於戰鬥狀態時會自動接受召喚。"
L["If checked, tabard and nude buttons will be shown in the dressing room and auction house dressing room."] = "勾選後，外袍與脫裝按鈕會顯示在試衣間與拍賣場試衣框架上。"
L["If checked, the addon list (accessible from the game menu) will show character based addons by default."] = "勾選後，插件列表（游戲選單處）會顯示預設的對角色生效的插件。"
L["If checked, the amount of time it takes to auto loot creatures will be significantly reduced."] = "勾選後，自動拾取所耗的時間將大幅縮短。"
L["If checked, the backpack clean-up button and the bank frame clean-up button will not be shown."] = "勾選後，背包及銀行的整理按鈕不再顯示。"
L["If checked, the boss banner will not be shown.|n|nThe boss banner appears when a boss is defeated.  It shows the name of the boss and the loot that was distributed."] = "勾選後，BOSS的橫幅訊息不再顯示。|n|n該訊息通常在BOSS被擊敗後顯示。它顯示BOSS的名字以及掉落。"
L["If checked, the button to toggle the raid container frame will be shown just above the raid management frame (left side of the screen) instead of in the raid management frame itself.|n|nThis allows you to toggle the raid container frame without needing to open the raid management frame."] = "勾選後，打開團隊訊息的按鈕會顯示在左側團隊管理框架的上方，而不是在其內部。|n|n此選項讓你無需打開團隊管理框架，就可以切換團隊框架。"
L["If checked, the clock will be hidden."] = "勾選後，隱藏小地圖的時鐘"
L["If checked, the combat log will be hidden.|n|nThe combat log must be docked in order for this option to work.|n|nIf the combat log is undocked, you can dock it by dragging the tab (and reloading your UI) or by resetting the chat windows (from the chat menu)."] = "勾選後，戰鬥記錄會被隱藏。|n|n戰鬥記錄視窗必須未被分離時才能生效。|n|n如果戰鬥記錄視窗被分離了，你可以拖動其合併至主視窗（然後重載插件），或者在聊天設置中重置設置。"
L["If checked, the coordinates frame will be shown.|n|nIf you have the minimap button enabled, you can hold down SHIFT and right-click it to toggle this setting at any time.|n|nIf unchecked, the coordinates frame will be disabled and no CPU power will be allocated to updating it."] = "勾選後，會顯示坐標框架。|n|n如果插件的小地圖按鈕啟用了，你可以按住SHIFT+右鍵點擊來進行設置。|n|n如果未勾選，這個坐標框架會被停用，同時也不會有任何資源占用。"
L["If checked, the 'Display only character achievements to others' setting in the game options panel ('Social' menu) will be permanently checked and locked."] = "勾選後，“對他人只顯示角色成就”的選項（介面-社交）會被永久勾選並鎖定。"
L["If checked, the editbox will be moved to the top of the chat frame."] = "勾選後輸入框會被移動至聊天視窗上方。"
L["If checked, the following errors will be shown in the error frame:|n|n- Inventory full|n- Quest log full|n- Votekick alerts"] = "勾選後，如下的錯誤訊息會顯示在面板中：|n|n- 背包已滿|n- 任務列表已滿|n- 投票踢人通知"
L["If checked, the frame strata level will be set to HIGH allowing it to show on top of most frames.|n|nIf unchecked, the strata level will be set to MEDIUM."] = "勾選後，框架的層級會提升至最高，允許它顯示在其他框架之上。|n|n如果未勾選，這個框架層級會被設置為中等。"
L["If checked, the frame will be locked and you will not be able to move it.|n|nEnabling this option will make the frame non-interactive, meaning you will be able to click through it as if it wasn't there.|n|nThis is useful if you are showing the coordinates in a space where you would normally click (such as the game world or minimap)."] = "勾選後，框架會被鎖定，你不能再移動它。|n|n啟用這個選項後，框架不可互動，意味著你的鼠標不會再被其檢測，仿佛框架不存在一般。|n|n這個選項用在當你把其放置於你經常需要點擊的地方（比如游戲中央或者小地圖）。"
L["If checked, the game world will be resized to fit between the top and bottom borders.|n|nNote that if you enable this setting, the transparency slider will no longer affect the top and bottom borders."] = "勾選後，游戲介面的大小會修改以適應頂部和底部的邊框。|n|n當你啟用這個選項時，透明度的調節不再影響這兩個邊框。"
L["If checked, the gossip window will not be shown when you talk to an active garrison bodyguard.|n|nYou can hold the shift key down when you talk to a bodyguard to over-ride this setting."] = "勾選後，你的保鏢對話時不再出現選項。|n|n對話時按住Shift鍵，可以暫時忽略該項設置。"
L["If checked, the grey screen of death will be disabled."] = "勾選後，死亡灰屏將被停用。"
L["If checked, the level-up display will not be shown.|n|nThe level-up display shows encounter objectives, level-ups, pet battle rewards, etc."] = "勾選後，升級提示不再顯示。|n|n升級提示功能包括副本目標、升級、小寵物獎勵等等。"
L["If checked, the main bar gryphons will not be shown."] = "勾選後，動作條兩邊的獅鷲不再顯示。"
L["If checked, the minimap tracking button will be merged with the calendar button to save space.|n|nThe new tracking button will be moved to the space normally occupied by the calendar button.|n|nYou will be able to left-click the tracking button to show the tracking menu and right-click it to show the calendar."] = "勾選後，小地圖的追蹤按鈕會和日曆按鈕合並以便節省空間。|n|n新的追蹤按鈕會被移動至日曆按鈕的位置。|n|n你可以左鍵點擊打開追蹤，右鍵點擊打開日曆。"
L["If checked, the netherworld effect will be disabled."] = "勾選後，虛空特效將被停用。"
L["If checked, the order hall command bar will not be shown."] = "勾選後，職業大廳控制條將不顯示。"
L["If checked, the player frame background will be shown in class color."] = "勾選後，玩家框架的背景會顯示職業顏色。"
L["If checked, the screen glow will be disabled."] = "勾選後，螢幕的泛光將被停用。"
L["If checked, the social button and quick-join notification will be hidden."] = "勾選後，社交按鈕與快速加入提醒將會隱藏。"
L["If checked, the stance bar will not be shown."] = "勾選後，姿態條不再顯示。"
L["If checked, the talking frame will not be shown.|n|nThe talking frame normally appears in the lower portion of the screen when certain NPCs communicate with you."] = "勾選後，對話面板不再顯示。|n|n當NPC與你交流時，該框架通常出現在界面下方。"
L["If checked, the target frame background and focus frame background will be shown in class color."] = "勾選後，目標及焦點框架的背景會顯示職業顏色。"
L["If checked, the tooltip will be color coded and you will be able to modify the tooltip layout and scale."] = "勾選後，提示訊息會被著色，你可以設置他的佈局和大小尺寸。"
L["If checked, the windowed map will fade while your character is moving and the cursor is not over the map."] = "勾選後，當你移動時，同時鼠標也並未指向區域地圖，則區域地圖會淡出。"
L["If checked, the zone information shown above the minimap, as well as the world map button, will be hidden.|n|nThe tooltip for the tracking button will show zone text information instead.|n|nTo show the world map, press the map bind key (M by default)."] = "勾選後，小地圖上方的區域訊息和地圖按鈕會被隱藏。|n|n追蹤按鈕的滑鼠提示視窗會代為顯示區域訊息。|n|n你可以使用所綁定的按鍵來打開世界地圖（預設M鍵）"
L["If checked, tooltips for world units will be hidden during combat.|n|nYou can hold the shift key down to over-ride this setting."] = "勾選後，目標的訊息視窗在戰鬥中會被隱藏。|n|n你可以按住SHIFT鍵暫時忽略這個設置。"
L["If checked, unexplored areas of the map will be revealed."] = "勾選後，將顯示世界地圖上的未探索區域。"
L["If checked, unit targets will be shown."] = "勾選後，目標的目標會顯示在訊息視窗上。"
--Translation missing 
-- L["If checked, Wowhead links will be shown in the world map frame, the achievements frame and the encounter journal frame."] = ""
L["If checked, you can hold a designated modifier key while opening a gossip window to automatically select a single gossip option."] = "勾選後，當開啟對話視窗的時候你可以按下一個指定的快捷按鍵以自動選擇一個對話選項。"
L["If checked, you can hold down CTRL and click a chat tab to view recent chat in a copy-friendly window."] = "勾選後，你可以按住CTRL並且點擊一個聊天標籤以便在一個易於複製視窗中觀看最近的聊天訊息。"
L["If checked, you can press the arrow keys to move the insertion point left and right in the chat frame.|n|nIf unchecked, the arrow keys will use the default keybind setting."] = "勾選後，你可以使用方向鍵移動聊天框中的輸入點。|n|n如果未被勾選，方向鍵將保持它所綁定的按鍵功能。"
L["If checked, you will be able to change the font size of quest text.|n|nEnabling this option will also change the text size of other frames which inherit the same font (such as the Dungeon Finder frame)."] = "勾選後，你可以更改任務訊息文字的字體大小。|n|n啟用這個選項也會影響使用同一文字模版的框架（例如地城搜尋器）。"
L["If checked, you will be able to change the font size of standard mail text.|n|nThis does not affect mail created using templates (such as auction house invoices)."] = "勾選後，你可以更改郵件文字的字體大小。|n|n這個選項不會影響使用系統範本的郵件（例如拍賣行的收據訊息）。"
L["If checked, you will be able to change the position and scale of the buff frame."] = "勾選後，你將可以改變增益框架的位置與大小。"
L["If checked, you will be able to change the position and scale of the player frame, target frame, world state, ghost frame and timer bar.  Your layout will be saved account-wide."] = "勾選後，你可以改動玩家/目標框架、靈魂狀態等框架的位置和尺寸。你的佈局設置會保存為帳號通用。"
L["If checked, you will be able to create a viewport.  A viewport adds adjustable black borders around the game world.|n|nThe borders are placed on top of the game world but under the UI so you can place UI elements over them."] = "勾選後，你會生成一個視窗背景，這個可以在游戲界面周圍增加黑色的邊框背景。|n|n邊框的層級是處於游戲界面和插件之間，所以你仍可以放置插件元素在上面。"
L["If checked, you will be able to customise and rescale the minimap."] = "勾選後，你可以自定義小地圖的大小。"
L["If checked, you will be able to disable the screen glow, the grey screen of death and the netherworld effect."] = "勾選後，可以讓你停用螢幕泛光，死亡的灰屏與虛空特效。"
L["If checked, you will be able to drag the chat frame to the edge of the screen."] = "勾選後，你可以把聊天視窗拖動到屏幕邊緣。"
L["If checked, you will be able to hide alert frames."] = "勾選後，你可以隱藏訊息提示框架。"
L["If checked, you will be able to open Leatrix Plus by pressing a designated hotkey."] = "勾選後，你可以綁定一個快捷鍵來打開Leatrix Plus。"
L["If checked, you will be able to place up to five beneficial cooldown icons above the target or player frame."] = "勾選後，你將能放置五個有益的冷卻圖標在目標或玩家框架之上。"
L["If checked, you will be able to reveal unexplored areas of the map and show cursor coordinates at the top of the map."] = "勾選後，你可以顯示地圖的未探索區域，同時在頂部顯示地圖坐標。"
L["If checked, you will be able to save your current battle pet team (including abilities) to a single command.|n|nA button will be added to the Pet Journal.  Clicking the button will toggle showing the assignment command for your current team.  Pressing CTRL/C will copy the command to memory.|n|nYou can then paste the command (with CTRL/V) into the chat window or a macro to instantly assign your team."] = "勾選後，你可以利用一個單獨的指令儲存你當前戰寵的隊伍(包含技能)。|n|n寵物日誌將會加入新的按鈕。點擊該按鈕將切換顯示您當前隊伍的分配指令。按下Ctrl+C就會複製此指令到記憶體中。|n|n你可以貼上此指令(用Ctrl+V)到聊天視窗或巨集中以立即指派你的隊伍。"
L["If checked, you will be able to show a rare, elite or rare elite chain around the player frame."] = "勾選後，會在玩家框架顯示稀有、精英或者稀有精英的邊框。"
L["If checked, you will be able to show class coloring in the player frame, target frame and focus frame backgrounds."] = "勾選後，你會在玩家、目標及焦點框架的背景顯示職業顏色。"
L["If checked, you will be able to use the mousewheel to zoom in and out of the minimap.  The zoom in/out buttons will be hidden."] = "勾選後，你可以通過滾輪縮放小地圖的區域。相關放大/縮小按鈕將被隱藏。"
L["If checked, you will be able to zoom out to a greater distance."] = "勾選後，你可以將鏡頭拉遠到更遠的距離。"
L["If checked, you will release automatically after you die in a battleground."] = "勾選後，在戰場中陣亡將自動釋放屍體。"
L["If checked, you will release automatically after you die in a designated PvP zone.|n|nYou will not release automatically if you have the ability to self-resurrect (soulstone, reincarnation, etc)."] = "勾選後，你在PVP區域陣亡時將自動釋放屍體。|n|n你可以點擊右邊的按鈕進行設置。|n|n當你能自我復活時（如術士靈魂石、薩滿復生），不會自動釋放屍體。"
L["If checked, you will release automatically after you die in Ashran."] = "勾選後，在艾斯蘭戰場中陣亡將自動釋放屍體。"
L["If checked, you will release automatically after you die in Tol Barad (the PvP zone)."] = "勾選後，在托巴拉德戰場中陣亡將自動釋放屍體。"
L["If checked, you will release automatically after you die in Wintergrasp."] = "勾選後，在冬握湖中陣亡將自動釋放屍體。"
L["If checked, your bags will not be opened or closed automatically when you interact with a merchant, bank or mailbox."] = "勾選後，當你打開商店、銀行或者郵箱時，背包不會自動開啟或者關閉。"
L["If checked, your character will emote a thank you when a resurrection is automatically accepted."] = "勾選後，當你接受復活時會發送一個感謝的表情。"
L["If checked, your character will not perform the reading emote when you open the map."] = "勾選後，當你在查看地圖時，你的角色不再有一個閱讀的動作。"
L["If checked, your chat history will increase to 4096 lines.  If unchecked, the default will be used (128 lines).|n|nEnabling this option may prevent some chat text from showing during login."] = "勾選後，你的聊天歷史記錄會增漲至4096行。如果未被勾選，會保持在預設的128行。|n|n啟用這個設置可能會在登錄時會隱藏一些聊天訊息。"
L["If checked, your gear will be repaired automatically when you visit a suitable merchant.|n|nYou can hold the shift key down when you talk to a merchant to over-ride this setting."] = "勾選後，當你訪問修理商時將自動修理裝備。|n|n你可以訪問時按住Shift鍵，可以暫時忽略該功能。"
L["If checked, your low level characters will be allowed to join raid groups.|n|nNote that you cannot join a raid group directly with a low level character.  You have to join a party group first then the party leader should convert the party group to a raid group.|n|nReload your UI if the group leader is unable to convert the party group to a raid group."] = "勾選後，你的低等級角色會被允許加入到團隊中。|n|n你的低等級角色無法直接加入團隊。你必須先加入到隊伍中再切換成團隊才可以。|n|n當隊伍的隊長無法把隊伍轉換成團隊，請重載你的插件"
L["If checked, zone text will not be shown (eg. 'Ironforge')."] = "勾選後，區域文字不再顯示。"
L["If set to NONE, you can hold the shift key down to temporarily prevent automation."] = "如果設置為無，您可以按住shift鍵暫時阻止自動化。"
L["Increase chat history"] = "增加聊天歷史記錄"
L["Interface"] = "界面設置"
L["Invalid battle pet team parameter."] = "無效的戰寵隊伍參數。"
L["Invalid console variable."] = "無效控制台變量。"
L["Invalid parameter."] = "無效參數"
L["Invalid quest ID."] = "無效任務ID。"
L["Invalid taint level."] = "無效的汙染等級。"
L["Invite from whispers"] = "密語邀請"
L["Invite from Whispers"] = "密語邀請"
L["Isle of Quel'Danas"] = "奎爾達納斯之島"
L["Jade Forest"] = "翠玉林"
L["Kalimdor"] = "卡林多"
L["Krasarang Wilds"] = "喀撒朗蠻荒"
--Translation missing 
-- L["Krasarang Wilds (Alliance)"] = ""
--Translation missing 
-- L["Krasarang Wilds (Horde)"] = ""
L["Kun-Lai Summit"] = "崑萊峰"
--Translation missing 
-- L["Last Stand"] = ""
L["Leatrix Plus will not overwrite LeaPlusDB at next logout."] = "Leatrix Plus將會在下次登出時覆寫LeaPlus數據庫。"
--Translation missing 
-- L["Leaving Kezan"] = ""
--Translation missing 
-- L["Leaving the Wandering Isle"] = ""
L["Left"] = "左側"
L["Legion"] = "軍臨天下"
L["Lifetime honorable kills"] = "榮譽擊殺總數"
L["Lock the frame and make it non-interactive"] = "鎖定框架防止移動"
L["Lockout sharing"] = "成就共享鎖定"
L["Lost Isles & Kezan"] = "失落群島"
L["Maelstrom"] = "大漩渦"
L["Mail Text"] = "郵件文字"
L["Manage buff frame"] = "管理增益框架"
L["Manage effects"] = "管理特效"
L["Manage frames"] = "管理框架面板"
L["Manage tooltip"] = "管理提示訊息"
L["Managed by Leatrix Plus"] = "由Leatrix Plus管理"
L["Max camera zoom"] = "最大鏡頭縮放"
L["Mechanics"] = "特性設置"
L["Media"] = "音樂"
L["Memory Usage"] = "記憶體占用"
L["Merge tracking button with calendar button"] = "合併追蹤與日曆按鈕"
L["message shown."] = "顯示訊息。"
L["messages shown."] = "顯示訊息。"
L["Minimap"] = "小地圖"
L["Minimap scale"] = "小地圖尺寸"
L["Missing console variable."] = "缺少控制台變量。"
L["Missing mount name."] = "缺少坐騎名稱。"
L["Missing movie ID."] = "缺少動畫ID。"
L["Missing pet name."] = "缺少寵物名稱。"
L["Missing quest ID."] = "缺少任務ID。"
L["Missing sound file parameter."] = "缺少聲音檔案參數。"
L["Mists of Pandaria"] = "潘達利亞之謎"
L["Modifier key"] = "快捷按鍵"
L["Moonglade"] = "月光林地"
L["Mount Hyjal"] = "海加爾山"
L["Mount not found."] = "坐騎未找到。"
L["Move editbox to top"] = "輸入框移動至頂部"
L["Movie not playable."] = "動畫不可播放。"
L["Movie number"] = "動畫編號"
L["Movies"] = "動畫"
L["Mulgore"] = "莫高雷"
L["Music"] = "音樂"
--Translation missing 
-- L["My Very Own Castle (Alliance)"] = ""
--Translation missing 
-- L["My Very Own Castle (Horde)"] = ""
L["Nagrand"] = "納葛蘭"
L["Nagrand (Draenor)"] = "納葛蘭 (德拉諾)"
L["Netherstorm"] = "虛空風暴"
L["No help is available for this page."] = "此頁面沒有幫助訊息。"
L["No items with durability equipped."] = "沒有裝備有耐久度的物品。"
L["No tooltip showing."] = "目前沒有任何提示訊息。"
L["NONE"] = "無"
L["Northrend"] = "北裂境"
L["Nude"] = "脫光"
L["Outland"] = "外域"
L["Overall"] = "整體"
L["Pandaria"] = "潘達利亞"
L["Particle density"] = "粒子密度"
L["Party from friends"] = "好友組隊邀請"
L["Pet"] = "寵物"
L["Pet not found.  Only owned pets that are currently showing in the journal can be searched."] = "寵物未找到。只有顯示在寵物日誌中已收集的寵物才能搜尋。"
L["Player"] = "玩家框架"
L["Player Chain"] = "玩家邊框"
L["Press CTRL/C to copy."] = "按下CTRL/C來複製。"
L["Prevent special model animations"] = "防止特別模型動畫"
L["Quest completed."] = "任務完成。"
L["Quest not completed."] = "任務未完成。"
L["Quest Text"] = "任務訊息文字"
L["Queue from friends"] = "好友佇列申請"
L["Raid frame toggle"] = "切換團隊框架"
L["Raise the frame strata level"] = "提高框架層級"
L["RARE"] = "稀有"
L["RARE ELITE"] = "稀有精英"
L["Recent chat window"] = "最近聊天視窗"
L["Recent Chat Window"] = "最近聊天視窗"
--Translation missing 
-- L["Reincarnation of Alleria Windrunner"] = ""
--Translation missing 
-- L["Rejection of the Gift"] = ""
L["Release in PvP"] = "PvP自動釋放屍體"
L["Reload"] = "重載插件"
L["Remove raid restrictions"] = "移除團隊等級限制"
L["Repair Automatically"] = "自動修理裝備"
L["Repair automatically"] = "自動修理裝備"
L["Repair using guild funds if available"] = "優先使用公會資金"
L["Repaired for"] = "修理花費"
L["Requires UI reload."] = "需要重載插件"
L["Requires you to be interacting with Larana Drome.  She can be found at Scribes' Sacellum, Dalaran, Northrend."] = "需要你與拉蕾娜．德羅姆互動，她可以在北裂境的達拉然的雕銘師禮拜堂中找到。"
L["Reset"] = "重置"
L["Resize mail text"] = "重設郵件文字"
L["Resize quest text"] = "重設任務文字"
L["Resize the game world"] = "遊戲介面縮放"
L["Rested bubbles"] = "休息氣泡訊息"
--Translation missing 
-- L["Return to the Black Temple"] = ""
L["Reveal"] = "地圖全亮"
L["Reveal unexplored areas of the map"] = "顯示未探索區域"
L["Right"] = "右側"
L["Right-click to close."] = "右鍵點擊來關閉。"
--Translation missing 
-- L["Risking It All"] = ""
L["Ruins of Gilneas"] = "吉爾尼斯廢墟"
L["Scale"] = "尺寸"
L["Searing Gorge"] = "灼熱峽谷"
L["Select the settings that you want to use."] = "選擇你想啟用的設置。"
L["Sell junk automatically"] = "自動出售垃圾"
L["Sell Junk Automatically"] = "自動出售垃圾"
L["SELLING JUNK"] = "出售垃圾"
L["Settings"] = "設置"
L["Shaders"] = "陰影"
L["Shadowmoon Valley"] = "影月谷"
L["Shadowmoon Valley (Draenor)"] = "影月谷 (德拉諾)"
L["Sholazar Basin"] = "休拉薩盆地"
L["Show a brief summary of repair costs"] = "顯示修理花費"
L["Show a summary of items sold"] = "顯示售出垃圾的總價"
L["Show auction controls"] = "顯示拍賣行控制"
L["Show character addons"] = "顯示角色插件"
L["Show cooldowns"] = "顯示冷卻"
L["Show coordinates"] = "顯示坐標"
L["Show cursor coordinates at the top of the map"] = "在地圖上方顯示滑鼠所在坐標"
L["Show durability status"] = "顯示耐久度"
L["Show guild ranks for your guild"] = "顯示會階"
L["Show important error text"] = "顯示重要錯誤文字"
L["Show minimap button"] = "顯示小地圖按鈕"
L["Show nude and tabard buttons"] = "顯示脫裝與外袍按鈕"
L["Show pet save button"] = "顯示寵物儲存按鈕"
L["Show player chain"] = "顯示玩家邊框"
L["Show player frame in class color"] = "玩家框架"
L["Show quest updates"] = "顯示任務進度"
L["Show reveal checkbox at the top of the map"] = "地圖上方顯示切換復選框"
L["Show target frame and focus frame in class color"] = "目標及焦點框架"
L["Show the coordinates frame"] = "顯示坐標框架"
L["Show the spell ID in buff icon tooltips"] = "在增益圖標提示顯示法術ID"
L["Show the unit's target"] = "顯示目標的目標"
L["Show tooltips for the cooldown icons"] = "冷卻圖標顯示提示"
L["Show volume slider"] = "顯示音量控制"
--Translation missing 
-- L["Show Wowhead links"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Alliance)"] = ""
--Translation missing 
-- L["Siege of Orgrimmar (Horde)"] = ""
L["Silence rested emotes"] = "表情靜音"
L["Silithus"] = "希利蘇斯"
L["Silverpine Forest"] = "銀松森林"
L["Skip cinematics"] = "跳過過場動畫"
L["Social"] = "社交訊息"
L["Sold junk for"] = "賣出垃圾為"
L["Spell ID"] = "法術ID"
L["Spires of Arak"] = "阿拉卡山"
L["Stack"] = "層數"
L["Stonetalon Mountains"] = "石爪山脈"
L["Stop"] = "停止"
L["Storm Peaks"] = "風暴群山"
L["Stormheim"] = "斯鐸海姆"
L["Stranglethorn"] = "荊棘谷"
L["Support"] = "支援"
L["Suramar"] = "蘇拉瑪爾"
L["Swamp of Sorrows"] = "悲傷沼澤"
L["System"] = "系統設置"
L["Tabard"] = "隱藏戰袍"
L["Taint level: Basic (1)."] = "汙染等級：基本(1)"
L["Taint level: Disabled (0)."] = "汙染等級：停用(0)"
L["Taint level: Full (2)."] = "汙染等級：完整(2)"
L["Talador"] = "塔拉多爾"
L["Tanaan Jungle"] = "塔南森林"
L["Tanaris"] = "塔納利斯"
L["Target"] = "目標框架"
L["Target Tracking Disabled"] = "停用目標追蹤"
L["Target Tracking Enabled"] = "啟用目標追蹤"
L["Teldrassil"] = "泰達希爾"
L["Terokkar Forest"] = "泰洛卡森林"
L["Text"] = "文字訊息"
L["Text size"] = "字體尺寸"
L["Text Size"] = "字體尺寸"
L["Thank the player who resurrected you"] = "感謝復活你的玩家"
--Translation missing 
-- L["The Art of War"] = ""
--Translation missing 
-- L["The Battle for Shattrath"] = ""
--Translation missing 
-- L["The Battle of Thunder Pass"] = ""
L["The Burning Crusade"] = "燃燒的遠征"
--Translation missing 
-- L["The Dark Portal"] = ""
--Translation missing 
-- L["The Invasion Begins"] = ""
--Translation missing 
-- L["The King's Command"] = ""
L["This command will assign your current pet team and selected abilities.|n|nPress CTRL/C to copy the command then paste it into a macro or chat window with CTRL/V."] = "此指令會指派你當前的戰寵隊伍並選擇技能。|n|n按下Ctrl+C來複製，然後用Ctrl+V貼上到聊天視窗或是巨集中。"
L["This panel will close automatically if you enter combat."] = "此面板將在你進入戰鬥後自動關閉。"
L["Thousand Needles"] = "千針石林"
L["Timer"] = "計時框架"
L["Tirisfal Glades"] = "提里斯法林地"
L["To begin, choose an options page."] = "請選擇一個選項開始使用"
L["To move the recent chat window, hold CTRL and SHIFT then drag the window."] = "要移動最近聊天視窗，可按下CTRL與SHIFT鍵並拖動此視窗。"
L["To use the Find button, you need to deselect the Game Time filter."] = "使用搜索功能前，你要取消選擇游戲時間過濾器。"
L["Tol Barad (the PvP zone)"] = "托巴拉德戰場"
--Translation missing 
-- L["Tomb of Sargeras"] = ""
L["Tooltip"] = "提示訊息"
L["Tooltip scale"] = "訊息視窗大小"
L["Tooltip title color"] = "鼠標提示訊息顏色。"
L["Top"] = "頂部"
L["Townlong Steppes"] = "螳螂荒原"
L["Tracing started."] = "追蹤已開始。"
L["Tracing stopped."] = "追蹤已停止。"
L["Transparency"] = "透明度"
L["Twilight Highlands"] = "暮光高地"
L["Uldum"] = "奧丹姆"
L["Unclamp chat frame"] = "不限制視窗位置"
L["Un'Goro Crater"] = "安戈洛環形山"
L["Universal group color"] = "通用的隊伍著色"
L["Use arrow keys in chat"] = "允許使用方向鍵"
L["Use class colors in chat"] = "聊天使用職業顏色"
L["Use easy resizing"] = "使用簡單拉伸"
L["Use Leatrix Plus to move that frame."] = "使用Leatrix Plues來移動框架"
L["Use Leatrix Plus to reset that frame."] = "使用Leatrix Plues來重置框架"
L["Use the mousewheel to zoom in and out"] = "啟用滾輪縮放"
L["Valley of the Four Winds"] = "四風峽"
L["Val'sharah"] = "維爾薩拉"
L["Various"] = "各個"
L["Vashj'ir"] = "瓦許伊爾"
L["Vendors"] = "商店"
L["Version"] = "版本"
--Translation missing 
-- L["Victory at The Nighthold"] = ""
L["Video"] = "影像"
L["Viewport"] = "視窗背景"
L["Visibility"] = "可見性"
L["Wandering Isle"] = "漂流島"
L["Warlords of Draenor"] = "德拉諾之霸"
L["was automatically declined."] = "已經自動拒絕。"
L["Weather density"] = "天氣密度"
L["Welcome to Leatrix Plus."] = "歡迎使用Leatrix Plus"
L["Western Plaguelands"] = "西瘟疫之地"
L["Westfall"] = "西部荒野"
L["Wetlands"] = "濕地"
L["Whisper keyword"] = "密語關鍵詞"
L["Window height"] = "視窗高度"
L["Window width"] = "視窗寬度"
L["Wintergrasp"] = "冬握湖"
L["Winterspring"] = "冬泉谷"
L["World Map"] = "世界地圖"
L["World of Warcraft"] = "魔獸世界"
L["World State"] = "世界訊息框架"
L["Wrath of the Lich King"] = "巫妖王之怒"
--Translation missing 
-- L["Wrathgate"] = ""
L["You cannot do that in combat."] = "你無法在戰鬥中進行該項操作。"
L["You do not own this pet.  Only owned pets can be searched."] = "你未擁有此寵物。只有已收集的寵物能被搜尋。"
L["You have"] = "你有"
L["You need a battle pet team."] = "你需要一個戰寵隊伍。"
L["Your UI needs to be reloaded for some of the changes to take effect.|n|nYou don't have to click the reload button immediately but you do need to click it when you are done making changes and you want the changes to take effect."] = "你需要進行重載插件後才能使部分設置生效。|n|n你無需立即點擊重載插件按鈕，但是你完成設置並希望其生效時，必須點擊它。"
L["Your UI needs to be reloaded."] = "你的插件需要重新載入。"
--Translation missing 
-- L["Yrel and the Dark Star"] = ""
--Translation missing 
-- L["Ysera's Corruption"] = ""
L["Zangarmarsh"] = "贊格沼澤"
L["Zul'Drak"] = "祖爾德拉克"
L["Zygor addon not found."] = "你尚未安裝Zygor插件。"


end
