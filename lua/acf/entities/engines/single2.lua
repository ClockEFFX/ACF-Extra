local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "I1", {
	Name = "Single Cylinder Engine",
})


do
	
	-- Petrol
	
	Engines.RegisterItem( "0.125-I1-2", "I1", {
		Name		 = "[ACFE] 125cc Single Cylinder Petrol 2",
		Description	 = "Very tiny RC engine.",
		Model		 = "models/engines/1cyltiny.mdl",
		Sound		 = "acf_engines/i1_small.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 7,
		Torque		 = 11,
		FlywheelMass = 0.003,
		RPM = {
			Idle	= 2200,
			Limit	= 8500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "0.25-I1-2", "I1", {
		Name		 = "[ACFE] 250cc Single Cylinder Petrol 2",
		Description	 = "Tiny bike engine.",
		Model		 = "models/engines/1cyls.mdl",
		Sound		 = "acf_engines/i1_small.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 15,
		Torque		 = 20,
		FlywheelMass = 0.005,
		RPM = {
			Idle	= 1200,
			Limit	= 7500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "0.5-I1-2", "I1", {
		Name		 = "[ACFE] 500cc Single Cylinder Petrol 2",
		Description	 = "Medium single-cylinder bike engine.",
		Model		 = "models/engines/1cylm.mdl",
		Sound		 = "acf_engines/i1_medium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 20,
		Torque		 = 40,
		FlywheelMass = 0.005,
		RPM = {
			Idle	= 900,
			Limit	= 8000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.3-I1-2", "I1", {
		Name		 = "[ACFE] 1300cc Single Cylinder Petrol 2",
		Description	 = "Way-to-big single-cylinder, seriously, reconsider your engine choice.",
		Model		 = "models/engines/1cylb.mdl",
		Sound		 = "acf_engines/i1_large.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 50,
		Torque		 = 90,
		FlywheelMass = 0.1,
		RPM = {
			Idle	= 600,
			Limit	= 6700,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	
	-- diesel
	
	Engines.RegisterItem( "0.3-I1D", "I1", {
		Name		 = "[ACFE] 300cc Single Cylinder Diesel",
		Description	 = "Single-cylinder diesel engine.",
		Model		 = "models/engines/1cylsml.mdl",
		Sound		 = "acf_engines/singlediesels.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 25,
		Torque		 = 40,
		FlywheelMass = 0.015,
		RPM = {
			Idle	= 550,
			Limit	= 5000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "0.5-I1D", "I1", {
		Name		 = "[ACFE] 500cc Single Cylinder Diesel",
		Description	 = "Medium single-cylinder diesel engine.",
		Model		 = "models/engines/1cylmed.mdl",
		Sound		 = "acf_engines/singledieselm.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 20,
		Torque		 = 40,
		FlywheelMass = 0.055,
		RPM = {
			Idle	= 450,
			Limit	= 4300,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.3-I1D", "I1", {
		Name		 = "[ACFE] 1300cc Single Cylinder Diesel",
		Description	 = "Large single-cylinder diesel engine, wubwubwubwubwub...",
		Model		 = "models/engines/1cylbig.mdl",
		Sound		 = "acf_engines/singlediesell.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 50,
		Torque		 = 90,
		FlywheelMass = 0.2,
		RPM = {
			Idle	= 350,
			Limit	= 3500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	
	-- diesel 2
	
	Engines.RegisterItem( "0.3-I1D-2", "I1", {
		Name		 = "[ACFE] 300cc Single Cylinder Diesel 2",
		Description	 = "Single-cylinder diesel engine. Alternate model.",
		Model		 = "models/engines/1cyls.mdl",
		Sound		 = "acf_engines/singlediesels.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 25,
		Torque		 = 40,
		FlywheelMass = 0.015,
		RPM = {
			Idle	= 550,
			Limit	= 5000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "0.5-I1D-2", "I1", {
		Name		 = "[ACFE] 500cc Single Cylinder Diesel 2",
		Description	 = "Medium single-cylinder diesel engine. Alternate model.",
		Model		 = "models/engines/1cylm.mdl",
		Sound		 = "acf_engines/singledieselm.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 20,
		Torque		 = 40,
		FlywheelMass = 0.055,
		RPM = {
			Idle	= 450,
			Limit	= 4300,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "1.3-I1D-2", "I1", {
		Name		 = "[ACFE] 1300cc Single Cylinder Diesel 2",
		Description	 = "Large single-cylinder diesel engine, wubwubwubwubwub... Alternate model.",
		Model		 = "models/engines/1cylb.mdl",
		Sound		 = "acf_engines/singlediesell.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 50,
		Torque		 = 90,
		FlywheelMass = 0.2,
		RPM = {
			Idle	= 350,
			Limit	= 3500,
		},
		Preview = {
			FOV = 80,
		},
	})
end