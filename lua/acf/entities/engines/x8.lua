local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X8", {
	Name = "X8 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "3.2-X8", "X8", {
		Name		 = "[ACFE] 3.2L X8 Petrol",
		Description	 = "Small X8, the most stupi-tarded way to make use of 8 cylinders.",
		Model		 = "models/engines/x8s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 179,
		Torque		 = 310,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "12.4-X8", "X8", {
		Name		 = "[ACFE] 12.4L X8 Petrol",
		Description	 = "Medium sized X8, a 'short bus' 8-cylinder.",
		Model		 = "models/engines/x8m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 520,
		Torque		 = 720,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "25.6-X8", "X8", {
		Name		 = "[ACFE] 25.6L X8 Petrol",
		Description	 = "Massive X8. Go ahead, i wont judge.",
		Model		 = "models/engines/x8b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1500,
		Torque		 = 2025,
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