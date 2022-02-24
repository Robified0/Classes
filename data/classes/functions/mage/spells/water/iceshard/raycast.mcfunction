#Particle Effect
particle dust 0.129 0.914 1.000 1 ^0.4 ^0.2 ^0.3 0.1 0.1 0.1 2 10 force

#Play sound effect - use here when needing repeat
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned] at @s run function classes:mage/spells/water/iceshard/effects/mob

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/iceshard/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/iceshard/zprivate/end
