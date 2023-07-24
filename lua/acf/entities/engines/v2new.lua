local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "V2", {
	Name = "V-Twin Engine",
})


do
	
	-- diesel
	
	Engines.RegisterItem( "0.8-V2", "V2", {
		Name		 = "[ACFE] 836cc V-Twin Diesel",
		Description	 = "Twin-cylinder diesel bike engine, torquey for its size.",
		Model		 = "models/engines/v-twins2.mdl",
		Sound		 = "acf_engines/vtwindiesels.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 50,
		Torque		 = 70,
		FlywheelMass = 0.02,
		RPM = {
			Idle	= 600,
			Limit	= 6000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.6-V2", "V2", {
		Name		 = "[ACFE] 1600cc V-Twin Diesel",
		Description	 = "Medium displacement V-Twin diesel engine.",
		Model		 = "models/engines/v-twinm2.mdl",
		Sound		 = "acf_engines/vtwindieselm.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 80,
		Torque		 = 105,
		FlywheelMass = 0.03,
		RPM = {
			Idle	= 625,
			Limit	= 5250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "3.2-V2", "V2", {
		Name		 = "[ACFE] 3200cc V-Twin Diesel",
		Description	 = "Huge fuckin' V-Twin DIESEL 'MURRICA FUCK YEAH! FUCK GREENPEACE!",
		Model		 = "models/engines/v-twinl2.mdl",
		Sound		 = "acf_engines/vtwindiesell.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 150,
		Torque		 = 260,
		FlywheelMass = 0.115,
		RPM = {
			Idle	= 350,
			Limit	= 4000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
end