local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "B12", {
	Name = "Flat 12 Engine",
})


do
	Engines.RegisterItem( "4.1-B12", "B12", {
		Name		 = "[ACFE] 4.1L Flat 12 Petrol",
		Description	 = "Small flat 12, Testarossa style.",
		Model		 = "models/engines/b12small.mdl",
		Sound		 = "acf_engines/b6_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 250,
		Torque		 = 386,
		FlywheelMass = 0.08,
		RPM = {
			Idle	= 750,
			Limit	= 7250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "8.0-B12", "B12", {
		Name		 = "[ACFE] 8.0L Flat 12 Petrol",
		Description	 = "Medium sized flat 12. Now were talking.",
		Model		 = "models/engines/b12medium.mdl",
		Sound		 = "acf_engines/b6_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 380,
		Torque		 = 528,
		FlywheelMass = 0.1,
		RPM = {
			Idle	= 900,
			Limit	= 6800,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "17.0-B12", "B12", {
		Name		 = "[ACFE] 17.0L Flat 12 Petrol",
		Description	 = "Large flat 12, makes its power in the high rev range.",
		Model		 = "models/engines/b12large.mdl",
		Sound		 = "acf_engines/b6_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1050,
		Torque		 = 1470,
		FlywheelMass = 1,
		RPM = {
			Idle	= 620,
			Limit	= 4500,
		},
		Preview = {
			FOV = 80,
		},
	})
end