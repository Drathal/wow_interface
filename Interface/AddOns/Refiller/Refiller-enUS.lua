﻿local L = LibStub("AceLocale-3.0"):NewLocale("Refiller", "enUS", true)
if not L then return end

L["Add"] = true
L["Add an item to the refill list. (Usage: /Refiller add [Item Link] #)"] = true
L["[Item Link] <number of items>"] = true
L["Add Stack"] = true
L["Add an item to the refill list by stack. (Usage: /Refiller addstack [Item Link] #)"] = true
L["[Item Link] <number of stacks>"] = true
L["Remove"] = true
L["Remove an item from the refill list. (Usage: /Refiller del [Item Link])"] = true
L["[Item Link]"] = true
L["Overstock"] = true
L["Toggle Overstocking.  If an item is sold in stacks and cannot meet your exact requested amount, you can opt to buy slightly more (Overstock)."] = true
L["Process Merchant"] = true
L["Toggle Merchant Looting."] = true
L["Process Bank"] = true
L["Toggle Bank Looting."] = true
L["Clear"] = true
L["Clear the refill list completely."] = true
L["List"] = true
L["List the items in the refill list."] = true
L["Added %s - Amount:%d"] = true
L["Removed %s."] = true
L["Item List Cleared"] = true
L["Refill List: "] = true
L["     None"] = true
L["Invalid input; input must be '<item> #'."] = true
L["Could not find '%s'."] = true
