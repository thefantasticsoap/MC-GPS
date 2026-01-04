### !!!FOR USE IN YOUR DATAPACK!!!
# Copy ALL of the Scoreboard (Variable) commands below into your datapack's [load.mcfunction]
# All of the commented text (#) is purely for accesibility and is not required for the pack to work.




# THIS FILE IS OUR INITALIZER -
# This file runs once, whenever a new world with the pack is created, or whenever /reload is used.
# Here we'll initiate all of our scoreboard "variables"
# We'll use these values to track, store, and compute our location!


# LOCATION X & Y -
# These are probably the two most important variables in the pack.
# These will store the final coordinates of our tracked location.
# The [x] variable will be the X coordinate of the final location.
# The [z] variable will be the z coordinate of the final location.

scoreboard objectives add x dummy
scoreboard objectives add z dummy


# CALCULATION VARIABLES -
# These will be used for copying values, and storing iterations of them throughout the calculation.
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

scoreboard objectives add A dummy
scoreboard objectives add B dummy
scoreboard objectives add C dummy
scoreboard objectives add D dummy
scoreboard objectives add E dummy
scoreboard objectives add F dummy

# GLOBAL CONSTANTS
# These values will stay as -2 & 2 throught the calclulation, this way we can use 2 & -2 as numbers in our calculation.
# mcgps_global is a fake player, we'll use it to store our scoreboard values.
scoreboard objectives add constA dummy
scoreboard objectives add constB dummy

scoreboard players set mcgps_global constA -2
scoreboard players set mcgps_globl constB 2

