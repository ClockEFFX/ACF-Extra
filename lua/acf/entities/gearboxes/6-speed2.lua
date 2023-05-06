local Gearboxes = ACF.Classes.Gearboxes

local Gear2SW = 20
local Gear2MW = 40
local Gear2LW = 80
if not Gearboxes.RegisterItem then
	Gearboxes.RegisterItem  = function(name,cat,data) end
end
if not Gearboxes.Register then
	Gearboxes.Register  = function(name,cat,data) end
end
Gearboxes.Register("6-Speed-Inline", {
	Name		= "6-Speed Inline Gearbox",
	CreateMenu	= ACF.ManualGearboxMenu,
	Gears = {
		Min	= 0,
		Max	= 6,
	}
})

do
	local function ACF_DefineGearboxold(name,data)
			
		Gearboxes.RegisterItem(name, data.category, {
			Name		= data.name,
			Description	= data.desc,
			Model		= data.model,
			Mass		= data.weight,
			Switch		= data.switch,
			MaxTorque	= data.maxtq,
			Preview = {
				FOV = 125,
			},
		})
	end

	-- 6-Speed gearboxes

	-- Weight
	local Gear6SW = 80
	local Gear6MW = 160
	local Gear6LW = 320
	local StWB = 0.75 --straight weight bonus mulitplier

	-- Torque Rating
	local Gear6ST = 440
	local Gear6MT = 1360
	local Gear6LT = 10000
	local StTB = 1.25 --straight torque bonus multiplier

	-- Inline

	ACF_DefineGearboxold( "6Gear-L-T", {
		name = "6-Speed, Inline, Tiny",
		desc = "A Tiny and light 6 speed inline gearbox, with a limited max torque rating.",
		model = "models/engines/linear_t.mdl",
		category = "6-Speed-Inline",
		weight = 40,
		switch = 0.07,
		maxtq = 240,
		gears = 6,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.1,
			[ 2 ] = 0.2,
			[ 3 ] = 0.3,
			[ 4 ] = 0.4,
			[ 5 ] = 0.5,
			[ 6 ] = -0.1,
			[ -1 ] = 0.5
		}
	} )

	-- Inline Dual Clutch

	ACF_DefineGearboxold( "6Gear-LD-T", {
		name = "6-Speed, Inline, Tiny, Dual Clutch",
		desc = "A Tiny and light 6 speed inline gearbox, with a limited max torque rating. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		model = "models/engines/linear_t.mdl",
		category = "6-Speed-Inline",
		weight = 40,
		switch = 0.07,
		maxtq = 240,
		gears = 6,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.1,
			[ 2 ] = 0.2,
			[ 3 ] = 0.3,
			[ 4 ] = 0.4,
			[ 5 ] = 0.5,
			[ 6 ] = -0.1,
			[ -1 ] = 0.5
		}
	} )

	-- Transaxial

	ACF_DefineGearboxold( "6Gear-T-T", {
		name = "6-Speed, Transaxial, Tiny",
		desc = "A Tiny and light 6 speed gearbox, with a limited max torque rating.",
		model = "models/engines/transaxial_t.mdl",
		category = "6-Speed-Inline",
		weight = 40,
		switch = 0.07,
		maxtq = 240,
		gears = 6,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.1,
			[ 2 ] = 0.2,
			[ 3 ] = 0.3,
			[ 4 ] = 0.4,
			[ 5 ] = 0.5,
			[ 6 ] = -0.1,
			[ -1 ] = 0.5
		}
	} )


	-- Transaxial Dual Clutch

	ACF_DefineGearboxold( "6Gear-TD-T", {
		name = "6-Speed, Transaxial, Tiny, Dual Clutch",
		desc = "A Tiny and light 6 speed gearbox, with a limited max torque rating. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		model = "models/engines/transaxial_t.mdl",
		category = "6-Speed-Inline",
		weight = 40,
		switch = 0.07,
		maxtq = 240,
		gears = 6,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.1,
			[ 2 ] = 0.2,
			[ 3 ] = 0.3,
			[ 4 ] = 0.4,
			[ 5 ] = 0.5,
			[ 6 ] = -0.1,
			[ -1 ] = 0.5
		}
	} )


	-- Straight-through gearboxes

	ACF_DefineGearboxold( "6Gear-ST-T", {
		name = "6-Speed, Straight, Tiny",
		desc = "A Tiny and light 6 speed straight-through gearbox.",
		model = "models/engines/t5tiny.mdl",
		category = "6-Speed-Inline",
		weight = math.floor(40 * StWB),
		switch = 0.07,
		maxtq = math.floor(240 * StTB),
		gears = 6,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.1,
			[ 2 ] = 0.2,
			[ 3 ] = 0.3,
			[ 4 ] = 0.4,
			[ 5 ] = 0.5,
			[ 6 ] = -0.1,
			[ -1 ] = 0.5
		}
	} )

end