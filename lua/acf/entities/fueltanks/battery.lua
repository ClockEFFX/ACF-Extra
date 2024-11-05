local FuelTanks = ACF.Classes.FuelTanks

-- if not FuelTanks.RegisterItem then
	-- FuelTanks.RegisterItem  = function(name,cat,data) end
-- end
-- if not FuelTanks.Register then
	-- FuelTanks.Register  = function(name,cat,data) end
-- end
FuelTanks.Register("Battery", {
	Name		= "Batteries Container",
	Description	= "Batteries, required for electric engines to work.",
})

do

	FuelTanks.RegisterItem("Battery_1x1x2", "Battery", {
		Name		= "1x1x2 Battery",
		Description	= "Smol battery",
		Model		= "models/fueltank/battery16t.mdl",
		SurfaceArea	= 1574,
		Volume		= 2383.1,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_1x1x4", "Battery", {
		Name		= "1x1x4 Battery",
		Description	= "Dinghy battery",
		Model		= "models/fueltank/battery32t.mdl",
		SurfaceArea	= 3240,
		Volume		= 6960,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_1x2x4", "Battery", {
		Name		= "1x2x4 Battery",
		Description	= "Outboard motor",
		Model		= "models/fueltank/battery16s.mdl",
		SurfaceArea	= 6980,
		Volume		= 12920,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_1x4x4", "Battery", {
		Name		= "1x4x4 Battery",
		Description	= "Does anyone read these?",
		Model		= "models/fueltank/battery32s.mdl",
		SurfaceArea	= 12960,
		Volume		= 22840,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_1x8x2", "Battery", {
		Name		= "1x8x2 Battery",
		Description	= "Now dats a watt of powah!",
		Model		= "models/fueltank/battery16mb.mdl",
		SurfaceArea	= 12960,
		Volume		= 22840,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_1x8x4", "Battery", {
		Name		= "1x8x4 Battery",
		Description	= "I give up on writing descriptions for all of these",
		Model		= "models/fueltank/battery32mb.mdl",
		SurfaceArea	= 19920,
		Volume		= 40680,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_2x4x1", "Battery", {
		Name		= "2x4x1 Battery",
		Description	= "",
		Model		= "models/fueltank/battery16m.mdl",
		SurfaceArea	= 6980,
		Volume		= 14920,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_2x4x2", "Battery", {
		Name		= "2x4x2 Battery",
		Description	= "Mini Cooper",
		Model		= "models/fueltank/battery32m.mdl",
		SurfaceArea	= 12840,
		Volume		= 25840,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_2x8x2", "Battery", {
		Name		= "2x8x2 Battery",
		Description	= "",
		Model		= "models/fueltank/battery16b.mdl",
		SurfaceArea	= 22680,
		Volume		= 40680,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

	FuelTanks.RegisterItem("Battery_2x8x4", "Battery", {
		Name		= "2x8x4 Battery",
		Description	= "",
		Model		= "models/fueltank/battery32b.mdl",
		SurfaceArea	= 25600,
		Volume		= 64000,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})
	
	-- duplicate? idk leaving it here just in case
	-- ACF_DefineFuelTankSizeold( "Battery_1x8x4", {
		-- name = "1x8x4 Battery",
		-- desc = "",
		-- model = "models/fueltank/battery16h.mdl",
		-- dims = { S = 25680, V = 44680 }
	-- } )

	FuelTanks.RegisterItem("Battery_2x8x8", "Battery", {
		Name		= "2x8x8 Battery",
		Description	= "",
		Model		= "models/fueltank/battery32h.mdl",
		SurfaceArea	= 84000,
		Volume		= 140200,
		Shape       = "Box",
		Preview = {
			FOV = 90,
		},
	})

end