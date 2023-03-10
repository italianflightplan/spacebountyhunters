local workshopIDs = { 
	--addons
	
	--132470017, --lantern
	--121438260, --glowsticks
	--415143062, --tfa base
	--296202013, --prosp content 1
	--575907820, --prosp content decals
	--795055947, --blood and gore 4
	--479464165, --pac gear
	--380225333, --nextbot zombies 2.0
	--296806391, --nextbot zombies 2.0 (zombie survival)
	--246756300, --3d stream radio
	--609281761, --prone mod models
	--106867422, --classic light stool
	--727161410, --witcher gates
	--685130934, --serverguard content
	--774729099, --respite npc content
	--1450252748, --respite extra content
	--771487490, --simfphys vehicles
	--831680603, --simfphys armed vehicles
	--207739713, --nutscript content
	--880425071, --respite content 1
	--880423690, --respite content 2
	--880417421, --respite content 3
	--899354382, --respite effects
	--1076723138, --tfa content 1
	--1076732010, --tfa content 2
	--1076706011, --tfa content 3
	--756545326, --gunsmoke community models

	--tnb
	
	--1775190034, --tnb 1
	--1775195041, --tnb 3
	--1775197024, --tnb 2
	--1775198239, --tnb 4
	--1775187340, --tnb items
	--1775186802, --tnb combine

	--maps
	
	--215338015, --rp_v_torrington content
	--124358552, --infinite concrete
}

for k, v in pairs(workshopIDs) do
	--resource.AddWorkshop(v)
end

function SCHEMA:OnCharCreated(client, character)

	local inventory = character:getInv()

	if (inventory) then		
		local items = {}
	
		if (character:getFaction() == FACTION_RUNNER) then
			items = {
				"melee_flashlight"
			}
		elseif (character:getFaction() == FACTION_SURVIVOR) then

		elseif (character:getFaction() == FACTION_PLASTIC) then
			items = {
				"book_newchar_plastic"
			}

			timer.Simple(0.5, function()
				local traitData = character:getData("traits", {})
				traitData["pla"] = 1
				character:setData("traits", traitData, false, player.GetAll())
			end)
		elseif (character:getFaction() == FACTION_ABER) then
			items = {
				"food_banana"
			}
		end
		
		local i = 20
		for k, v in pairs(items) do
			timer.Simple(i + k, function()
				inventory:add(v)
			end)
		end
	end

end 

function SCHEMA:PrePlayerLoadedChar(client, character, currentChar)
	if (character:getFaction() == FACTION_PLASTIC) then --material for plastic faction
		client:SetMaterial("phoenix_storms/mrref2")
	else
		client:SetMaterial("") --necessary for char swapping from plastic to anything else
	end
end

--if players can spawn effect props or not
function SCHEMA:PlayerSpawnEffect(client, weapon, info)
	return client:IsAdmin() or client:getChar():hasFlags("E")
end

--turns off sprays
function SCHEMA:PlayerSpray(client)
    return true
end

function SCHEMA:Initialize()
	--game.ConsoleCommand("net_maxfilesize 64\n");
	game.ConsoleCommand("sv_kickerrornum 0\n");

	game.ConsoleCommand("sv_allowupload 0\n");
	game.ConsoleCommand("sv_allowdownload 0\n");
	game.ConsoleCommand("sv_allowcslua 0\n");
end

--[[
function SCHEMA:PostPlayerLoadout(client)
	-- Reload All Attrib Boosts
	local char = client:getChar()

	if (char:getInv()) then
		for k, v in pairs(char:getInv():getItems()) do
			v:call("onLoadout", client)

			if (v:getData("equip", false) and (v.attribBoosts or v:getData("attrib", nil))) then
				timer.Simple(1, function()
					if(v.buffRefresh) then
						v.buffRefresh(v, client)
					end
				end)
			end
		end
	end
end
--]]

function SCHEMA:PlayerSpawnRagdoll(client)
	if(client and client:IsPlayer()) then
		if (client:getChar() and client:getChar():hasFlags("r")) then
			return true
		end

		return false
	end
end

--someone gave me this but I don't think it does anything the way it is now
function SCHEMA:Think()
	if((self.NextDBRefresh or 0) < CurTime()) then
		nut.db.query("SELECT 1 + 1", onSuccess)
			
		self.NextDBRefresh = CurTime() + 10
	end
end