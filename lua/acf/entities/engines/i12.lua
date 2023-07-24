local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "I12", {
	Name = "Inline 12 Engine",
})


do
	Engines.RegisterItem( "4.4-I12", "I12", {
		Name		 = "[ACFE] 4.4L I12 Petrol",
		Description	 = "Incredibly stuid inline 12 made for fun.",
		Model		 = "models/engines/inline12s.mdl",
		Sound		 = "acf_engines/i12s.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 340,
		Torque		 = 260,
		FlywheelMass = 2,
		RPM = {
			Idle	= 400,
			Limit	= 3500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "9.6-I12", "I12", {
		Name		 = "[ACFE] 9.6L I12 Petrol",
		Description	 = "Medium inline 12 made for fun.",
		Model		 = "models/engines/inline12m.mdl",
		Sound		 = "acf_engines/i12m.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 600,
		Torque		 = 820,
		FlywheelMass = 3.4,
		RPM = {
			Idle	= 450,
			Limit	= 3600,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "30.0-I12", "I12", {
		Name		 = "[ACFE] 30.0L I12 Petrol",
		Description	 = "Oh my god 30L in 12 cylinders... Fuck the duck.",
		Model		 = "models/engines/inline12b.mdl",
		Sound		 = "acf_engines/i12l.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1700,
		Torque		 = 1920,
		FlywheelMass = 5.4,
		RPM = {
			Idle	= 440,
			Limit	= 2850,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "65.0-I12", "I12", {
		Name		 = "[ACFE] 65.0L I12 Petrol",
		Description	 = "Oh my god, is this an engine from an aircraft carrier!?!?",
		Model		 = "models/engines/inline12h.mdl",
		Sound		 = "acf_engines/l6_petrollarge2.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 3000,
		Torque		 = 3640,
		FlywheelMass = 10,
		RPM = {
			Idle	= 200,
			Limit	= 1100,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "6.0-I12", "I12", {
		Name		 = "[ACFE] 6.0L I12 Diesel",
		Description	 = "'Small' inline 12, with a good, wide powerband.",
		Model		 = "models/engines/inline12s.mdl",
		Sound		 = "acf_engines/l6_dieselsmall.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 300,
		Torque		 = 400,
		FlywheelMass = 0.9,
		RPM = {
			Idle	= 650,
			Limit	= 2000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "13.0-I12", "I12", {
		Name		 = "[ACFE] 13.0L I12 Diesel",
		Description	 = "Truck duty inline 12, IF you can fit it.",
		Model		 = "models/engines/inline12m.mdl",
		Sound		 = "acf_engines/l6_dieselmedium4.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 900,
		Torque		 = 1040,
		FlywheelMass = 2,
		RPM = {
			Idle	= 500,
			Limit	= 3600,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "40.0-I12", "I12", {
		Name		 = "[ACFE] 40.0L I12 Diesel",
		Description	 = "40 Liters?? Someone put a stop to this!",
		Model		 = "models/engines/inline12b.mdl",
		Sound		 = "acf_engines/l6_diesellarge2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 2400,
		Torque		 = 4200,
		FlywheelMass = 10,
		RPM = {
			Idle	= 350,
			Limit	= 2000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "80.0-I12", "I12", {
		Name		 = "[ACFE] 80.0L I12 Diesel",
		Description	 = "When you turn it on the world rotates in the other direction.",
		Model		 = "models/engines/inline12h.mdl",
		Sound		 = "acf_engines/l6_diesellarge2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 4800,
		Torque		 = 8400,
		FlywheelMass = 14,
		RPM = {
			Idle	= 300,
			Limit	= 2100,
		},
		Preview = {
			FOV = 80,
		},
	})
end