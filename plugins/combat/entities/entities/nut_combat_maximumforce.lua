ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "Maximum Force"
ENT.Category = "NutScript - Combat (PAYDAY)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "Maximum Force"

ENT.model = "models/payday2/units/heavy_fbi_player.mdl"

ENT.WalkAnim = "walk_all"
ENT.RunAnim = "run_all_01"

--all attributes
ENT.attribs = {
	["dexterity"] = 20,
	["luck"] = 20,
	["intelligence"] = 20,
	["mind"] = 20,
	["strength"] = 20,
	["toughness"] = 20,
}
ENT.dmg = {
	["Standard"] = 25,
}

ENT.hp = 250
ENT.armor = 15

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