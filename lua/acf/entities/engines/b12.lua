
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("B12", {
	Name = "Flat 12 Engine",
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



ACF_DefineEngineold( "B12-4.1", {
	name = "B12 4.1L Flat 12 Petrol",
	desc = "[ACFE] Car sized flat twelve engine, sporty and light",
	model = "models/engines/b12small.mdl",
	sound = "acf_engines/b6_petrolsmall.wav",
	category = "B12",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 250,
	torque = 386,
	flywheelmass = 0.08,
	idlerpm = 750,
	peakminrpm = 4300,
	peakmaxrpm = 6950,
	limitrpm = 7250
} )

ACF_DefineEngineold( "B12-8.0", {
	name = "B12 8.0 Flat 12 Petrol",
	desc = "[ACFE] Sports car grade flat twelve, renown for their smooth operation and light weight",
	model = "models/engines/b12medium.mdl",
	sound = "acf_engines/b6_petrolmedium.wav",
	category = "B12",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 380,
	torque = 528,
	flywheelmass = 0.1,
	idlerpm = 900,
	peakminrpm = 3500,
	peakmaxrpm = 6000,
	limitrpm = 6800
} )

ACF_DefineEngineold( "B12-17.0", {
	name = "B12 17.0L Flat 12 Petrol",
	desc = "[ACFE] Aircraft grade boxer with a high rev range biased powerband",
	model = "models/engines/b12large.mdl",
	sound = "acf_engines/b6_petrollarge.wav",
	category = "B12",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 1050,
	torque = 1470,
	flywheelmass = 1,
	idlerpm = 620,
	peakminrpm = 2500,
	peakmaxrpm = 4100,
	limitrpm = 4500
} )
