local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("B2", {
	Name = "Flat 2 Engine",
})

-- boxer 2 engines


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

ACF_DefineEngineold( "B2-1.2", {
	name = "B2 1.2L Flat 2 Petrol",
	desc = "[ACFE] Bike sized flat 2 engine, sporty and light",
	model = "models/engines/b2s.mdl",
	sound = "acf_engines/b2s.wav",
	category = "B2",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 35,
	torque = 120,
	flywheelmass = 0.08,
	idlerpm = 750,
	peakminrpm = 5500,
	peakmaxrpm = 7500,
	limitrpm = 8500
} )

ACF_DefineEngineold( "B2-2.3", {
	name = "B2 2.3L Flat 2 Petrol",
	desc = "[ACFE] Car grade flat 2, cuz it looks cool",
	model = "models/engines/b2m.mdl",
	sound = "acf_engines/b2m.wav",
	category = "B2",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 75,
	torque = 290,
	flywheelmass = 0.1,
	idlerpm = 900,
	peakminrpm = 4300,
	peakmaxrpm = 6500,
	limitrpm = 7200
} )

ACF_DefineEngineold( "B2-4.6", {
	name = "B2 4.6L Flat 2 Petrol",
	desc = "[ACFE] Aircraft grade flat 2",
	model = "models/engines/b2l.mdl",
	sound = "acf_engines/b2l.wav",
	category = "B2",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 160,
	torque = 480,
	flywheelmass = 0.7,
	idlerpm = 620,
	peakminrpm = 2800,
	peakmaxrpm = 5200,
	limitrpm = 6000
} )


