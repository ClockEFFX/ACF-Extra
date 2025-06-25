local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_B10", {
	Name = "[ACFE] Flat 10 Engine",
})


do
	Engines.RegisterItem( "3.8-B10", "ACFE_B10", {
		Name		 = "3.8L Flat 10 Petrol",
		Description	 = "Small flat 10, perfect if you like things symmetrical.",
		Model		 = "models/engines/b10small.mdl",
		Sound		 = "acf_base/engines/b6_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 200,
		Torque		 = 336,
		FlywheelMass = 0.08,
		RPM = {
			Idle	= 750,
			Limit	= 7250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "5.0-B10", "ACFE_B10", {
		Name		 = "5.0L Flat 10 Petrol",
		Description	 = "Medium sized flat 10, for when a V10 isnt your thing.",
		Model		 = "models/engines/b10medium.mdl",
		Sound		 = "acf_base/engines/b6_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 340,
		Torque		 = 488,
		FlywheelMass = 0.1,
		RPM = {
			Idle	= 900,
			Limit	= 6800,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "10.0-B10", "ACFE_B10", {
		Name		 = "10.0L Flat 8 Petrol",
		Description	 = "Large flat 10, with nice even numbers.",
		Model		 = "models/engines/b10large.mdl",
		Sound		 = "acf_base/engines/b6_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 830,
		Torque		 = 1170,
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