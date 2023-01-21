ENT.Type = "nextbot"
ENT.Base = "nut_combat"
ENT.PrintName = "Bulldozer"
ENT.Category = "NutScript - Combat (PAYDAY)"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.name = "Bulldozer"

ENT.model = "models/mark2580/payday2/pd2_bulldozer_combine.mdl"

ENT.WalkAnim = "WalkEasy All"
ENT.RunAnim = "RunALL"
ENT.IdleAnim = "Idle1"
ENT.AttackAnim = "ShootAR2alt"

--all attributes
ENT.attribs = {
	["body"] = 25,
	["dexterity"] = 25,
	["luck"] = 25,
	["intelligence"] = 25,
	["mind"] = 25,
	["strength"] = 25,
}

ENT.dmg = {
	["Standard"] = 35,
}

ENT.hp = 500
ENT.armor = 20

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

ENT.actions = {
	"aim",
}

function ENT:Initialize()
	self:basicSetup()
end