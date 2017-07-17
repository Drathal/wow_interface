local addon = LibStub("AceAddon-3.0"):NewAddon("Refiller","AceEvent-3.0","AceConsole-3.0")

local _G = _G
_G.Refiller = addon

local L = LibStub("AceLocale-3.0"):GetLocale("Refiller")
local LBU = LibStub("LibBagUtils-1.0")


local floor,ceil,min,max = floor,ceil,min,max
local select,type,pairs,ipairs,next = select,type,pairs,ipairs,next
local tonumber,tostring = tonumber,tostring
local strmatch,strfind,format = strmatch,strfind,format
local assert=assert
local tinsert,sort=table.insert,table.sort
local GetTime=GetTime
-- GLOBALS: LibStub
-- GLOBALS: BANK_CONTAINER
-- GLOBALS: GetItemInfo,GetItemCount,GetContainerNumFreeSlots,PickupContainerItem,SplitContainerItem
-- GLOBALS: GetMerchantNumItems,GetMerchantItemInfo,BuyMerchantItem



function addon:OnInitialize()
	local defaults = {
		profile = {
			overstock = false,
			merchant = true,
			bank = true,
			refills = {},
		}
	}

	self.db = LibStub("AceDB-3.0"):New("RefillerDB", defaults --[[, char default]])

	local options
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("Refiller",function()
		if not options then	-- avoid table creation until necessary
			options = {	
				type = 'group',
				name="Refiller",	-- displayname in GUIs
				childGroups="tab",
				
				handler = self,
				set="SetDB",
				get="GetDB",
				
				args = {
					cmdlinetools  = {
						type="group",
						name="cmdlinetools",
						hidden = true,
						cmdHidden = false,
						inline = true,
						args = {
							add = {
								order=1,
								name = L["Add"], type = 'input',
							    desc = L["Add an item to the refill list. (Usage: /Refiller add [Item Link] #)"],
								get = false,
							    set = "AddRefillItem",
								usage = L["[Item Link] <number of items>"],
								guiHidden = true
							},
							addstack = {
								order=2,
								name = L["Add Stack"], type = 'input',
							    desc = L["Add an item to the refill list by stack. (Usage: /Refiller addstack [Item Link] #)"],
							    get = false,
								set = "AddRefillItemStack",
								usage = L["[Item Link] <number of stacks>"],
								guiHidden = true
							},
							del = {
								order=3,
								name = L["Remove"], type = 'input',
							    desc = L["Remove an item from the refill list. (Usage: /Refiller del [Item Link])"],
								get = false,
							    set = "RemoveRefillItem",
								usage = L["[Item Link]"],
								guiHidden = true
							},
							list = {
								order=4,
								name = L["List"], type = 'execute',
							    desc = L["List the items in the refill list."],
							    func = "List",
							},
						},
					},
					gui = {
						cmdHidden = true,
						type="description",
						name = "Use the command line to manage the list of items to be refilled. Use \"/Refiller help\"",
					},
					overstock = {
						order=200,
						name = L["Overstock"], type = 'toggle',
						desc = L["Toggle Overstocking.  If an item is sold in stacks and cannot meet your exact requested amount, you can opt to buy slightly more (Overstock)."],
					},
					merchant = {
						order=201,
						name = L["Process Merchant"], type = 'toggle',
						desc = L["Toggle Merchant Looting."],
					},
					bank = {
						order=202,
						name = L["Process Bank"], type = 'toggle',
						desc = L["Toggle Bank Looting."],
					},
					reset = {
						order=299,
						name = L["Clear"], type = 'execute',
					    desc = L["Clear the refill list completely."],
					    func = "ClearRefills",
					},
					profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db),
				}
			}
		end
		
		return options
	end)
	
	self:RegisterChatCommand("Refiller", "OnChatCommand", true)
	self:RegisterChatCommand("fr", "OnChatCommand", true)
end

addon.onSets={}
function addon:SetDB(info,v)
	local name = info[#info]
	self.db.profile[name]=v
	if self.onSets[name] then
		self[self.onSets[name]](self,v)
	end
end

function addon:GetDB(info)
	return self.db.profile[info[#info]]
end

function addon:OnChatCommand(input)
	LibStub("AceConfigCmd-3.0"):HandleCommand("Refiller", "Refiller", input)
end

addon.onSets["merchant"]="OnSet_merchant"
function addon:OnSet_merchant(v)
	self[v and "RegisterEvent" or "UnregisterEvent"](self,"MERCHANT_SHOW")
	self:Printf("Will %s refill from merchants.", v and "now" or "no longer")
end

addon.onSets["bank"]="OnSet_bank"
function addon:OnSet_bank(v)
	self[v and "RegisterEvent" or "UnregisterEvent"](self,"BANKFRAME_OPENED")
	self:Printf("Will %s refill from the bank.", v and "now" or "no longer")
end

addon.onSets["overstock"]="OnSet_overstock"
function addon:OnSet_overstock(v)
	self:Printf("Will %s overstock.", v and "now" or "no longer")
end


-- Okay, this is the register-for-an-event-inside-being-LoDed-from-the-same-event bullshit again
-- See http://code.google.com/p/tullamods/issues/detail?id=325
local frame=CreateFrame("Frame", "RefillerInit")
frame:Hide()
frame:SetScript("OnUpdate", function()
	frame:Hide()
	if addon.db.profile.merchant then
		addon:RegisterEvent("MERCHANT_SHOW")
	end
	if addon.db.profile.bank then
		addon:RegisterEvent("BANKFRAME_OPENED")
	end

	-- In case we get loaded by AddonLoader... (in which case we don't get to see the events ourself)
	if addon.db.profile.bank and select(2,GetContainerNumFreeSlots(BANK_CONTAINER)) then
		addon:BANKFRAME_OPENED()
	end

	if addon.db.profile.merchant and GetMerchantItemInfo(1) then
		addon:MERCHANT_SHOW()
	end
end)

function addon:OnEnable()
	frame:Show()
end

function addon:debug(msg)
	--self:Print("|cff0099CC"..msg.."|r")
end

--[[--------------------------------------------------------------------------------
  Merchant Processing
-----------------------------------------------------------------------------------]]

local lastMerchant=0
function addon:MERCHANT_SHOW()
	self:debug("Merchant Opened")
	if GetTime()<lastMerchant+2 then	-- Prevent taking everything twice when user doubleclicks NPC (items won't have landed in our bags from the first click yet)
		self:debug("Doubleclick? Exiting.")
		return
	end
	lastMerchant=GetTime()
	
	
	for itemID, amount in pairs(self.db.profile.refills) do
		local merchSlot = self:ItemInStock(itemID)
		if merchSlot then
			self:debug("Item Found in Merchant Slot #"..merchSlot)
			local amountInBags = GetItemCount(itemID)
			
			if amountInBags >= amount then
				self:debug("Already have enough in bags.")
			else
				self:debug("Refilling from "..amountInBags.. " to "..amount)
				local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture
					= GetItemInfo(itemID)

				if not itemStackCount then
					-- this happens all the time as of 4.0: self:Print("Err, something odd happened: the item '"..tostring(itemID).."' did not have a stack size?. This could be caused by you having just patched and the WoW item cache not yet having been updated (and in that case is perfectly normal). Try showing the item's tooltip to force an update from the server.")
					self:debug("  Couldn't get stack count for itemID "..tostring(itemID))
					return
				end

				local name, texture, price, quantity, numAvailable, isUsable, extendedCost 
					= GetMerchantItemInfo(merchSlot)
				self:debug("    name:"..tostring(name).." quantity:"..tostring(quantity).." extendedCost:"..tostring(extendedCost))
				if numAvailable<0 then numAvailable=9e9 end
				
				local toBuy = amount-amountInBags
				
				toBuy=min(toBuy,numAvailable)

				while toBuy>0 do
					local now = min(toBuy,itemStackCount)
					-- Non-money purchases can be quirky. not all, but some.
					-- We only buy those according to vendor quantity.
					if extendedCost and now~=quantity then  
						if now<quantity and not addon.db.profile.overstock then
							break
						end
						now=quantity
					end
					self:Printf("  %2u x %s", now, itemLink)
					BuyMerchantItem(merchSlot, now)
					toBuy=toBuy-now
				end
			end
		end
	end
end

function addon:ItemInStock(itemLink)
	self:debug("Searching for Item: "..itemLink)
	local itemName = GetItemInfo(itemLink)	-- becomes nil for uncached items but that's fine, the below check just silently fails
	local numItems = GetMerchantNumItems()
	for i = 1, numItems do
		if GetMerchantItemInfo(i) == itemName then		-- compares names
			return i
		end
	end
end



--[[--------------------------------------------------------------------------------
  Bank Processing
-----------------------------------------------------------------------------------]]

local lastBank = 0
function addon:BANKFRAME_OPENED()
	self:debug("Bank Opened")
	if GetTime()<lastBank+2 then		-- Prevent taking everything twice when user doubleclicks NPC (items won't have landed in our bags from the first click yet)
		self:debug("Doubleclick? Exiting.")
		return
	end
	lastBank=GetTime()
	
	for itemID,amount in pairs(self.db.profile.refills) do
		self:debug(itemID..": "..amount)
		local amountInBags = GetItemCount(itemID)
		local amountInBank = GetItemCount(itemID, true) - amountInBags
        local amountNeeded = amount - amountInBags
        if amountNeeded == 0 then
            self:debug("Already have enough in bags.")
        elseif amountNeeded < 0 then
            self:debug("Stocking to Bank.")
            self:StockBank(itemID,amountNeeded*-1)
        elseif amountInBank > 0 then
            if amountNeeded > amountInBank then
                amountNeeded = amountInBank 
            end
            self:debug(amountNeeded.." item(s) to be looted.")
            self:LootBank(itemID, min(amountNeeded, amountInBank))
        end
	end
end

local function linkDecode(link)
	if link then
		return select(3, link:find("Hitem[^|]+|h%[([^[]+)%]"))
	end
end

function addon:LootBank(itemID, amountNeeded)
	self:debug("Bank Looting Logic: "..itemID..": "..amountNeeded)
	
	while amountNeeded>0 do
		local bag,slot,size = LBU:FindSmallestStack("BANK", tonumber(itemID) or tonumber(strmatch(itemID,"item:([0-9]+)")))  -- won't find locked slots
		if not bag then
			self:debug("  - no (more) in bank.")
			break
		end
		self:debug("  found " .. size .. " in "..bag..","..slot)
		
		if size<=amountNeeded then
			self:debug("      looting entire stack")
			PickupContainerItem(bag,slot)
			LBU:PutItem("BAGS", size)
			amountNeeded = amountNeeded - size
		else
			self:debug("      splitting off "..amountNeeded)
			SplitContainerItem(bag, slot, amountNeeded)
			LBU:PutItem("BAGS", amountNeeded)
			amountNeeded = 0
		end
		
	end

end

function addon:StockBank(itemID, amountToStock)
    self:debug("Bank Stocking Logic: "..itemID..": "..amountToStock);
    
    while amountToStock > 0 do
        local bag,slot,size = LBU:FindSmallestStack("BAGS", tonumber(itemID) or tonumber(strmatch(itemID,"item:([0-9]+)")))  -- won't find locked slots
		if not bag then
			self:debug("  - no (more) in bags.")
			break
		end 
        self:debug("  found " .. size .. " in "..bag..","..slot)   
        
        if size<=amountToStock then
            self:debug("    stocking entire stack")
            PickupContainerItem(bag,slot)
            LBU:PutItem("BANK",size)
            amountToStock = amountToStock - size
        else
            self:debug("    splitting off "..amountToStock)
            SplitContainerItem(bag, slot, amountToStock)
                LBU:PutItem("BANK", amountToStock)
            amountToStock = 0    
        end
    end
end

--[[--------------------------------------------------------------------------------
  Command Handlers
-----------------------------------------------------------------------------------]]

local function setrefill(link,num)
	-- itemstrings now have the player's CURRENT level in them, so we have to take the itemstring apart for matching
	local substr = strmatch(link, "item:%d+:") or "["..link.."]"
	for k,v in pairs(addon.db.profile.refills) do
		if strfind(k, substr, 1, true) then
			addon.db.profile.refills[k] = num
			return k
		end
	end
	if num then
		addon.db.profile.refills[link] = num
	end
end

function addon:AddRefillItem(info, msg)
	--add an item to the refill list
	local link, num = strmatch(msg,"^%s*(|c.+|Hitem.+)%s(%d+)%s*$")
	if not link or not num then
		self:Print(L["Invalid input; input must be '<item> #'."])
		return
	end
	num = tonumber(num)
	setrefill(link,num)
	self:Printf(L["Added %s - Amount:%d"], link, num)
end

local function GetStackSize(item)
	local itemStack = select(8, GetItemInfo(item))
	return itemStack
end

function addon:AddRefillItemStack(info, msg)
	--add an item to the refill list by stack
	local link, num = strmatch(msg,"^%s*(|c.+|Hitem.+)%s(%d+)%s*$")
	if not link or not num then
		self:Print(L["Invalid input; input must be '<item> #'."])
		return
	end
	num = tonumber(num)
	num = num * GetStackSize(link)
	setrefill(link,num)
	self:Printf(L["Added %s - Amount:%d"], link, num)
end

function addon:RemoveRefillItem(info, msg)
	--remove an item from the refill list
	local item = setrefill(msg, nil)
	if item then
		self:Printf(L["Removed %s."], item)
	else
		self:Printf(L["Could not find '%s'."], msg)
	end
end

function addon:ClearRefills()
	--clear the refill list
	self.db.profile.refills = {}
	self:Print(L["Item List Cleared"])
end

local function sortLink(a,b)
	return strmatch(a,"|h%[(.*)%]|h") < strmatch(b,"|h%[(.*)%]|h")
end

function addon:List()
	--report back which items are currently on the refill list, and their quanitity
	self:Print(L["Refill List: "])
	local sorted = {}
	for itemID in pairs(self.db.profile.refills) do
		tinsert(sorted, itemID)
	end
	sort(sorted,sortLink)
	
	for _,itemID in ipairs(sorted) do
		self:Print("     "..itemID.." ("..self.db.profile.refills[itemID]..")")
	end
	if not next(self.db.profile.refills) then 
		self:Print(L["     None"]) 
	end
end


