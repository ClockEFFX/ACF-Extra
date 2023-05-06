
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("VR4", {
	Name = "VR4 Engine",
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



ACF_DefineEngineold( "VR4-1.6", {
	name = "VR4 1.6L Petrol",
	desc = "[ACFE] A tiny, old worn-out VR4 engine.",
	model = "models/engines/vr4s.mdl",
	sound = "acf_engines/vrs.wav",
	category = "VR4",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 90,
	torque = 170,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2600,
	peakmaxrpm = 4500,
	limitrpm = 4900
} )

ACF_DefineEngineold( "VR4-6.2", {
	name = "VR4 6.2 Petrol",
	desc = "[ACFE] Mid range VR4 engine, thirsty and smooth",
	model = "models/engines/vr4m.mdl",
	sound = "acf_engines/vrm.wav",
	category = "VR4",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 290,
	torque = 370,
	flywheelmass = 0.45,
	idlerpm = 680,
	peakminrpm = 2200,
	peakmaxrpm = 3600,
	limitrpm = 3900
} )

ACF_DefineEngineold( "VR4-14.8", {
	name = "VR4 14.8L Petrol",
	desc = "[ACFE] Massive VR4 monster, perfect for nothing.",
	model = "models/engines/vr4b.mdl",
	sound = "acf_engines/vrl.wav",
	category = "VR4",
	fuel = "Petrol",
	enginetype = "GenericDiesel",
	weight = 800,
	torque = 1225,
	flywheelmass = 2,
	idlerpm = 650,
	peakminrpm = 2100,
	peakmaxrpm = 3200,
	limitrpm = 3800
} )

