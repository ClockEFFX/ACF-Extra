
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("R5", {
	Name = "Radial 5 Engine",
})




local function ACF_DefineEngineold(name, data)
	local fuel = {Petrol = true}
	if data.fuel == "Petrol" then
		 fuel		 = { Petrol = true }
	elseif data.fuel == "Diesel" then
		fuel		 = { Diesel = true }
	elseif data.fuel == "Electric" then
		fuel		 = { Electric  = true }
	elseif data.fuel == "Multi" then
		fuel		 = { Petrol  = true, Diesel = true}
	end
	Engines.RegisterItem(name, data.category, {
		Name		 = data.name,
		Description	 = data.desc,
		Model		 = data.model,
		Sound		 = data.sound,
		Fuel		 = fuel,
		Type		 = data.enginetype,
		Mass		 = data.weight,
		Torque		 = data.torque,
		FlywheelMass = data.flywheelmass,
		RPM = {
			Idle	= data.idlerpm,
			Limit	= data.limitrpm,
		},
		Preview = {
			FOV = 80,
		},
	})
end


-- Radial engines

ACF_DefineEngineold( "R5-2.1", {
	name = "R5 2.1L Petrol",
	desc = "[ACFE] A tiny, old worn-out radial.",
	model = "models/engines/radial5s.mdl",
	sound = "acf_engines/r5.wav",
	category = "R5",
	fuel = "Petrol",
	enginetype = "R5",
	weight = 133,
	torque = 99,
	flywheelmass = 0.10,
	idlerpm = 1100,
	peakminrpm = 3500,
	peakmaxrpm = 6600,
	limitrpm = 7000
} )

ACF_DefineEngineold( "R5-9.3", {
	name = "R5 9.3 Petrol",
	desc = "[ACFE] Mid range radial, thirsty and smooth",
	model = "models/engines/radial5m.mdl",
	sound = "acf_engines/r5.wav",
	category = "R5",
	fuel = "Petrol",
	enginetype = "R5",
	weight = 250,
	torque = 238,
	flywheelmass = 0.35,
	idlerpm = 650,
	peakminrpm = 2900,
	peakmaxrpm = 5500,
	limitrpm = 5750
} )

ACF_DefineEngineold( "R5-19.5", {
	name = "R5 19.5L Petrol",
	desc = "[ACFE] Massive American radial monster, destined for fighter aircraft and heavy tanks.",
	model = "models/engines/radial5b.mdl",
	sound = "acf_engines/r5.wav",
	category = "R5",
	fuel = "Petrol",
	enginetype = "R5",
	weight = 400,
	torque = 590,
	flywheelmass = 3,
	idlerpm = 550,
	peakminrpm = 2500,
	peakmaxrpm = 4200,
	limitrpm = 4350
} )
