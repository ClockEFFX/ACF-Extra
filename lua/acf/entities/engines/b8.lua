
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("B8", {
	Name = "Flat 8 Engine",
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



ACF_DefineEngineold( "B8-3.8", {
	name = "B8 3.8L Flat 8 Petrol",
	desc = "[ACFE] Car sized flat eight engine, sporty and light",
	model = "models/engines/b8small.mdl",
	sound = "acf_engines/b6_petrolsmall.wav",
	category = "B8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 140,
	torque = 236,
	flywheelmass = 0.08,
	idlerpm = 750,
	peakminrpm = 4300,
	peakmaxrpm = 6950,
	limitrpm = 7250
} )

ACF_DefineEngineold( "B8-6.0", {
	name = "B8 5.0 Flat 8 Petrol",
	desc = "[ACFE] Sports car grade flat eight, renown for their smooth operation and light weight",
	model = "models/engines/b8medium.mdl",
	sound = "acf_engines/b6_petrolmedium.wav",
	category = "B8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 260,
	torque = 388,
	flywheelmass = 0.1,
	idlerpm = 900,
	peakminrpm = 3500,
	peakmaxrpm = 6000,
	limitrpm = 6800
} )

ACF_DefineEngineold( "B8-12.0", {
	name = "B8 10.0L Flat 8 Petrol",
	desc = "[ACFE] Aircraft grade boxer with a high rev range biased powerband",
	model = "models/engines/b8large.mdl",
	sound = "acf_engines/b6_petrollarge.wav",
	category = "B8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 680,
	torque = 970,
	flywheelmass = 1,
	idlerpm = 620,
	peakminrpm = 2500,
	peakmaxrpm = 4100,
	limitrpm = 4500
} )
