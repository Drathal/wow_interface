local K, C, L = unpack(select(2, ...))

C["DataBars"].ExperienceEnable = false
C["DataBars"].HonorEnable = false
C["DataBars"].ReputationEnable = false
C["DataBars"].ReputationWidth = 192
C["DataBars"].ExperienceFade = true
C["DataBars"].ArtifactEnable = false
C["DataBars"].ArtifactWidth = 192	
C["DataBars"].ExperienceWidth = 192

C["Misc"].BGSpam = true
C["Misc"].SlotDurability = true
C["Misc"].CombatState = true
C["Misc"].NoBanner = true
C["Misc"].UseGuildRepair = true
C["Misc"].EnhancedPvpMessages = true

C["General"].SpellTolerance = true
C["General"].ToggleButton = false
C["General"].DisableTutorialButtons = true
C["General"].WelcomeMessage = false
C["General"].BubbleFontSize = 10
C["General"].UseFlatTextures = true

C["Blizzard"].RaidTools = false
C["Blizzard"].TalkingHeadScale = 0.75
C["Blizzard"].ColorTextures = true
C["Blizzard"].TexturesColor = {0.31, 0.31, 0.31}

C["Bags"].Enable = false

C["ActionBar"].BottomBars = 3
C["ActionBar"].SplitBars = true
C["ActionBar"].ButtonSize = 32
C["ActionBar"].Macro = false
C["ActionBar"].EquipBorder = true
C["ActionBar"].Grid = false
C["ActionBar"].ToggleMode = false
C["ActionBar"].HideHighlight = true
C["ActionBar"].ButtonSpace = 3
C["ActionBar"].PetBarHorizontal = true

C["Loot"].AutoGreed = true
C["Loot"].ConfirmDisenchant = true

C["Automation"].AutoInvite = true
C["Automation"].Resurrection = true

C["Skins"].WeakAuras = true
C["Skins"].Skada = true
C["Skins"].Spy = true
C["Skins"].DBM = true

C["Tooltip"].Enable = false

C["Raidframe"].Enable = false

C["Unitframe"].Outline = true
C["Unitframe"].Party = false
C["Unitframe"].GCDBar = true
C["Unitframe"].CastbarTicks = true
C["Unitframe"].ClassPortraits = false
C["Unitframe"].ThreatValue = true
C["Unitframe"].CastbarWidth = 200
C["Unitframe"].Smooth = true

C["DataText"].Time24Hr = true
C["DataText"].System = false	
C["DataText"].Battleground = false

C["Auras"].BuffsPerRow = 15
C["Auras"].Consolidate = true

C["Nameplates"].Enable = false

C["Minimap"].ResetZoomTime = 5
C["Minimap"].Size = 200
C["Minimap"].ResetZoom = true

C["Cooldown"].Threshold = 0
C["Cooldown"].FontSize = 15
C["Cooldown"].Enable = false

C["Chat"].Outline = true
C["Chat"].TabsOutline = true
C["Chat"].DamageMeterSpam = true
C["Chat"].MessageFilter = true
C["Chat"].SpamFilter = true
C["Chat"].Width = 500

C["Position"].Minimap = {"TOPRIGHT", "UIParent", "TOPRIGHT", 0, -32}
C["Position"].Ticket = {"TOPLEFT", "UIParent", "TOPLEFT", 250, -32}
C["Position"].TalkingHead = {"TOP", "UIParent", "TOP", 0, -32}
C["Position"].RaidUtility = {"TOP", "UIParent", "TOP", -280, -32}
C["Position"].Alerts = {"TOP", "UIParent", "TOP", 0, -32}
C["Position"].AltPowerBar = {"TOP", "UIParent", "TOP", 0, -64}


-- Per class config (overwrites general)
-- Class type needs to be uppercase -- DRUID, MAGE ect ect...
if K.Class == "DRUID" then

end

-- Role type needs to be uppercase -- TANK, HEALER, CASTER, MELEE
if K.Role == "Tank" then

end

-- Per character name config (overwrite general and class)
-- Name needs to be case sensitive
if K.Name == "CharacterName" then

end

-- Per max character level config (overwrite general, class and name)
if K.Level ~= MAX_PLAYER_LEVEL then

end

-- CharacterName personal config
if (K.Name == "CharacterName") and (K.Realm == "RealmName") then

end

-- CharacterName personal config
if (K.Name == "CharacterName" or K.Name == "CharacterName" or K.Name == "CharacterName" or K.Name == "CharacterName") and (K.Realm == "RealmName") then

end