local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "B2", {
	Name = "Flat 2 Engine",
})


do
	Engines.RegisterItem( "1.2-B2", "B2", {
		Name		 = "[ACFE] B2 1.2L Flat 2 Petrol",
		Description	 = "Little tiny flat 2, reminiscent of rockem sockem robots.",
		Model		 = "models/engines/b2s.mdl",
		Sound		 = "acf_engines/b2s.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 35,
		Torque		 = 120,
		FlywheelMass = 0.08,
		RPM = {
			Idle	= 750,
			Limit	= 8500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "2.3-B2", "B2", {
		Name		 = "[ACFE] B2 2.3L Flat 2 Petrol",
		Description	 = "Medium sized flat 2, fit for a car.",
		Model		 = "models/engines/b2m.mdl",
		Sound		 = "acf_engines/b2m.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 75,
		Torque		 = 290,
		FlywheelMass = 0.1,
		RPM = {
			Idle	= 900,
			Limit	= 7200,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "4.6-B2", "B2", {
		Name		 = "[ACFE] B2 4.6L Flat 2 Petrol",
		Description	 = "Large sized flat 2, fit for a small airplane.",
		Model		 = "models/engines/b2l.mdl",
		Sound		 = "acf_engines/b2l.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 160,
		Torque		 = 480,
		FlywheelMass = 0.7,
		RPM = {
			Idle	= 620,
			Limit	= 6000,
		},
		Preview = {
			FOV = 80,
		},
	})
end