summon minecraft:ender_pearl ~ 400 ~ {Tags:["mcgps_teleporter"],NoGravity:1b,Motion:[0d,0d,0d]}
execute as @e[sort=nearest,limit=1,type=minecraft:ender_pearl,tag=mcgps_teleporter] run function mcgps:example_teleport/teleport_second
scoreboard players set @a mcgps_trigger1 0
scoreboard players enable @a mcgps_trigger1