### !!!FOR USE IN YOUR DATAPACK!!!
# Copy ALL of the Scoreboard (Variable) commands below into your datapack's [load.mcfunction]
# All of the commented text (#) is purely for accesibility and is not required for the pack to work.




# THIS FILE IS OUR INITALIZER -
# Here we'll initiate all of our scoreboard "variables"
# We'll use these values to track, store, and compute our location!


# LOCATION X & Y -
# These are probably the two most important variables in the pack.
# These will store the final coordinates of our tracked location.
# The [x] variable will be the X coordinate of the final location.
# The [z] variable will be the z coordinate of the final location.

scoreboard objectives add x dummy
scoreboard objectives add z dummy



scoreboard objectives add x1 dummy
scoreboard objectives add x2 dummy
scoreboard objectives add x3 dummy

scoreboard objectives add z1 dummy
scoreboard objectives add z2 dummy
scoreboard objectives add z3 dummy

scoreboard objectives add d dummy
scoreboard objectives add d1 dummy
scoreboard objectives add d2 dummy
scoreboard objectives add d3 dummy
scoreboard objectives add d4 dummy

scoreboard objectives add constP dummy
scoreboard objectives add constN dummy

scoreboard players set calc constN -2
scoreboard players set calc constP 2

scoreboard objectives add A dummy
scoreboard objectives add B dummy
scoreboard objectives add C dummy
scoreboard objectives add D dummy
scoreboard objectives add E dummy
scoreboard objectives add F dummy