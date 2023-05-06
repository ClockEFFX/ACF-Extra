
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("X8", {
	Name = "X8 Engine",
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



ACF_DefineEngineold( "X8-3.2", {
	name = "X8 3.2L Petrol",
	desc = "[ACFE] A tiny, old worn-out X8 engine.",
	model = "models/engines/x8s.mdl",
	sound = "acf_engines/r7_petrolsmall.wav",
	category = "X8",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 179,
	torque = 310,
	flywheelmass = 0.10,
	idlerpm = 710,
	peakminrpm = 2600,
	peakmaxrpm = 4500,
	limitrpm = 4900
} )

ACF_DefineEngineold( "X8-12.4", {
	name = "X8 12.4L Petrol",
	desc = "[ACFE] Mid range X8 engine, thirsty and smooth",
	model = "models/engines/x8m.mdl",
	sound = "acf_engines/r7_petrolmedium.wav",
	category = "X8",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 520,
	torque = 720,
	flywheelmass = 0.45,
	idlerpm = 680,
	peakminrpm = 2200,
	peakmaxrpm = 3600,
	limitrpm = 3900
} )

ACF_DefineEngineold( "X8-25.6", {
	name = "X8 25.6L Petrol",
	desc = "[ACFE] Massive X8 monster, perfect for a vibrator.",
	model = "models/engines/x8b.mdl",
	sound = "acf_engines/r7_petrollarge.wav",
	category = "X8",
	fuel = "Petrol",
	enginetype = "Radial",
	weight = 1500,
	torque = 2025,
	flywheelmass = 2,
	idlerpm = 650,
	peakminrpm = 2100,
	peakmaxrpm = 3200,
	limitrpm = 3800
} )