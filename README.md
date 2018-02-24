# Sourcemod-server.cfg-executer


## General

This sourcemod plugin execs the server.cfg file on every round and game start. I developed this plugin because Insurgency wouldn't load the whole server.cfg and that annoyed me. So I force the execution.

# Installation

Compile the SCFG.sp file on https://sourcemod.net/compiler.php and download the resulting SCFG.smx file. Place that file in your plugins folder. Mine is located under `insurgency/addons/sourcemod/plugins/`.

After a mapchange it should be listed. You can check it with `sm plugins list` on the server console or via rcon. Output should be:

```
18 "SCFG" (1.0) by Josef 'veloc1ty' Stautner
```

The plugins logs the following string when executing is finished:

```
SFCG: Executed server.cfg
 ```
