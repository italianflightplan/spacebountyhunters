local PLUGIN = PLUGIN

//
local ACT
ACT = {}
ACT.uid = "aim"
ACT.name = "Aim"
ACT.desc = "When you aim, you have a higher chance to hit things, funny how that works."
ACT.category = "dexterity"
ACT.attackString = "takes aim"
ACT.CD = 2
ACT.dmg = 0
ACT.weaponMult = 1.5
ACT.mult = {
	["dexterity"] = 0.5,
}
ACT.reqStats = {
	["dexterity"] = 10,
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "cripple"
ACT.name = "Cripple"
ACT.desc = "Hit an enemy's weakpoints and slow them for 3 turns."
ACT.category = "dexterity"
ACT.attackString = "cripples their target"
ACT.CD = 5
ACT.dmg = 0
ACT.weaponMult = 2
ACT.reqStats = {
	["dexterity"] = 15,
}
ACT.effects = {
	[1] = {
		uid = ACT.uid,
		
		name = "Slow",
		effect = "slow",
		duration = 3,
		strength = 1,
		
		debuff = true,
	}
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "headshot"
ACT.name = "Headshot"
ACT.desc = "Aim for the head, high damage attack with a penalty to hit chance."
ACT.category = "dexterity"
ACT.attackString = "aims for the head"
ACT.CD = 3
ACT.dmg = 0
ACT.weaponMult = 3
ACT.dexterity = -15
ACT.mult = {
	["dexterity"] = 0.5,
}
ACT.reqStats = {
	["dexterity"] = 20,
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "burst"
ACT.name = "Burst-fire"
ACT.desc = "Fire a quick burst of shots from a firearm or similar weapon. Some shot dexterity is lost in the process."
ACT.category = "dexterity"
ACT.attackString = "fires a burst of shots"
ACT.CD = 2
ACT.dexterity = -10
ACT.dmg = 0
ACT.multi = 3
ACT.weaponMult = 1
ACT.reqStats = {
	["dexterity"] = 25,
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "mark"
ACT.name = "Mark"
ACT.desc = "Mark a target for death, increasing the damage they take from all sources."
ACT.category = "dexterity"
ACT.attackString = "marks a target"
ACT.CD = 4
ACT.reqStats = {
	["dexterity"] = 30,
}
ACT.effects = {
	[1] = {
		uid = ACT.uid,
		
		name = "Marked",
		effect = "res",
		duration = 3,
		strength = 1,
		
		res = {
			["dmg"] = -30,
		},
		
		debuff = true,
	}
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "snipe"
ACT.name = "Snipe"
ACT.desc = "Fire an incredibly accurate, high damaging shot."
ACT.category = "dexterity"
ACT.attackString = "snipes"
ACT.CD = 10
ACT.dmg = 0
ACT.weaponMult = 4
ACT.dexterity = 50
ACT.mult = {
	["dexterity"] = 1,
}
ACT.reqStats = {
	["dexterity"] = 35,
	["strength"] = 10
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "spotter"
ACT.name = "Spotter"
ACT.desc = "Increase dexterity of an ally substantially. Can be used on self."
ACT.category = "dexterity"
ACT.attackString = "improves the dexterity of their target"
ACT.CD = 6
ACT.reqStats = {
	["dexterity"] = 40,
}
ACT.effects = {
	[1] = {
		uid = ACT.uid,
		
		name = "Spotter",
		effect = "spotter",
		duration = 2,
		strength = 1,
		
		critC = 10,
		dexterity = 50,
		
		buff = true,
	}
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "exploit"
ACT.name = "Exploit Weakness"
ACT.desc = "Apply a self buff that guarantees your next attack is a critical hit."
ACT.category = "dexterity"
ACT.attackString = "prepares to fire upon an enemy's weakspot"
ACT.CD = 5
ACT.selfOnly = true
ACT.notarget = true
ACT.reqStats = {
	["dexterity"] = 45,
}
ACT.effects = {
	[1] = {
		uid = ACT.uid,
		
		name = "Exploit",
		effect = "exploit",
		duration = 1,
		strength = 1,
		
		hitsAttack = 1,
		
		critC = 100,
		critM = 0.5,
		
		buff = true,
	}
}
ACTS:Register(ACT)
//
local ACT
ACT = {}
ACT.uid = "barrage"
ACT.name = "Barrage"
ACT.desc = "Fire a whole ten times at an enemy with significantly decreased dexterity and damage. Can only be done with automatic weapons."
ACT.category = "dexterity"
ACT.attackString = "fires many, many times"
ACT.CD = 7
ACT.dmg = 0
ACT.weaponMult = 0.5
ACT.dexterity = -50
ACT.multi = 10
ACT.mult = {
	["dexterity"] = 0.5,
}
ACT.reqStats = {
	["dexterity"] = 50,
	["strength"] = 25
}
ACTS:Register(ACT)