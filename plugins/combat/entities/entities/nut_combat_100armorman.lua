ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "SWAT"
ENT.Category = "NutScript - Combat (Testing)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "100 Armor"

ENT.model = "models/player/gasmask.mdl"

ENT.WalkAnim = "walk_all"
ENT.RunAnim = "run_all_01"

--all attributes
ENT.attribs = {
	["dexterity"] = 0,
	["luck"] = 0,
	["intelligence"] = 0,
	["mind"] = 0,
	["strength"] = 0,
	["toughness"] = 0,
}

ENT.dmg = {
	["Standard"] = 15,
}

ENT.hp = 100
ENT.armor = 100

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