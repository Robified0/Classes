#Particle Effect
particle dust 0.129 0.914 1.000 1 ^0.4 ^0.2 ^0.3 0.1 0.1 0.1 2 10 force

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25 1.2
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run effect give @s minecraft:slowness 10 1 false
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run effect give @s minecraft:instant_damage 1 0 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run effect give @s minecraft:instant_health 1 0 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run effect give @s minecraft:instant_damage 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run effect give @s minecraft:instant_health 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,predicate=classes:entities/angry,tag=!cl.summoned,tag=!cl.Owned] at @s run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.this,type=!#classes:nontarget,tag=!cl.summoned,tag=!cl.Owned] run kill @e[type=marker,tag=cl.iceshard,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/iceshard/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/iceshard/zprivate/end
