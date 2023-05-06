
local ACF     = ACF
local Engines = ACF.Classes.Engines

if not Engines.Register then
	Engines.Register = function(name,data) end
end
if not Engines.RegisterItem then
	Engines.RegisterItem  = function(name,cat,data) end
end

Engines.Register("V2", {
	Name = "V-Twin Engine",
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



-- V-Twin Diesel engines

ACF_DefineEngineold( "0.8-V2", {
	name = "836cc V-Twin Diesel",
	desc = "[ACFE] Twin cylinder Diesel bike engine, torquey for its size",
	model = "models/engines/v-twins2.mdl",
	sound = "acf_engines/vtwindiesels.wav",
	category = "V2",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 50,
	torque = 70,
	flywheelmass = 0.02,
	idlerpm = 600,
	peakminrpm = 3900,
	peakmaxrpm = 5500,
	limitrpm = 6000
} )

ACF_DefineEngineold( "1.6-V2", {
	name = "1600cc V-Twin Diesel",
	desc = "[ACFE] Large displacement vtwin diesel engine",
	model = "models/engines/v-twinm2.mdl",
	sound = "acf_engines/vtwindieselm.wav",
	category = "V2",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 80,
	torque = 105,
	flywheelmass = 0.03,
	idlerpm = 625,
	peakminrpm = 2900,
	peakmaxrpm = 4500,
	limitrpm = 5250
} )

ACF_DefineEngineold( "3.2-V2", {
	name = "3100cc V-Twin Diesel",
	desc = "[ACFE] Huge fucking Vtwin DIESEL 'MURRICA FUCK YEAH FUCK GREENPEACE",
	model = "models/engines/v-twinl2.mdl",
	sound = "acf_engines/vtwindiesell.wav",
	category = "V2",
	fuel = "Diesel",
	enginetype = "GenericPetrol",
	weight = 150,
	torque = 260,
	flywheelmass = 0.115,
	idlerpm = 350,
	peakminrpm = 2000,
	peakmaxrpm = 3500,
	limitrpm = 4000
} )
