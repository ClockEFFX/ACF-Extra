local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_VR4", {
	Name = "[ACFE] VR4 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "1.6-VR4", "ACFE_VR4", {
		Name		 = "1.6L VR4 Petrol",
		Description	 = "Sporty little VR4, looks like a popcorn bucket.",
		Model		 = "models/engines/vr4s.mdl",
		Sound		 = "acf_extra/vrs.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 90,
		Torque		 = 170,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "6.2-VR4", "ACFE_VR4", {
		Name		 = "6.2L VR4 Petrol",
		Description	 = "Mid range VR4.",
		Model		 = "models/engines/vr4m.mdl",
		Sound		 = "acf_extra/vrm.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 290,
		Torque		 = 370,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "14.8-VR4", "ACFE_VR4", {
		Name		 = "14.8L VR4 Petrol",
		Description	 = "Massive VR4 monster, perfect for nothing.",
		Model		 = "models/engines/vr4b.mdl",
		Sound		 = "acf_extra/vrl.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 800,
		Torque		 = 1225,
		FlywheelMass = 2,
		RPM = {
			Idle	= 650,
			Limit	= 3800,
		},
		Preview = {
			FOV = 80,
		},
	})

end