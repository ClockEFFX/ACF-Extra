local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_V6", {
	Name = "[ACFE] V6 Engine",
})


do
	
	-- diesel
	
	Engines.RegisterItem( "3.0-V6", "ACFE_V6", {
		Name		 = "3.0L V6 Diesel",
		Description	 = "Small diesel V6. Torquey, but held back by its balancing.",
		Model		 = "models/engines/v6small.mdl",
		Sound		 = "acf_base/engines/v8_dieselsmall.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 300,
		Torque		 = 500,
		FlywheelMass = 3,
		RPM = {
			Idle	= 800,
			Limit	= 3500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "7.8-V6", "ACFE_V6", {
		Name		 = "7.8L V6 Diesel",
		Description	 = "Medium diesel V6.",
		Model		 = "models/engines/v6med.mdl",
		Sound		 = "acf_base/engines/v8_dieselmedium2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 650,
		Torque		 = 900,
		FlywheelMass = 4,
		RPM = {
			Idle	= 650,
			Limit	= 3250,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "14.0-V6", "ACFE_V6", {
		Name		 = "14.0L V6 Diesel",
		Description	 = "This is what you get when you saw a tank V12 in half.",
		Model		 = "models/engines/v6large.mdl",
		Sound		 = "acf_base/engines/v6_diesellarge.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 950,
		Torque		 = 1800,
		FlywheelMass = 5,
		RPM = {
			Idle	= 550,
			Limit	= 2850,
		},
		Preview = {
			FOV = 80,
		},
	})
	
end