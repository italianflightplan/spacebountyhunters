ITEM.name = "Remote Explosive"
ITEM.desc = "Store in a cool, dry place."
ITEM.model = "models/weapons/neotokyo/w_detpack.mdl"
ITEM.class = "neotokyo_detpack"
ITEM.uniqueID = "neotokyo_detpack"
ITEM.slot = "bomb"
ITEM.width = 2
ITEM.height = 1
ITEM.price = 0
ITEM.flag = "v"
ITEM.category = "Weapons"

ALWAYS_RAISED["sh_remoteexplosive"] = true

--[[ ITEM.rarity = 10
ITEM.lootTags = {
	["weapon"] = true,
	["ranged"] = true,
	["firearm"] = true,
}
--]]
ITEM.dmg = {
	["AP"] = 200,
	["Standard"] = 150,
}

--[[ITEM.scaling = {
	["strength"] = 0.2,
	["dexterity"] = 0.5,
}
--]]