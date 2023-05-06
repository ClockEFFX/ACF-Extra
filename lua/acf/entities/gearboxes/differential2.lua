local ACF       = ACF
local Gearboxes = ACF.Classes.Gearboxes

local Gear1SW = 10
local Gear1MW = 20
local Gear1LW = 40
if not Gearboxes.RegisterItem then
	Gearboxes.RegisterItem  = function(name,cat,data) end
end
if not Gearboxes.Register then
	Gearboxes.Register  = function(name,cat,data) end
end
Gearboxes.Register("Differential", {
	Name		= "Differential",
	CreateMenu	= ACF.ManualGearboxMenu,
	Gears = {
		Min	= 0,
		Max	= 1,
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

	-- Inline

	ACF_DefineGearboxold( "1Gear-L-T", {
		name = "Differential, Inline, Tiny",
		desc = "Tiny differential, used to connect power from gearbox to wheels",
		model = "models/engines/linear_t.mdl",
		category = "Differential",
		weight = 6,
		switch = 0.2,
		maxtq = 12500,
		gears = 1,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ -1 ] = 0.5
		}
	} )

	-- Inline Dual Clutch

	ACF_DefineGearboxold( "1Gear-LD-T", {
		name = "Differential, Inline, Tiny, Dual Clutch",
		desc = "Tiny differential, used to connect power from gearbox to wheels",
		model = "models/engines/linear_t.mdl",
		category = "Differential",
		weight = 6,
		switch = 0.2,
		maxtq = 12500,
		gears = 1,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ -1 ] = 0.5
		}
	} )

	-- Transaxial

	ACF_DefineGearboxold( "1Gear-T-T", {
		name = "Differential, Tiny",
		desc = "Tiny differential, used to connect power from gearbox to wheels",
		model = "models/engines/transaxial_t.mdl",
		category = "Differential",
		weight = 6,
		switch = 0.2,
		maxtq = 25000,
		gears = 1,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ -1 ] = 0.5
		}
	} )

	-- Transaxial Dual Clutch

	ACF_DefineGearboxold( "1Gear-TD-T", {
		name = "Differential, Tiny, Dual Clutch",
		desc = "Tiny differential, used to connect power from gearbox to wheels",
		model = "models/engines/transaxial_t.mdl",
		category = "Differential",
		weight = 6,
		switch = 0.2,
		maxtq = 12500,
		gears = 1,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ -1 ] = 0.5
		}
	} )

end