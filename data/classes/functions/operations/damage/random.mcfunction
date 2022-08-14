# Get the UUID of the spell marker, and generate a random number off of it.
# Range set in setup parameter file of spells.
execute store result score @s cl.damageRandom run data get entity @s UUID[0] 1
scoreboard players operation @s cl.damageRandom %= @s cl.damageRange
