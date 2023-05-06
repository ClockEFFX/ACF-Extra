
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("I4", {
	Name = "Inline 4 Engine",
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




ACF_DefineEngineold( "2.6-I2", {
	name = "2.6L I4 Petrol",
	desc = "[ACFE] Short block engine for light utility use",
	model = "models/engines/inline4m.mdl",
	sound = "acf_engines/i4_petrolmedium2.wav",
	category = "I4",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 110,
	torque = 165,
	flywheelmass = 0.2,
	idlerpm = 1000,
	peakminrpm = 600,
	peakmaxrpm = 2200,
	limitrpm = 2650
} )


-- Diesel

ACF_DefineEngineold( "0.7-I2", {
	name = "0.7L I4 Diesel",
	desc = "[ACFE] ATV grade 2-banger, enormous rev band but a choppy idle, great for light utility work",
	model = "models/engines/inline4s.mdl",
	sound = "acf_engines/i4_diesel2.wav",
	category = "I4",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 45,
	torque = 130,
	flywheelmass = 0.2,
	idlerpm = 650,
	peakminrpm = 900,
	peakmaxrpm = 2600,
	limitrpm = 3100
} )

ACF_DefineEngineold( "1.8-I2", {
	name = "1.8L I4 Diesel",
	desc = "[ACFE] Medium utility grade I2 diesel, for tractors",
	model = "models/engines/inline4m.mdl",
	sound = "acf_engines/i4_dieselmedium.wav",
	category = "I4",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 150,
	torque = 230,
	flywheelmass = 1,
	idlerpm = 700,
	peakminrpm = 1300,
	peakmaxrpm = 3700,
	limitrpm = 3900
} )

ACF_DefineEngineold( "1.9-I4", {
	name = "1.9L I4 Diesel",
	desc = "Small and light diesel, for low power applications requiring a wide powerband",
	model = "models/engines/inline4s.mdl",
	sound = "acf_engines/i4_diesel2.wav",
	category = "I4",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 110,
	torque = 180,
	flywheelmass = 0.21,
	idlerpm = 630,
	peakminrpm = 950,
	peakmaxrpm = 2900,
	limitrpm = 4700
} )

ACF_DefineEngineold( "7.3-I2", {
	name = "7.3L I4 Diesel",
	desc = "[ACFE] Light tank duty engine, compact yet grunts hard",
	model = "models/engines/inline4b.mdl",
	sound = "acf_engines/i4_diesellarge.wav",
	category = "I4",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 450,
	torque = 900,
	flywheelmass = 5,
	idlerpm = 650,
	peakminrpm = 750,
	peakmaxrpm = 1900,
	limitrpm = 2100
} )