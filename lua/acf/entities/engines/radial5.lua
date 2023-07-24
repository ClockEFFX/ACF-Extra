local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "R5", {
	Name = "Radial 5 Engine",
})


do
	
	-- Petrol
	
	Engines.RegisterItem( "2.1-R5", "R5", {
		Name		 = "[ACFE] 2.1L Radial 5 Petrol",
		Description	 = "Five small cylinders in a circle.",
		Model		 = "models/engines/radial5s.mdl",
		Sound		 = "acf_engines/r5.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 133,
		Torque		 = 99,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 1100,
			Limit	= 7000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "9.3-R5", "R5", {
		Name		 = "[ACFE] 9.3L Radial 5 Petrol",
		Description	 = "Five medium cylinders in a circle.",
		Model		 = "models/engines/radial5m.mdl",
		Sound		 = "acf_engines/r5.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 250,
		Torque		 = 238,
		FlywheelMass = 0.35,
		RPM = {
			Idle	= 650,
			Limit	= 5750,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "19.5-R5", "R5", {
		Name		 = "[ACFE] 19.5L Radial 5 Petrol",
		Description	 = "Five large cylinders in a circle.",
		Model		 = "models/engines/radial5b.mdl",
		Sound		 = "acf_engines/r5.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 400,
		Torque		 = 590,
		FlywheelMass = 3,
		RPM = {
			Idle	= 550,
			Limit	= 4350,
		},
		Preview = {
			FOV = 80,
		},
	})
end