

-- the old code was like 20 times the length of this



-- ( isoptional = false ) thrust is mandatory, for dedicated jet engines
-- ( isoptional = true ) thrust is optional, must be enabled via wire input
function ACF.Extra.InjectThrust( ent, isoptional ) -- this should work for any engine
	
	local model = ent:GetModel()
	
	-- engine size
	local issmall = string.find( model, "s.mdl" )
	local ismedium = string.find( model, "m.mdl" )
	local islarge = string.find( model, "l.mdl" )
	
	-- these should be convars 2bh
	local smallthrust = 64
	local mediumthrust = 128
	local largethrust = 256
	
	-- set max thrust based on engine size
	local maxthrust = ( islarge and largethrust ) or ( ismedium and mediumthrust ) or smallthrust
	ent.MaxThrust = maxthrust
	
	if ( isoptional ) then
		
		-- create extra inputs
		-- TODO: make this modular somehow?
		local inputnames = {
			"Active",
			"Throttle",
			"Thrust"
		}
		local inputtypes = {
			"NORMAL",
			"NORMAL",
			"NORMAL"
		}
		local inputdescs = {
			"Turns the engine on or off",
			"How much throttle to apply to the engine (100 is max)",
			"Enable thrust for this engine"
		}
		
		WireLib.AdjustSpecialInputs( ent, inputnames, inputtypes, inputdescs )
		
	end
	
	
	-- replace the engines think
	ent.Think = function( self )
		
		local physobj = self:GetPhysicsObject()
		local active = ent.Inputs[ "Active" ].Value >= 1 and ( not isoptional or ent.Inputs[ "Thrust" ].Value > 0 )
		
		local yeah = ( self and self:IsValid() and physobj and physobj:IsValid() and active )
		
		if ( yeah ) then
			
			local rpm = self.FlyRPM / self.LimitRPM
			
			local thrust = rpm * self.MaxThrust * 100
			physobj:ApplyForceCenter( self:GetForward() * thrust )
			
		end
		
		-- make sure it runs at sv tickrate
		self:NextThink( CurTime() )
		return true
	end
	
end
function ACF.Extra.IsTurbine( ent )
	
	if ( IsValid( ent ) and ent:GetClass() == "acf_engine" ) then
		
		if ( string.find( ent:GetModel(), "/turbine" ) ) then
		
			return true
			
		end
		
	end
	
	return false
	
end
function ACF.Extra.IsPulsejet( ent )
	
	if ( IsValid( ent ) and ent:GetClass() == "acf_engine" ) then
		
		if ( string.find( ent:GetModel(), "/pulsejet" ) ) then
		
			return true
			
		end
		
	end
	
	return false
	
end



-- da hookes
hook.Add( "OnEntityCreated", "ACFE_Inject", function( ent )
	
	 -- we need to wait till next think for the entity to be given a model
	timer.Simple( 0, function()
		
		if ( ACF.Extra.IsTurbine( ent ) ) then
		
			ACF.Extra.InjectThrust( ent, true )
			
		end
		
		if ( ACF.Extra.IsPulsejet( ent ) ) then
		
			ACF.Extra.InjectThrust( ent, false )
			
		end
		
	end )
	
end )
hook.Add( "ACF_OnEntityUpdate", "ACFE_Inject", function( type, ent )
	
	if ( ACF.Extra.IsTurbine( ent ) ) then
	
		ACF.Extra.InjectThrust( ent, true )
		
	end
	
	if ( ACF.Extra.IsPulsejet( ent ) ) then
	
		ACF.Extra.InjectThrust( ent, false )
		
	end
		
end )