ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "SWAT"
ENT.Category = "NutScript - Combat (PAYDAY)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "SWAT"

ENT.model = "models/payday2/units/blue_swat_player.mdl"

ENT.WalkAnim = "walk_all"
ENT.RunAnim = "run_all_01"

--all attributes
ENT.attribs = {
	["dexterity"] = 10,
	["luck"] = 10,
	["intelligence"] = 10,
	["mind"] = 10,
	["strength"] = 10,
	["toughness"] = 10,
}

ENT.dmg = {
	["Standard"] = 15,
}

ENT.hp = 150
ENT.armor = 7

ENT.res = {
	["Pierce"] = 0,
	["Slash"] = 0,
	["Blunt"] = 0,
	
	["Ichor"] = 0,
	["Blight"] = 0,
	["Shard"] = 0,
	["Distort"] = 0,
	
	["Fire"] = 0,
	["Explosion"] = 0,
	["Acid"] = 0,
	["Poison"] = 0,
	["Electric"] = 0,
}