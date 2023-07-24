local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X20", {
	Name = "X20 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "8.0-X20", "X20", {
		Name		 = "[ACFE] 8.0L X20 Petrol",
		Description	 = "Small X20, Thats 2.5 Liters per cylinder!",
		Model		 = "models/engines/x20s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 450,
		Torque		 = 790,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "31.0-X20", "X20", {
		Name		 = "[ACFE] 31.0L X20 Petrol",
		Description	 = "Did you know rabies has a near 100% fatality rate? I Thought that was interesting.",
		Model		 = "models/engines/x20m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1330,
		Torque		 = 1810,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "74.0-X20", "X20", {
		Name		 = "[ACFE] 74.0L X20 Petrol",
		Description	 = "Massive X20. Why stop here? why not go all the way?",
		Model		 = "models/engines/x20b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 3800,
		Torque		 = 5275,
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