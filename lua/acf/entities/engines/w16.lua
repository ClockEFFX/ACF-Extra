local ACF = ACF
local Engines = ACF.Classes.Engines

Engines.Register( "W16", {
	Name = "W16 Engine",
})


-- these engines are pretty OP

do
	
	-- petrol
	
	Engines.RegisterItem( "8.4-W16", "W16", {
		Name		 = "[ACFE] 8.4L W16 Petrol",
		Description	 = "Destined for expensive luxury cars with top speed in mind.",
		Model		 = "models/engines/w16s.mdl",
		Sound		 = "acf_engines/w16small.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 550,
		Torque		 = 1250,
		FlywheelMass = 0.5,
		RPM = {
			Idle	= 1400,
			Limit	= 8500,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "16.4-W16", "W16", {
		Name		 = "[ACFE] 16.4L W16 Petrol",
		Description	 = "Medium W16 made for fun.",
		Model		 = "models/engines/w16m.mdl",
		Sound		 = "acf_engines/w16medium.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 900,
		Torque		 = 2450,
		FlywheelMass = 0.6,
		RPM = {
			Idle	= 1250,
			Limit	= 7600,
		},
		Preview = {
			FOV = 80,
		},
	})
	
	Engines.RegisterItem( "32.8-W16", "W16", {
		Name		 = "[ACFE] 32.8L W16 Petrol",
		Description	 = "Oh my glob 32.8 Liters... Fuck the duck twice.",
		Model		 = "models/engines/w16b.mdl",
		Sound		 = "acf_engines/w16large.wav",
		Fuel		 = { Petrol = true },
		Type		 = "GenericPetrol",
		Mass		 = 1700,
		Torque		 = 3800,
		FlywheelMass = 0.7,
		RPM = {
			Idle	= 1050,
			Limit	= 6250,
		},
		Preview = {
			FOV = 80,
		},
	})

end