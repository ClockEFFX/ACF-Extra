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
Gearboxes.Register("Transfer", {
	Name		= "Transfer cases",
	CreateMenu	= ACF.ManualGearboxMenu,
	Gears = {
		Min	= 0,
		Max	= 2,
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

	ACF_DefineGearboxold( "2Gear-L-T", {
		name = "Transfer case, Inline, Tiny",
		desc = "2 speed gearbox, useful for low range and rc vehicles",
		model = "models/engines/linear_t.mdl",
		category = "Transfer",
		weight = 10,
		switch = 0.2,
		maxtq = 12500,
		gears = 2,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ 2 ] = -0.5,
			[ -1 ] = 0.5
		}
	} )


	-- Transaxial

	ACF_DefineGearboxold( "2Gear-T-T", {
		name = "Transfer case, Tiny",
		desc = "2 speed gearbox, useful for low range and rc vehicles",
		model = "models/engines/transaxial_t.mdl",
		category = "Transfer",
		weight = 20,
		switch = 0.2,
		maxtq = 12500,
		gears = 2,
		doubleclutch = true,
		geartable = {
			[ 0 ] = 0,
			[ 1 ] = 0.5,
			[ 2 ] = -0.5,
			[ -1 ] = 0.5
		}
	} )

end