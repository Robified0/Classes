### Cast Bless on player looking down
## Executing as player looking down, casting Bless

effect give @s minecraft:absorption 20 1 false
scoreboard players set @s cl.e.Bless 400

#Play sound effect - use here when needing once.
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Particles
particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.01 10 force
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Depletion
scoreboard players remove @s cl.Mana 2
