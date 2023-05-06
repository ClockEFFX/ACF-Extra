
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("R3", {
	Name = "Radial 3 Engine",
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

ACF_DefineEngineold( "R3-1.2", {
	name = "R3 1.2L Petrol",
	desc = "[ACFE] A tiny, old worn-out radial.",
	model = "models/engines/radial3s.mdl",
	sound = "acf_engines/r7_petrolsmall.wav",
	category = "R3",
	fuel = "Petrol",
	enginetype = "R3",
	weight = 70,
	torque = 120,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2800,
	peakmaxrpm = 4600,
	limitrpm = 5000
} )

ACF_DefineEngineold( "R3-5.0", {
	name = "R3 5.0 Petrol",
	desc = "[ACFE] Mid range radial, thirsty and smooth",
	model = "models/engines/radial3m.mdl",
	sound = "acf_engines/r7_petrolmedium.wav",
	category = "R3",
	fuel = "Petrol",
	enginetype = "R3",
	weight = 240,
	torque = 340,
	flywheelmass = 0.35,
	idlerpm = 700,
	peakminrpm = 2300,
	peakmaxrpm = 3800,
	limitrpm = 4000
} )

ACF_DefineEngineold( "R3-11.0", {
	name = "R3 11.0L Petrol",
	desc = "[ACFE] Massive American radial monster, destined for aircraft and heavy things.",
	model = "models/engines/radial3b.mdl",
	sound = "acf_engines/r7_petrollarge.wav",
	category = "R3",
	fuel = "Petrol",
	enginetype = "R3",
	weight = 600,
	torque = 1025,
	flywheelmass = 3,
	idlerpm = 760,
	peakminrpm = 2200,
	peakmaxrpm = 3400,
	limitrpm = 3800
} )
