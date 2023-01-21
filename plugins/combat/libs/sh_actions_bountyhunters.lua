local PLUGIN = PLUGIN


//
local ACT
ACT = {}
ACT.uid = "aimedshot"
ACT.name = "Aimed Shot"
ACT.desc = "NPC"
ACT.category = "NPC"
ACT.hidden = true
ACT.attackString = "takes an aimed shot at"
ACT.CD = 4
ACT.dmg = 0
ACT.dmgT = "AP"
ACT.weaponMult = 1
ACTS:Register(ACT)

//
local ACT
ACT = {}
ACT.uid = "player_poisonsting"
ACT.name = "Poison Sting"
ACT.desc = "Sting with your tail."
ACT.category = "Monster"
ACT.attackString = "stabs with a venomous tail"
ACT.CD = 1
ACT.dmg = 0
ACT.dmgT = "Poison"
ACT.weaponMult = 0.7
ACT.effects = {
	[1] = {
		uid = ACT.uid,
		
		name = "Poison",
		effect = "poison",
		duration = 3,
		strength = 1,
		
		chance = 50,
		
		debuff = true,
	}
}

//
local COMMAND = {}
COMMAND.uid = "execute"
COMMAND.name = "Execution Shot"
COMMAND.desc = "Used in point blank firearm conditions where target is unlikely to be able to avoid it. You can use them when your target is being restrained, is incredibly incapacitated, stunned, or completely unable to move. You cannot use them just because you are very close or they got knocked down. You also cannot use this on targets that you yourself are restraining with grapple. It is generally assumed that in using this, you will hit your target. However, if you lose the roll, you can attribute it to a misfire, an erratic movement by the thing you're trying to execute, or incredibly bad luck on your part.\nRequires the Executioner trait."
COMMAND.category = "special"
COMMAND.trait = "executioner"
COMMAND.stats = {
	["str"] = 0.1,
	["accuracy"] = 0.4
}
COMMAND.mult = 2.5
COMMAND.attackString = "execution shot"
COMMAND.stringArt = "an "
COMMAND.rolls = function(base)
	local rolls = { 
		math.abs(base + math.random(-10,10))
	}
	
	return rolls
end