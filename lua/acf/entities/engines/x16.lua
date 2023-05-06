
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("X16", {
	Name = "X16 Engine",
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



ACF_DefineEngineold( "X16-6.4", {
	name = "X16 6.4L Petrol",
	desc = "[ACFE] A tiny, old worn-out X16 engine.",
	model = "models/engines/x16s.mdl",
	sound = "acf_engines/r7_petrolsmall.wav",
	category = "X16",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 360,
	torque = 620,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2600,
	peakmaxrpm = 4500,
	limitrpm = 4900
} )

ACF_DefineEngineold( "X16-24.8", {
	name = "X16 24.8L Petrol",
	desc = "[ACFE] Mid range X16 engine, thirsty and smooth",
	model = "models/engines/x16m.mdl",
	sound = "acf_engines/r7_petrolmedium.wav",
	category = "X16",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 1040,
	torque = 1440,
	flywheelmass = 0.45,
	idlerpm = 680,
	peakminrpm = 2200,
	peakmaxrpm = 3600,
	limitrpm = 3900
} )

ACF_DefineEngineold( "X16-57.2", {
	name = "X16 57.2L Petrol",
	desc = "[ACFE] Massive X16 monster, perfect for a vibrator.",
	model = "models/engines/x16b.mdl",
	sound = "acf_engines/r7_petrollarge.wav",
	category = "X16",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 3000,
	torque = 4050,
	flywheelmass = 2,
	idlerpm = 650,
	peakminrpm = 2100,
	peakmaxrpm = 3200,
	limitrpm = 3800
} )