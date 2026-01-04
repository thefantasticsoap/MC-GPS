summon item_display ~25 ~ ~ {Invulnerable:1b,Silent:1b,Tags:["mcgps_sat1","mcgps_TAG_satellite_entity"]}
summon item_display ~ ~ ~25 {Invulnerable:1b,Silent:1b,Tags:["mcgps_sat2","mcgps_TAG_satellite_entity"]}
summon item_display ~-25 ~ ~-25 {Invulnerable:1b,Silent:1b,Tags:["mcgps_sat3","mcgps_TAG_satellite_entity"]}
execute store result score mcgps_sat1 z run data get entity @n[tag=mcgps_sat1] Pos[0]
execute store result score mcgps_sat1 x run data get entity @n[tag=mcgps_sat1] Pos[2]
execute store result score mcgps_sat1 d run execute at @n[tag=mcgps_sat1] run locate structure village_plains
execute store result score mcgps_sat2 z run data get entity @n[tag=mcgps_sat2] Pos[0]
execute store result score mcgps_sat2 z1 run data get entity @n[tag=mcgps_sat2] Pos[0]
execute store result score mcgps_sat2 x run data get entity @n[tag=mcgps_sat2] Pos[2]
execute store result score mcgps_sat2 x1 run data get entity @n[tag=mcgps_sat2] Pos[2]
execute store result score mcgps_sat2 d run execute at @n[tag=mcgps_sat2] run locate structure village_plains
execute store result score mcgps_sat3 z run data get entity @n[tag=mcgps_sat3] Pos[0]
execute store result score mcgps_sat3 x run data get entity @n[tag=mcgps_sat3] Pos[2]
execute store result score mcgps_sat3 d run execute at @n[tag=mcgps_sat3] run locate structure village_plains


kill @e[tag=mcgps_TAG_satellite_entity]
#squares
scoreboard players operation root z1 = mcgps_sat1 z
scoreboard players operation root z2 = mcgps_sat2 z
scoreboard players operation root z3 = mcgps_sat3 z
scoreboard players operation root x1 = mcgps_sat1 x
scoreboard players operation root x2 = mcgps_sat2 x
scoreboard players operation root x3 = mcgps_sat3 x

scoreboard players operation root d1 = mcgps_sat1 d
scoreboard players operation root d2 = mcgps_sat2 d
scoreboard players operation root d3 = mcgps_sat3 d
scoreboard players operation root d4 = mcgps_sat2 d

execute store result score square z1 run scoreboard players operation root z1 *= root z1
execute store result score square z2 run scoreboard players operation root z2 *= root z2
execute store result score square z3 run scoreboard players operation root z3 *= root z3
execute store result score square x1 run scoreboard players operation root x1 *= root x1
execute store result score square x2 run scoreboard players operation root x2 *= root x2
execute store result score square x3 run scoreboard players operation root x3 *= root x3

execute store result score square d1 run scoreboard players operation root d1 *= root d1
execute store result score square d2 run scoreboard players operation root d2 *= root d2
execute store result score square d3 run scoreboard players operation root d3 *= root d3

scoreboard players operation square2 z2 = square z2
scoreboard players operation square2 x2 = square x2
scoreboard players operation square2 d2 = square d2
#mcgps_global A
execute store result score mcgps_global A run scoreboard players operation mcgps_sat1 z *= mcgps_global constA
execute store result score mcgps_global2 A run scoreboard players operation mcgps_sat2 z *= mcgps_global constB
scoreboard players operation mcgps_global A += mcgps_global2 A
#mcgps_global B
execute store result score mcgps_global B run scoreboard players operation mcgps_sat1 x *= mcgps_global constA
execute store result score mcgps_global2 B run scoreboard players operation mcgps_sat2 x *= mcgps_global constB
scoreboard players operation mcgps_global B += mcgps_global2 B
#mcgps_global D
execute store result score mcgps_global D run scoreboard players operation mcgps_sat2 z1 *= mcgps_global constA
execute store result score mcgps_global2 D run scoreboard players operation mcgps_sat3 z *= mcgps_global constB
scoreboard players operation mcgps_global D += mcgps_global2 D
#mcgps_global E
execute store result score mcgps_global E run scoreboard players operation mcgps_sat2 x1 *= mcgps_global constA
execute store result score mcgps_global2 E run scoreboard players operation mcgps_sat3 x *= mcgps_global constB
scoreboard players operation mcgps_global E += mcgps_global2 E
#mcgps_global C
execute store result score mcgps_global C run scoreboard players operation square d1 -= square d2
scoreboard players operation mcgps_global C -= square z1
scoreboard players operation mcgps_global C += square z2
scoreboard players operation mcgps_global C -= square x1
scoreboard players operation mcgps_global C += square x2
#mcgps_global F
execute store result score mcgps_global F run scoreboard players operation square2 d2 -= square d3
scoreboard players operation mcgps_global F -= square2 z2
scoreboard players operation mcgps_global F += square z3
scoreboard players operation mcgps_global F -= square2 x2
scoreboard players operation mcgps_global F += square x3
#duplicate
scoreboard players operation mcgps_global2 A = mcgps_global A
scoreboard players operation mcgps_global3 A = mcgps_global A
scoreboard players operation mcgps_global2 B = mcgps_global B
scoreboard players operation mcgps_global3 B = mcgps_global B
scoreboard players operation mcgps_global2 E = mcgps_global E
scoreboard players operation mcgps_global3 E = mcgps_global E
scoreboard players operation mcgps_global2 D = mcgps_global D
scoreboard players operation mcgps_global3 D = mcgps_global D
scoreboard players operation mcgps_global2 F = mcgps_global F
scoreboard players operation mcgps_global2 C = mcgps_global C

#mcgps_global x
execute store result score mcgps_global x run scoreboard players operation mcgps_global C *= mcgps_global E
execute store result score mcgps_global2 x run scoreboard players operation mcgps_global F *= mcgps_global B
scoreboard players operation mcgps_global x -= mcgps_global2 x
execute store result score mcgps_global2 x run scoreboard players operation mcgps_global2 E *= mcgps_global A
execute store result score mcgps_global3 x run scoreboard players operation mcgps_global2 B *= mcgps_global D
scoreboard players operation mcgps_global2 x -= mcgps_global3 x
scoreboard players operation mcgps_global x /= mcgps_global2 x

#mcgps_global z
execute store result score mcgps_global z run scoreboard players operation mcgps_global2 C *= mcgps_global2 D
execute store result score mcgps_global2 z run scoreboard players operation mcgps_global2 A *= mcgps_global2 F
scoreboard players operation mcgps_global z -= mcgps_global2 z
execute store result score mcgps_global2 z run scoreboard players operation mcgps_global3 B *= mcgps_global3 D
execute store result score mcgps_global3 z run scoreboard players operation mcgps_global3 A *= mcgps_global3 E
scoreboard players operation mcgps_global2 z -= mcgps_global3 z
scoreboard players operation mcgps_global z /= mcgps_global2 z

execute store result storage mcgps:data x double 1 run scoreboard players get mcgps_global x
execute store result storage mcgps:data z double 1 run scoreboard players get mcgps_global z


function mcgps:execute


scoreboard players set @s mcgps_trigger 0
scoreboard players enable @a mcgps_trigger