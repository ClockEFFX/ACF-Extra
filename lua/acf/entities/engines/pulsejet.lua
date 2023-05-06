local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("Pulsejet", {
	Name = "Pulsejet Engine",
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



ACF_DefineEngineold( "Pulsejet-Small", {
	name = "Pulsejet, Small, Transaxial",
	desc = "[ACFE] A small Pulsejet\n\nPulsejets deliver thrust and noise. lil' screamer.",
	model = "models/engines/pulsejets.mdl",
	sound = "acf_engines/pulsejetsmall.wav",
	category = "Pulsejet",
	fuel = "Multi",
	enginetype = "Turbine",
	weight = 100,
	torque = 1,
	flywheelmass = 0.001,
	idlerpm = 100,
	peakminrpm = 1,
	peakmaxrpm = 1,
	limitrpm = 1000,
	iselec = true,
	istrans = true,
	elecpower = 1,
	-- flywheeloverride = 1
} )

ACF_DefineEngineold( "Pulsejet-Medium", {
	name = "Pulsejet, Medium, Transaxial",
	desc = "[ACFE] A small Pulsejet\n\nPulsejets deliver thrust and noise. german V-1 approved.",
	model = "models/engines/pulsejetm.mdl",
	sound = "acf_engines/pulsejetmedium.wav",
	category = "Pulsejet",
	fuel = "Multi",
	enginetype = "Turbine",
	weight = 200,
	torque = 1,
	flywheelmass = 0.001,
	idlerpm = 100,
	peakminrpm = 1,
	peakmaxrpm = 1,
	limitrpm = 1000,
	iselec = true,
	istrans = true,
	elecpower = 1,
	-- flywheeloverride = 1
} )

ACF_DefineEngineold( "Pulsejet-Large", {
	name = "Pulsejet, Large, Transaxial",
	desc = "[ACFE] A small Pulsejet\n\nPulsejets deliver thrust and a lot of noise. best way to wake up your neighbourhood.",
	model = "models/engines/pulsejetl.mdl",
	sound = "acf_engines/pulsejetlarge.wav",
	category = "Pulsejet",
	fuel = "Multi",
	enginetype = "Turbine",
	weight = 400,
	torque = 1,
	flywheelmass = 0.001,
	idlerpm = 100,
	peakminrpm = 1,
	peakmaxrpm = 1,
	limitrpm = 1000,
	iselec = true,
	istrans = true,
	elecpower = 1,
	-- flywheeloverride = 1
} )
