local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "B8", {
	Name = "Flat 8 Engine",
})


do
	Engines.RegisterItem( "3.8-B8", "B8", {
		Name		 = "[ACFE] 3.8L Flat 8 Petrol",
		Description	 = "Who sat on my V8? It's all flat now!",
		Model		 = "models/engines/b8small.mdl",
		Sound		 = "acf_engines/b6_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 140,
		Torque		 = 236,
		FlywheelMass = 0.08,
		RPM = {
			Idle	= 750,
			Limit	= 7250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "6.0-B8", "B8", {
		Name		 = "[ACFE] 6.0L Flat 8 Petrol",
		Description	 = "Now we're talking! Smooth, light flat 8 - perfect for a sports car.",
		Model		 = "models/engines/b8medium.mdl",
		Sound		 = "acf_engines/b6_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 260,
		Torque		 = 388,
		FlywheelMass = 0.1,
		RPM = {
			Idle	= 900,
			Limit	= 6800,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "10.0-B8", "B8", {
		Name		 = "[ACFE] 10.0L Flat 8 Petrol",
		Description	 = "Large flat 8, makes its power higher up in the rev range.",
		Model		 = "models/engines/b8large.mdl",
		Sound		 = "acf_engines/b6_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 680,
		Torque		 = 970,
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