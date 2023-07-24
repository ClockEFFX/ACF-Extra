local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X4", {
	Name = "X4 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "1.6-X4", "X4", {
		Name		 = "[ACFE] 1.6L X4 Petrol",
		Description	 = "Small X4.",
		Model		 = "models/engines/xs.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
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
	
	Engines.RegisterItem( "6.2-X4", "X4", {
		Name		 = "[ACFE] 6.2L X4 Petrol",
		Description	 = "Medium sized X4.",
		Model		 = "models/engines/xm.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
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
	
	Engines.RegisterItem( "14.8-X4", "X4", {
		Name		 = "[ACFE] 14.8L X4 Petrol",
		Description	 = "Large X4.",
		Model		 = "models/engines/xb.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
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
	
	
	-- petrol 2
	
	Engines.RegisterItem( "1.6-X4-2", "X4", {
		Name		 = "[ACFE] 1.6L X4 Petrol 2",
		Description	 = "Small X4. Alternate model.",
		Model		 = "models/engines/x4s2.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
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
	
	Engines.RegisterItem( "6.2-X4-2", "X4", {
		Name		 = "[ACFE] 6.2L X4 Petrol 2",
		Description	 = "Medium sized X4. Alternate model.",
		Model		 = "models/engines/x4m2.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
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
	
	Engines.RegisterItem( "14.8-X4-2", "X4", {
		Name		 = "[ACFE] 14.8L X4 Petrol 2",
		Description	 = "Large X4. Alternate model.",
		Model		 = "models/engines/x4b2.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
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