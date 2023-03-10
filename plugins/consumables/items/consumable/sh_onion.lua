ITEM.name = "Onion"
ITEM.desc = "A bulbous plant known to have layers."
ITEM.uniqueID = "food_onion"
ITEM.model = "models/props/de_inferno/crate_fruit_break_gib2.mdl"
ITEM.material = "models/props_c17/furnituremetal001a"
ITEM.quantity2 = 3
ITEM.price = 3

ITEM.attrib = { 
	["str"] = 2,
	["stm"] = 2,
	["accuracy"] = 2,
}

ITEM.loot = {
	["Consumable"] = true,
	["Food"] = true,
	["Vegetable"] = true,
}

ITEM.craft = {
	hp = 3,

	buffTbl = {
		attrib = {
			["str"] = 2,
			["stm"] = 2,
			["accuracy"] = 2,
		},
		
		res = {
			["Blind"] = -5,
			["Mind"] = 5,
			["Stun"] = 5,
			["Sleep"] = 5,
		}
	},
}

ITEM.iconCam = {
	pos = Vector(65, 55, 40),
	ang = Angle(25, 220, 0),
	fov = 4.25,
}
