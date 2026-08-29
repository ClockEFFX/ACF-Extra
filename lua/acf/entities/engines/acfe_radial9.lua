local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_R9", {
	Name = "[ACFE] Radial 9 Engine",
})


do
	
	-- Petrol
	
	Engines.RegisterItem( "4.1-R9", "ACFE_R9", {
		Name		 = "4.1L Radial 9 Petrol",
		Description	 = "Small 9-cylinder radial, usually found on WWI-era aircraft.",
		Model		 = "models/engines/radial9s.mdl",
		Sound		 = "acf_extra/r9b.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 150,
		Torque		 = 450,
		FlywheelMass = 0.15,
		RPM = {
			Idle	= 700,
			Limit	= 4800,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "18.5-R9", "ACFE_R9", {
		Name		 = "18.5L Radial 9 Petrol",
		Description	 = "Mid range 9-cylinder, thirsty and smooth.",
		Model		 = "models/engines/radial9m.mdl",
		Sound		 = "acf_extra/r9m.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 560,
		Torque		 = 1500,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 700,
			Limit	= 2200,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "36.5-R9", "ACFE_R9", {
		Name		 = "36.5L Radial 9 Petrol",
		Description	 = "Massive American radial monster, mounted to WWII-era aircraft and tanks.",
		Model		 = "models/engines/radial9b.mdl",
		Sound		 = "acf_extra/r9s.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1200,
		Torque		 = 3205,
		FlywheelMass = 1,
		RPM = {
			Idle	= 730,
			Limit	= 2300,
		},
		Preview = {
			FOV = 80,
		},
	})
end