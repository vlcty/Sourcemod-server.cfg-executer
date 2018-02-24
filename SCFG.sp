#include <sourcemod>
#include <sdktools>

public Plugin myinfo =
{
	name = "SCFG",
	author = "Josef 'veloc1ty' Stautner",
	description = "Execute server.cfg on round and game start",
	version = "1.0",
	url = "https://blog.veloc1ty.de/"
};

public OnPluginStart()
{
    PrintToServer("SFCG: Initalized");
    HookEvent("round_start", ExecuteServerCfg, EventHookMode_PostNoCopy);
    HookEvent("game_start", ExecuteServerCfg, EventHookMode_PostNoCopy);
}

public ExecuteServerCfg(Handle:event, const String:name[], bool:dontBroadcast)
{
    ServerCommand("exec server.cfg");
    PrintToServer("SFCG: Executed server.cfg");
    return Plugin_Continue;
}
