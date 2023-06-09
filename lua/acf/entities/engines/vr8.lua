
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("VR8", {
	Name = "VR8 Engine",
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



ACF_DefineEngineold( "VR8-5.7", {
	name = "VR8 5.7L Petrol",
	desc = "[ACFE] Car sized petrol engine, good power and mid range torque",
	model = "models/engines/vr8s.mdl",
	sound = "acf_engines/vrs.wav",
	category = "VR8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 260,
	torque = 320,
	flywheelmass = 0.15,
	idlerpm = 800,
	peakminrpm = 3000,
	peakmaxrpm = 5000,
	limitrpm = 6500
} )

ACF_DefineEngineold( "VR8-9.0", {
	name = "VR8 9.0L Petrol",
	desc = "[ACFE] Thirsty, giant VR8, for medium applications",
	model = "models/engines/vr8m.mdl",
	sound = "acf_engines/vrm.wav",
	category = "VR8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 400,
	torque = 460,
	flywheelmass = 0.25,
	idlerpm = 700,
	peakminrpm = 3100,
	peakmaxrpm = 5000,
	limitrpm = 5500
} )

ACF_DefineEngineold( "VR8-18.0", {
	name = "VR8 18.0L Petrol",
	desc = "[ACFE] American gasoline tank VR8, good overall power and torque and fairly lightweight",
	model = "models/engines/vr8b.mdl",
	sound = "acf_engines/vrl.wav",
	category = "VR8",
	fuel = "Petrol",
	enginetype = "GenericPetrol",
	weight = 850,
	torque = 1458,
	flywheelmass = 2.8,
	idlerpm = 600,
	peakminrpm = 2000,
	peakmaxrpm = 3300,
	limitrpm = 3800
} )