local NUT_CVAR_LOWER2 = CreateClientConVar("nut_usealtlower", "1", true)

function SCHEMA:LoadFonts(font)
	surface.CreateFont("nutAmmoFont", {
		font = "Roboto Cn",
		size = 28,
		weight = 100
	})
	
	surface.CreateFont("nutObjDescFont", {
		font = "Roboto",
		size = 22,
		weight = 1000,
		shadow = true
	})
	
	surface.CreateFont("nutESPFont", {
		font = "Segoe UI",
		size = 17,
		weight = 1000,
		extended = true
	})
   
	surface.CreateFont("nut3D2DFont", {
		font = "Verdana",
		size = 2048,
		weight = 1000
	})

	surface.CreateFont("nutTitleFont", {
		font = "Verdana",
		size = ScreenScale(30),
		weight = 1000
	})
	
	surface.CreateFont("nutMenuButtonLightFont", {
		font = "Verdana",
		size = ScreenScale(14),
		extended = true,
		weight = 200
	})

	surface.CreateFont("nutToolTipText", {
		font = font,
		size = 20,
		weight = 500
	})

	surface.CreateFont("nutDynFontSmall", {
		font = font,
		size = ScreenScale(22),
		weight = 1000
	})

	surface.CreateFont("nutDynFontMedium", {
		font = font,
		size = ScreenScale(28),
		weight = 1000
	})

	surface.CreateFont("nutDynFontBig", {
		font = font,
		size = ScreenScale(48),
		weight = 1000
	})

	-- The more readable font.
	font = "Roboto Cn"

	surface.CreateFont("nutCleanTitleFont", {
		font = font,
		size = 200,
		weight = 1000
	})

	surface.CreateFont("nutHugeFont", {
		font = "Roboto Cn",
		size = 72,
		weight = 1000
	})

	surface.CreateFont("nutBigFont", {
		font = "Roboto Cn",
		size = 36,
		weight = 1000
	})

	surface.CreateFont("nutMediumFont", {
		font = "Roboto Cn",
		size = 25,
		weight = 1000
	})

	surface.CreateFont("nutMediumLightFont", {
		font = "Roboto Cn",
		size = 25,
		weight = 200
	})

	surface.CreateFont("nutGenericFont", {
		font = "Roboto Cn",
		size = 20,
		weight = 1000
	})
	
	surface.CreateFont("nutChatFont", {
		font = "Verdana",
		size = math.max(ScreenScale(6), 23),
		extended = true,
		weight = 250
	})

	surface.CreateFont("nutChatFontItalics", {
		font = "Verdana",
		size = math.max(ScreenScale(6), 23),
		extended = true,
		weight = 200,
		italic = true
	})

	surface.CreateFont("nutChatFontBold", {
		font = "Verdana Bold",
		size = math.max(ScreenScale(6), 23),
		extended = true,
		weight = 300,
	})

	surface.CreateFont("nutSmallFont", {
		font = font,
		size = math.max(ScreenScale(6), 17),
		weight = 500
	})

	surface.CreateFont("nutSmallBoldFont", {
		font = font,
		size = math.max(ScreenScale(8), 20),
		weight = 800
	})

	-- Introduction fancy font.
	font = "Roboto Cn"

	surface.CreateFont("nutIntroTitleFont", {
		font = font,
		size = 200,
		weight = 1000
	})

	surface.CreateFont("nutIntroBigFont", {
		font = font,
		size = 48,
		weight = 1000
	})

	surface.CreateFont("nutIntroMediumFont", {
		font = font,
		size = 28,
		weight = 1000
	})

	surface.CreateFont("nutIntroSmallFont", {
		font = font,
		size = 22,
		weight = 1000
	})

	surface.CreateFont("nutIconsSmall", {
		font = "fontello",
		size = 22,
		weight = 500
	})

	surface.CreateFont("nutIconsMedium", {
		font = "fontello",
		size = 28,
		weight = 500
	})

	surface.CreateFont("nutIconsBig", {
		font = "fontello",
		size = 48,
		weight = 500
	})
end

--disables kill feed
function SCHEMA:DrawDeathNotice() 
	return false
end

--disables ammo pickup notifications
function SCHEMA:HUDAmmoPickedUp() 
	return false
end

--disables weapon pickup notifications
function SCHEMA:HUDDrawPickupHistory()
	return false
end

--disables target identification (name percent health)
function SCHEMA:HUDDrawTargetID()
	return false
end

function SCHEMA:ShowPlayerCard(target, client)
	self.F3 = vgui.Create("DFrame")
	self.F3:SetSize(ScrW() * 0.35, ScrH() * 0.25)
	self.F3:Center()

	self.F3:SetTitle(target:Name())
	
	self.F3:MakePopup()
	
	local name = self.F3:Add("DLabel")
	name:SetFont("nutMediumFont")
	name:SetPos(ScrW() * 0.35 * 0.5, 30)
	name:SetText(target:Name())
	name:SizeToContents()
	name:SetTextColor(Color(255, 255, 255, 255))
	name:CenterHorizontal()
	--name:Dock(TOP)
	
	local scroll = self.F3:Add("DScrollPanel")
	scroll:SetPos(0, 50)
	scroll:SetSize(ScrW() * 0.35 - 40, ScrH() * 0.25 - 20)
	--scroll:Dock(TOP)
	scroll:Center()
	function scroll:Paint(w, h) end
	
	local desc = scroll:Add("DLabel")
	desc:SetPos(0, 50)
	desc:SetFont("nutSmallFont")
	desc:SetText(target:getChar():getDesc())
	desc:SetAutoStretchVertical(true)
	desc:SetWrap(true)
	desc:SetSize(ScrW() * 0.35, 10)
	desc:SetTextColor(Color(255, 255, 255, 255))
	desc:PerformLayout()
end

function SCHEMA:PlayerBindPress(client, bind, pressed)
	bind = bind:lower()
	
	if ((bind:find("use") or bind:find("attack")) and pressed) then
		if (bind:find("use") and pressed) then
			local data = {}
				data.start = client:GetShootPos()
				data.endpos = data.start + client:GetAimVector()*96
				data.filter = client
			local trace = util.TraceLine(data)
			local entity = trace.Entity
			if (IsValid(client) and entity:IsPlayer()) then
				hook.Run("ShowPlayerCard", entity )
			end
		end
	end
end

function SCHEMA:SetupQuickMenu(menu)

	local button = menu:addButton("Clear Icon Cache", function(panel, state)
		RunConsoleCommand("nut_flushicon", "1")
	end)
				
	menu:addSpacer()
	
	local button = menu:addCheck("Multi-Core Rendering", function(panel, state)
		if (state) then
			RunConsoleCommand("gmod_mcore_test", "1")
		else
			RunConsoleCommand("gmod_mcore_test", "0")
		end
	end, GetConVar("gmod_mcore_test"):GetBool())

end

function SCHEMA:CanCreateCharInfo(panel)
	local suppress = {}
	suppress.time = true
	
	return suppress
end