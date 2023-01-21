ITEM.name = "Melon Soda"
ITEM.desc = "An aluminium can filled with a carbonated soda."
ITEM.uniqueID = "food_melon_soda"
ITEM.model = "models/props_junk/popcan01a.mdl"
ITEM.material = "phoenix_storms/pack2/interior_sides"
ITEM.quantity2 = 2
ITEM.price = 5
ITEM.container = "j_empty_soda_can"
ITEM.sound = "npc/barnacle/barnacle_gulp1.wav"

ITEM.attrib = { 
	["end"] = 2,
	["stm"] = 1, 
}

ITEM.loot = {
	["Consumable"] = true,
	["Drink"] = true,
	["Soda"] = true,
}

ITEM.craft = {
	hp = 4,

	buffTbl = {
		attrib = {
			["end"] = 2,
			["stm"] = 1,
		},
		
		res = {
			["Sleep"] = 10,
			["Slow"] = 10,
		}
	},
}

ITEM.iconCam = {
	pos = Vector(-200, 0, 0),
	ang = Angle(0, -0, 0),
	fov = 2.5,
}