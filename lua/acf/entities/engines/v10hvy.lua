
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("V10 Heavy", {
	Name = "V10 Heavy Engine",
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

ACF_DefineEngineold( "20.3-V10HVY", {
	name = "20.3L V10HVY Diesel",
	desc = "[ACFE] Oh yes V10 Heavy with 20.3 Liters",
	model = "models/engines/v10hvys.mdl",
	sound = "acf_engines/hugev10small.wav",
	category = "V10 Heavy",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 2200,
	torque = 8544,
	flywheelmass = 5.5,
	idlerpm = 200,
	peakminrpm = 450,
	peakmaxrpm = 1150,
	limitrpm = 1250
} )

ACF_DefineEngineold( "50.8-V10HVY", {
	name = "50.8L V10HVY Diesel",
	desc = "[ACFE] huge 50.8L V10 heavy engine made for fun",
	model = "models/engines/v10hvym.mdl",
	sound = "acf_engines/hugev10medium.wav",
	category = "V10 Heavy",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 4400,
	torque = 17088,
	flywheelmass = 10.6,
	idlerpm = 180,
	peakminrpm = 400,
	peakmaxrpm = 1000,
	limitrpm = 1100
} )

ACF_DefineEngineold( "110.2-V10HVY", {
	name = "110.2L V10HVY Diesel",
	desc = "[ACFE] Oh my god 110.2 liters in 10 cylinders.. this one must be used with multiple gearboxes to handle the torque",
	model = "models/engines/v10hvyb.mdl",
	sound = "acf_engines/hugev10large.wav",
	category = "V10 Heavy",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 9700,
	torque = 38440,
	flywheelmass = 15.7,
	idlerpm = 150,
	peakminrpm = 200,
	peakmaxrpm = 850,
	limitrpm = 900
} )
