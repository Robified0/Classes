#Set score of marker
execute unless entity @s[scores={cl.EssenceCount=1..}] run scoreboard players set @s cl.EssenceCount 3600

#Reduce score of marker
execute as @s[scores={cl.EssenceCount=1..}] run scoreboard players remove @s cl.EssenceCount 1

#Soul Particles
execute at @s run particle minecraft:soul ~ ~ ~ 0 0.05 0 0.01 2 force

##Element specific Particles/Sounds
#Fire
execute as @s[tag=cl.ess.Fire] at @s run particle minecraft:small_flame ~ ~ ~ 0 0.1 0 0.015 5 force
execute as @s[tag=cl.ess.Fire] at @s run playsound minecraft:block.furnace.fire_crackle ambient @a ~ ~ ~ 0.4 1

#Water (sound not needed - particle effect comes with it)
execute as @s[tag=cl.ess.Water] at @s run particle minecraft:dripping_dripstone_water ~ ~ ~ 0.2 0.1 0.2 0.01 1 force

#Earth (no sound currently - working on finding good one)
execute as @s[tag=cl.ess.Earth] at @s run particle minecraft:falling_spore_blossom ~ ~ ~ 0.2 0.3 0.2 0.01 1 force

#Air
execute as @s[tag=cl.ess.Air] at @s run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.2 0.3 0.2 0.01 1 force
execute as @s[tag=cl.ess.Air] at @s run playsound minecraft:entity.horse.breathe ambient @a ~ ~ ~ 0.3 0.5

#Detect player
execute at @s positioned ~ ~-1 ~ if entity @p[distance=..1] run function classes:main/essences/learn

#Kill Essence
execute as @s[scores={cl.EssenceCount=..0}] run kill @s
