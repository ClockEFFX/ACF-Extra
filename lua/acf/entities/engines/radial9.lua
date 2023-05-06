
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("R9", {
	Name = "Radial 9 Engine",
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

ACF_DefineEngineold( "R9-4.1", {
	name = "R9 4.1L Petrol",
	desc = "[ACFE] A tiny, old worn-out radial.",
	model = "models/engines/radial9s.mdl",
	sound = "acf_engines/r9b.wav",
	category = "R9",
	fuel = "Petrol",
	enginetype = "R9",
	weight = 150,
	torque = 450,
	flywheelmass = 0.15,
	idlerpm = 700,
	peakminrpm = 2700,
	peakmaxrpm = 4400,
	limitrpm = 4800
} )

ACF_DefineEngineold( "R9-18.5", {
	name = "R9 18.5 Petrol",
	desc = "[ACFE] Mid range radial, thirsty and smooth",
	model = "models/engines/radial9m.mdl",
	sound = "acf_engines/r9m.wav",
	category = "R9",
	fuel = "Petrol",
	enginetype = "R9",
	weight = 560,
	torque = 1500,
	flywheelmass = 0.45,
	idlerpm = 700,
	peakminrpm = 1500,
	peakmaxrpm = 2150,
	limitrpm = 2200
} )

ACF_DefineEngineold( "R9-36.5", {
	name = "R9 36.5L Petrol",
	desc = "[ACFE] Massive American radial monster, destined for fighter aircraft and heavy tanks.",
	model = "models/engines/radial9b.mdl",
	sound = "acf_engines/r9s.wav",
	category = "R9",
	fuel = "Petrol",
	enginetype = "R9",
	weight = 1200,
	torque = 3205,
	flywheelmass = 1,
	idlerpm = 730,
	peakminrpm = 500,
	peakmaxrpm = 2200,
	limitrpm = 2300
} )
