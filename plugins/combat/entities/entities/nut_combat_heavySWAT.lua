ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "Heavy SWAT"
ENT.Category = "NutScript - Combat (PAYDAY)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "Heavy SWAT"

ENT.model = "models/payday2/units/heavy_fbi_player.mdl"

ENT.WalkAnim = "walk_all"
ENT.RunAnim = "run_all_01"

--all attributes
ENT.attribs = {
	["toughness"] = 15,
	["dexterity"] = 15,
	["luck"] = 15,
	["intelligence"] = 15,
	["mind"] = 15,
	["strength"] = 15,
}

ENT.dmg = {
	["Standard"] = 20,
}

ENT.hp = 200
ENT.armor = 10

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