
-- ACF Extra reworked by ClockEFFX
-- https://steamcommunity.com/id/ClockEFFX/

-- Original addon by gamerpaddy
-- https://steamcommunity.com/id/gamerpaddy/

if ( ACF ) then
	
	ACF.Extra = ACF.Extra or {}
	
	if ( SERVER ) then
		
		include( "acfe/sv_thrust.lua" )
		
		print( "[ACF-Extra] ACF Extra successfully loaded." )
		
	end
	
else -- if not ACF
	
	print( "[ACF-Extra] ACF Base addon not found! ACF Extra will not be loaded.")
	
end