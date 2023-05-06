
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("W16", {
	Name = "W16 Engine",
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


-- Inline 12 engines

-- Petrol

ACF_DefineEngineold( "8.4-W16", {
	name = "8.4L W16 Petrol",
	desc = "[ACFE] Oh yes W16 with 8.4 Liters",
	model = "models/engines/w16s.mdl",
	sound = "acf_engines/w16small.wav",
	category = "W16",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 550,
	torque = 1250,
	flywheelmass = 0.5,
	idlerpm = 1400,
	peakminrpm = 2500,
	peakmaxrpm = 7250,
	limitrpm = 8500
} )

ACF_DefineEngineold( "16.4-W16", {
	name = "16.4L W16 Petrol",
	desc = "[ACFE] Default 16.4L W16 engine made for fun",
	model = "models/engines/w16m.mdl",
	sound = "acf_engines/w16medium.wav",
	category = "W16",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 900,
	torque = 2450,
	flywheelmass = 0.6,
	idlerpm = 1250,
	peakminrpm = 1000,
	peakmaxrpm = 6250,
	limitrpm = 7600
} )

ACF_DefineEngineold( "32.8-W16", {
	name = "32.8L W16 Petrol",
	desc = "[ACFE] Oh my god 32.8 liters in 16 cylinders.. fuck the duck twice",
	model = "models/engines/w16b.mdl",
	sound = "acf_engines/w16large.wav",
	category = "W16",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 1700,
	torque = 3800,
	flywheelmass = 0.7,
	idlerpm = 1050,
	peakminrpm = 950,
	peakmaxrpm = 5500,
	limitrpm = 6250
} )
