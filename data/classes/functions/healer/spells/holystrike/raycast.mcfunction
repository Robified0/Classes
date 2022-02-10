#Particle Effect
particle composter ^-0.3 ^ ^0.3 0.3 0.3 0.3 1 3 force
particle end_rod ^-0.3 ^ ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 1.5

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run effect give @s minecraft:instant_health 1 2 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=wither] run effect give @s minecraft:instant_health 1 2 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 1 30 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.25 10 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,predicate=classes:entities/angry,tag=!summoned,tag=!cl.Owned] at @s run function classes:entities/vanilla/angry

#Edit tag/spellname and comment if you want it to hit more than one target
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run kill @e[type=marker,tag=holystrike,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:healer/spells/holystrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:healer/spells/holystrike/zprivate/end
