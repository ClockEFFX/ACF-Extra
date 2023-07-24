local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "I8", {
	Name = "Inline 8 Engine",
})


do
	Engines.RegisterItem( "3.4-I8", "I8", {
		Name		 = "[ACFE] 3.4L I8 Petrol",
		Description	 = "Inline 8 small.",
		Model		 = "models/engines/i8sml.mdl",
		Sound		 = "acf_engines/i12s.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 160,
		Torque		 = 170,
		FlywheelMass = 0.2,
		RPM = {
			Idle	= 1000,
			Limit	= 6000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "5.6-I8", "I8", {
		Name		 = "[ACFE] 5.6L I8 Petrol",
		Description	 = "Inline 8 medium.",
		Model		 = "models/engines/i8med.mdl",
		Sound		 = "acf_engines/i12m.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 300,
		Torque		 = 250,
		FlywheelMass = 0.35,
		RPM = {
			Idle	= 800,
			Limit	= 5800,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "9.0-I8", "I8", {
		Name		 = "[ACFE] 9.0L I8 Petrol",
		Description	 = "Inline 8 large.",
		Model		 = "models/engines/i8lrg.mdl",
		Sound		 = "acf_engines/i12l.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 650,
		Torque		 = 480,
		FlywheelMass = 0.7,
		RPM = {
			Idle	= 700,
			Limit	= 5250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "4.0-I8", "I8", {
		Name		 = "[ACFE] 4.0L I8 Diesel",
		Description	 = "Inline 8 small, diesel edition.",
		Model		 = "models/engines/i8sml.mdl",
		Sound		 = "acf_engines/l6_dieselsmall.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 200,
		Torque		 = 220,
		FlywheelMass = 0.4,
		RPM = {
			Idle	= 650,
			Limit	= 4000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "6.0-I8", "I8", {
		Name		 = "[ACFE] 6.0L I8 Diesel",
		Description	 = "Inline 8 medium, diesel edition.",
		Model		 = "models/engines/i8med.mdl",
		Sound		 = "acf_engines/l6_dieselmedium4.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 400,
		Torque		 = 300,
		FlywheelMass = 0.5,
		RPM = {
			Idle	= 500,
			Limit	= 3400,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "11.0-I8", "I8", {
		Name		 = "[ACFE] 11.0L I8 Diesel",
		Description	 = "Inline 8 large, diesel edition.",
		Model		 = "models/engines/i8lrg.mdl",
		Sound		 = "acf_engines/l6_diesellarge2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 1800,
		Torque		 = 3600,
		FlywheelMass = 8,
		RPM = {
			Idle	= 350,
			Limit	= 2100,
		},
		Preview = {
			FOV = 80,
		},
	})
end
