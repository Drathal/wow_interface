local AddOnName, Engine = ...

-- speed up local calls
local _G = _G
local MAX_PLAYER_LEVEL = _G.MAX_PLAYER_LEVEL
local UnitName = _G.UnitName
local UnitLevel = _G.UnitLevel
local UnitGUID = _G.UnitGUID
local GetRealmName = _G.GetRealmName
local GetScreenResolution = _G.GetScreenResolution
local GetScreenResolutions = _G.GetScreenResolutions
local DecodeResolution = _G.DecodeResolution
local GetCVar = _G.GetCVar
local GetBuildInfo = _G.GetBuildInfo
local CreateFrame = _G.CreateFrame

-- init addon
local AddOn = LibStub("AceAddon-3.0"):NewAddon(AddOnName, "AceEvent-3.0")

-- export to Global (kkthnx)
Engine[1] = AddOn
Engine[2] = {}
Engine[3] = {}
_G[AddOnName] = Engine 

-- Addon API
AddOn.addonName = AddOnName
AddOn.title = GetAddOnMetadata(AddOnName, "Title")
AddOn.version = GetAddOnMetadata(AddOnName, "Version")
AddOn.maxLevel = MAX_PLAYER_LEVEL
AddOn.Noop = function() return end
AddOn.name = UnitName("player")
AddOn.GUID = UnitGUID("player")
AddOn.level = UnitLevel("player")
AddOn.class = select(2, UnitClass("player"))
AddOn.realm = GetRealmName()
AddOn.nameRealm = AddOn.name.."-"..AddOn.realm
AddOn.resolution = ({GetScreenResolutions()})[GetCurrentResolution()] or GetCVar("gxWindowedResolution")
AddOn.screenWidth, AddOn.screenHeight = DecodeResolution(AddOn.resolution)
AddOn.woWPatch, AddOn.woWBuild, AddOn.woWPatchReleaseDate, AddOn.tocVersion = GetBuildInfo()
AddOn.woWBuild = tonumber(AddOn.woWBuild)

-- main Frame
AddOn.f = CreateFrame('Frame')
AddOn.marks = {}
AddOn.friends = {}