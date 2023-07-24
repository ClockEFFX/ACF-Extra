local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X16", {
	Name = "X16 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "6.4-X16", "X16", {
		Name		 = "[ACFE] 6.4L X16 Petrol",
		Description	 = "Small X16.",
		Model		 = "models/engines/x16s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 360,
		Torque		 = 620,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "24.8-X16", "X16", {
		Name		 = "[ACFE] 24.8L X16 Petrol",
		Description	 = "Medium sized X16. Seriously, reconsider.",
		Model		 = "models/engines/x16m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1040,
		Torque		 = 1440,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "57.2-X16", "X16", {
		Name		 = "[ACFE] 57.2L X16 Petrol",
		Description	 = "Massive X16, the result of someone mating four I4s to one crankshaft.",
		Model		 = "models/engines/x16b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 3000,
		Torque		 = 4050,
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