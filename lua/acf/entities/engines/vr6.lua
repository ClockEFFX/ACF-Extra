
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("VR6", {
	Name = "VR6 Engine",
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



ACF_DefineEngineold( "VR6-2.2", {
	name = "VR6 2.2L Petrol",
	desc = "[ACFE] A tiny, old worn-out VR6 engine.",
	model = "models/engines/vr6s.mdl",
	sound = "acf_engines/vrs.wav",
	category = "VR6",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 120,
	torque = 140,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 3900,
	peakmaxrpm = 6400,
	limitrpm = 7000
} )

ACF_DefineEngineold( "VR6-4.8", {
	name = "VR6 4.8L Petrol",
	desc = "[ACFE] Mid range VR6 engine, thirsty and smooth",
	model = "models/engines/vr6m.mdl",
	sound = "acf_engines/vrm.wav",
	category = "VR6",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 300,
	torque = 360,
	flywheelmass = 0.2,
	idlerpm = 900,
	peakminrpm = 3100,
	peakmaxrpm = 5000,
	limitrpm = 5500
} )

ACF_DefineEngineold( "VR6-17.2", {
	name = "VR6 17.2L Petrol",
	desc = "[ACFE] Massive VR6 monster, perfect for nothing.",
	model = "models/engines/vr6b.mdl",
	sound = "acf_engines/vrl.wav",
	category = "VR6",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 850,
	torque = 1025,
	flywheelmass = 2.5,
	idlerpm = 750,
	peakminrpm = 2100,
	peakmaxrpm = 3900,
	limitrpm = 4100
} )

