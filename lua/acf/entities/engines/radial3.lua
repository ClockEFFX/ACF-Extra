local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "R3", {
	Name = "Radial 3 Engine",
})


do
	
	-- Petrol
	
	Engines.RegisterItem( "1.2-R3", "R3", {
		Name		 = "[ACFE] 1.2L Radial 3 Petrol",
		Description	 = "Would make a good fidget spinner.",
		Model		 = "models/engines/radial3s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 70,
		Torque		 = 120,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 5000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "5.0-R3", "R3", {
		Name		 = "[ACFE] 5.0L Radial 3 Petrol",
		Description	 = "Medium sized radial 3.",
		Model		 = "models/engines/radial3m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 240,
		Torque		 = 340,
		FlywheelMass = 0.35,
		RPM = {
			Idle	= 700,
			Limit	= 4000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "11.0-R3", "R3", {
		Name		 = "[ACFE] 11.0L Radial 3 Petrol",
		Description	 = "Massive radial 3, for 'small' aircraft.",
		Model		 = "models/engines/radial3b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 600,
		Torque		 = 1025,
		FlywheelMass = 3,
		RPM = {
			Idle	= 760,
			Limit	= 3800,
		},
		Preview = {
			FOV = 80,
		},
	})
end