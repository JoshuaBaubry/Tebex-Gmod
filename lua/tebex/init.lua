if not Tebex then
	Tebex = {}
	Tebex.commands = {}

	if not Tebex.consoleCommand then Tebex.consoleCommand = game.ConsoleCommand end

	file.CreateDir( "tebex" )

	Msg( "\n///////////////////////////////\n" )
	Msg( "//      TebexGmod v 0.1      //\n" )
	Msg( "//   https://www.tebex.io/   //\n" )
	Msg( "///////////////////////////////\n" )
	Msg( "// Loading...                //\n" )

--	include( "tebex/commands/info.lua" )
	include( "tebex/models/config.lua" )

	include( "tebex/commands/info.lua" )
	Msg( "///////////////////////////////\n\n" )

	config = TebexConfig:init()


	concommand.Add("tebex", function(ply, cmd, args, argsS)
		print (ply)
		print (cmd)
		PrintTable (args)
		print (argsS)
	end)
--game.ConsoleCommand( string stringCommand )

--[[
	local function clReady( ply )
		ply.ulib_ready = true
		hook.Call( ULib.HOOK_LOCALPLAYERREADY, _, ply )
	end
	concommand.Add( "ulib_cl_ready", clReady ) -- Called when the c-side player object is ready
--]]
end
