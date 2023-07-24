local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "X12", {
	Name = "X12 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "4.8-X12", "X12", {
		Name		 = "[ACFE] 4.8L X12 Petrol",
		Description	 = "Small X12, the hipster V12.",
		Model		 = "models/engines/x12s.mdl",
		Sound		 = "acf_engines/r7_petrolsmall.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 270,
		Torque		 = 460,
		FlywheelMass = 0.10,
		RPM = {
			Idle	= 710,
			Limit	= 4900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "18.6-X12", "X12", {
		Name		 = "[ACFE] 18.6L X12 Petrol",
		Description	 = "Medium sized X12, smooth as sandpaper.",
		Model		 = "models/engines/x12m.mdl",
		Sound		 = "acf_engines/r7_petrolmedium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 770,
		Torque		 = 1180,
		FlywheelMass = 0.45,
		RPM = {
			Idle	= 680,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "42.9-X12", "X12", {
		Name		 = "[ACFE] 42.9L X12 Petrol",
		Description	 = "Big-ass X12, perfect for a vibrator.",
		Model		 = "models/engines/x12b.mdl",
		Sound		 = "acf_engines/r7_petrollarge.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 2250,
		Torque		 = 3000,
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