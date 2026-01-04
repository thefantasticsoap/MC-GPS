data modify entity @s Owner set from entity @p UUID
data modify entity @s Pos[0] set from storage mcgps:data x
data modify entity @s Pos[2] set from storage mcgps:data z
execute at @s run spreadplayers ~ ~ 10 10 false @a
tellraw @a [{"text":"Teleported!","bold":1b,"color":"green"}]
kill @s