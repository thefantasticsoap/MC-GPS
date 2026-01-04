summon item_display ~25 ~ ~ {Invulnerable:1b,NoGravitx:1b,Silent:1b,Tags:["mcgps_sat1","mcgps_TAG_satellite_entity"]}
summon item_display ~ ~ ~25 {Invulnerable:1b,NoGravitx:1b,Silent:1b,Tags:["mcgps_sat2","mcgps_TAG_satellite_entity"]}
summon item_display ~-25 ~ ~-25 {Invulnerable:1b,NoGravitx:1b,Silent:1b,Tags:["mcgps_sat3","mcgps_TAG_satellite_entity"]}
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
#calc A
execute store result score calc A run scoreboard players operation mcgps_sat1 z *= calc constN
execute store result score calc2 A run scoreboard players operation mcgps_sat2 z *= calc constP
scoreboard players operation calc A += calc2 A
#calc B
execute store result score calc B run scoreboard players operation mcgps_sat1 x *= calc constN
execute store result score calc2 B run scoreboard players operation mcgps_sat2 x *= calc constP
scoreboard players operation calc B += calc2 B
#calc D
execute store result score calc D run scoreboard players operation mcgps_sat2 z1 *= calc constN
execute store result score calc2 D run scoreboard players operation mcgps_sat3 z *= calc constP
scoreboard players operation calc D += calc2 D
#calc E
execute store result score calc E run scoreboard players operation mcgps_sat2 x1 *= calc constN
execute store result score calc2 E run scoreboard players operation mcgps_sat3 x *= calc constP
scoreboard players operation calc E += calc2 E
#calc C
execute store result score calc C run scoreboard players operation square d1 -= square d2
scoreboard players operation calc C -= square z1
scoreboard players operation calc C += square z2
scoreboard players operation calc C -= square x1
scoreboard players operation calc C += square x2
#calc F
execute store result score calc F run scoreboard players operation square2 d2 -= square d3
scoreboard players operation calc F -= square2 z2
scoreboard players operation calc F += square z3
scoreboard players operation calc F -= square2 x2
scoreboard players operation calc F += square x3
#duplicate
scoreboard players operation calc2 A = calc A
scoreboard players operation calc3 A = calc A
scoreboard players operation calc2 B = calc B
scoreboard players operation calc3 B = calc B
scoreboard players operation calc2 E = calc E
scoreboard players operation calc3 E = calc E
scoreboard players operation calc2 D = calc D
scoreboard players operation calc3 D = calc D
scoreboard players operation calc2 F = calc F
scoreboard players operation calc2 C = calc C

#calc x
execute store result score calc x run scoreboard players operation calc C *= calc E
execute store result score calc2 x run scoreboard players operation calc F *= calc B
scoreboard players operation calc x -= calc2 x
execute store result score calc2 x run scoreboard players operation calc2 E *= calc A
execute store result score calc3 x run scoreboard players operation calc2 B *= calc D
scoreboard players operation calc2 x -= calc3 x
scoreboard players operation calc x /= calc2 x

#calc z
execute store result score calc z run scoreboard players operation calc2 C *= calc2 D
execute store result score calc2 z run scoreboard players operation calc2 A *= calc2 F
scoreboard players operation calc z -= calc2 z
execute store result score calc2 z run scoreboard players operation calc3 B *= calc3 D
execute store result score calc3 z run scoreboard players operation calc3 A *= calc3 E
scoreboard players operation calc2 z -= calc3 z
scoreboard players operation calc z /= calc2 z

execute store result storage mcgps:data x double 1 run scoreboard players get calc x
execute store result storage mcgps:data z double 1 run scoreboard players get calc z


function mcgps:execute


scoreboard players set @s mcgps_trigger 0
scoreboard players enable @a mcgps_trigger