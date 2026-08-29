local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "ACFE_PJ", {
	Name = "[ACFE] Pulsejet Engine",
})


do
	Engines.RegisterItem( "Pulsejet-Small", "ACFE_PJ", {
		Name		 = "Small Pulsejet",
		Description	 = "A lil' screamer.",
		Model		 = "models/engines/pulsejets.mdl",
		Sound		 = "acf_extra/pulsejetsmall.wav",
		Fuel		 = { Petrol  = true, Diesel = true },
		Type		 = "Turbine",
		Mass		 = 100,
		Torque		 = 1,
		FlywheelMass = 0.001,
		RPM = {
			Idle	= 100,
			Limit	= 1000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "Pulsejet-Medium", "ACFE_PJ", {
		Name		 = "Medium Pulsejet",
		Description	 = "German V-1 approved.",
		Model		 = "models/engines/pulsejetm.mdl",
		Sound		 = "acf_extra/pulsejetmedium.wav",
		Fuel		 = { Petrol  = true, Diesel = true },
		Type		 = "Turbine",
		Mass		 = 200,
		Torque		 = 1,
		FlywheelMass = 0.001,
		RPM = {
			Idle	= 100,
			Limit	= 1000,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "Pulsejet-Large", "ACFE_PJ", {
		Name		 = "Large Pulsejet",
		Description	 = "The world's best way to convert fuel into noise!",
		Model		 = "models/engines/pulsejetl.mdl",
		Sound		 = "acf_extra/pulsejetlarge.wav",
		Fuel		 = { Petrol  = true, Diesel = true },
		Type		 = "Turbine",
		Mass		 = 400,
		Torque		 = 1,
		FlywheelMass = 0.001,
		RPM = {
			Idle	= 100,
			Limit	= 1000,
		},
		Preview = {
			FOV = 80,
		},
	})
end