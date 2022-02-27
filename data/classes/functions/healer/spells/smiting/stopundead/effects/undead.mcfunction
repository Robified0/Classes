##Executing as undead mob within 10 blocks of player (healer/spells/smiting/stopundead/spell)

#Set loot table stuff
function classes:main/loot_table/main

#Stop Undead
data merge entity @s {NoAI:1b}

#Set counter
scoreboard players set @s cl.e.StopUndead 200

#Make them angry if they aren't already
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Particle effects
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 20 normal

#Play sound
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 0.5 2
