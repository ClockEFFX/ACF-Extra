local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "zI4", {
	Name = "Inline 4 Engine",
})


do
	
	-- petrol
	
	Engines.RegisterItem( "2.6-I4", "zI4", {
		Name		 = "[ACFE] 2.6L I4 Petrol",
		Description	 = "Short block inline 4 for light utility use.",
		Model		 = "models/engines/inline4m.mdl",
		Sound		 = "acf_engines/i4_petrolmedium2.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 110,
		Torque		 = 165,
		FlywheelMass = 0.2,
		RPM = {
			Idle	= 1000,
			Limit	= 2650,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	-- diesel
	
	Engines.RegisterItem( "0.7-I4", "zI4", {
		Name		 = "[ACFE] 0.7L I4 Diesel",
		Description	 = "Cute lil inline 4, mainly found in diesel cars.",
		Model		 = "models/engines/inline4s.mdl",
		Sound		 = "acf_engines/i4_diesel2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 45,
		Torque		 = 130,
		FlywheelMass = 0.2,
		RPM = {
			Idle	= 650,
			Limit	= 3100,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.8-I4", "zI4", {
		Name		 = "[ACFE] 1.8L I4 Diesel",
		Description	 = "Medium sized inline 4, for tractors.",
		Model		 = "models/engines/inline4m.mdl",
		Sound		 = "acf_engines/i4_dieselmedium.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 150,
		Torque		 = 230,
		FlywheelMass = 1,
		RPM = {
			Idle	= 700,
			Limit	= 3900,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.9-I4", "zI4", {
		Name		 = "[ACFE] 1.9L I4 Diesel",
		Description	 = "Small and light inline 4, for low power applications requiring a wide powerband.",
		Model		 = "models/engines/inline4s.mdl",
		Sound		 = "acf_engines/i4_diesel2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 110,
		Torque		 = 180,
		FlywheelMass = 0.21,
		RPM = {
			Idle	= 630,
			Limit	= 4700,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "7.3-I4", "zI4", {
		Name		 = "[ACFE] 7.3L I4 Diesel",
		Description	 = "Light tank duty engine, compact but grunts hard.",
		Model		 = "models/engines/inline4b.mdl",
		Sound		 = "acf_engines/i4_diesellarge.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 450,
		Torque		 = 900,
		FlywheelMass = 5,
		RPM = {
			Idle	= 650,
			Limit	= 2100,
		},
		Preview = {
			FOV = 80,
		},
	})
end