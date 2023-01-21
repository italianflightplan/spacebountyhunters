ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "First Responder"
ENT.Category = "NutScript - Combat (PAYDAY)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "First Responder"

ENT.model = "models/payday2/units/cop3_player.mdl"

ENT.WalkAnim = "walk_all"
ENT.RunAnim = "run_all_01"

--all attributes
ENT.attribs = {
	["toughness"] = 5,
	["dexterity"] = 5,
	["luck"] = 5,
	["intelligence"] = 5,
	["mind"] = 5,
	["strength"] = 5,
}

ENT.dmg = {
	["Standard"] = 10,
}

ENT.hp = 100
ENT.armor = 0

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