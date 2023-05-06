
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("V6", {
	Name = "V6 Engine",
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




ACF_DefineEngineold( "14.0-V6-D", {
	name = "14.0L V6 Diesel",
	desc = "[ACFE]  This is what you get if you teach a redneck a little engineeeing, give him diesel fuel ,injectors ,a saw and a tank v12.",
	model = "models/engines/v6large.mdl",
	sound = "acf_engines/v6_diesellarge.wav",
	category = "V6",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 950,
	torque = 1800,
	flywheelmass = 5,
	idlerpm = 550,
	peakminrpm = 800,
	peakmaxrpm = 2400,
	limitrpm = 2850
} )

ACF_DefineEngineold( "7.8-V6-D", {
	name = "7.8L V6 Diesel",
	desc = "[ACFE]  This is what you get if you teach a redneck a little engineeeing, give him diesel fuel ,injectors ,a saw and a tank v12.",
	model = "models/engines/v6med.mdl",
	sound = "acf_engines/v8_dieselmedium2.wav",
	category = "V6",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 650,
	torque = 900,
	flywheelmass = 4,
	idlerpm = 650,
	peakminrpm = 1000,
	peakmaxrpm = 3000,
	limitrpm = 3250
} )

ACF_DefineEngineold( "3.0-V6-D", {
	name = "3L V6 Diesel",
	desc = "[ACFE]  This is what you get if you teach a redneck a little engineeeing, give him diesel fuel ,injectors ,a saw and a tank v12.",
	model = "models/engines/v6small.mdl",
	sound = "acf_engines/v8_dieselsmall.wav",
	category = "V6",
	fuel = "Diesel",
	enginetype = "GenericDiesel",
	weight = 300,
	torque = 500,
	flywheelmass = 3,
	idlerpm = 800,
	peakminrpm = 1100,
	peakmaxrpm = 3300,
	limitrpm = 3500
} )
