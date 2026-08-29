local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_V10HVY", {
	Name = "[ACFE] V10 Heavy Engine",
})


do
	
	-- diesel
	
	Engines.RegisterItem( "20.3-V10HVY", "ACFE_V10HVY", {
		Name		 = "20.3L V10 Heavy Diesel",
		Description	 = "20 Liters of Heavy V10, Hell yeah.",
		Model		 = "models/engines/v10hvys.mdl",
		Sound		 = "acf_extra/hugev10small.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 2200,
		Torque		 = 8544,
		FlywheelMass = 5.5,
		RPM = {
			Idle	= 200,
			Limit	= 1250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "50.8-V10HVY", "ACFE_V10HVY", {
		Name		 = "50.8L V10 Heavy Diesel",
		Description	 = "Huge 50 Liter Heavy V10, Insert 'yo mamma' joke here.",
		Model		 = "models/engines/v10hvym.mdl",
		Sound		 = "acf_extra/hugev10medium.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 4400,
		Torque		 = 17088,
		FlywheelMass = 10.6,
		RPM = {
			Idle	= 180,
			Limit	= 1100,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "110.2-V10HVY", "ACFE_V10HVY", {
		Name		 = "110.2L V10 Heavy Diesel",
		Description	 = "We are approaching the Torque Singularity.",
		Model		 = "models/engines/v10hvyb.mdl",
		Sound		 = "acf_extra/hugev10large.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 9700,
		Torque		 = 38440,
		FlywheelMass = 10.6,
		RPM = {
			Idle	= 150,
			Limit	= 900,
		},
		Preview = {
			FOV = 80,
		},
	})

end