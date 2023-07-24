local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X24", {
	Name = "X24 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "9.6-X24", "X24", {
		Name		 = "[ACFE] 9.6L X24 Petrol",
		Description	 = "Small X24, Thats 6 cylinders per side!",
		Model		 = "models/engines/x24s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 540,
		Torque		 = 820,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "37.2-X24", "X24", {
		Name		 = "[ACFE] 37.2L X24 Petrol",
		Description	 = "Medium sized X24. Get help.",
		Model		 = "models/engines/x24m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1540,
		Torque		 = 2310,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "85.8-X24", "X24", {
		Name		 = "[ACFE] 85.8L X24 Petrol",
		Description	 = "Valhalla, I am coming! (ass-ripping noises)",
		Model		 = "models/engines/x24b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 4500,
		Torque		 = 5700,
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