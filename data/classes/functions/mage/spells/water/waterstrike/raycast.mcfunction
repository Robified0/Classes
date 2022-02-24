#Particle Effect
particle minecraft:falling_dripstone_water ^0.4 ^0.2 ^0.3 0.2 0.2 0.2 1 10 force

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!cl.t.summoned,tag=!cl.t.Owned] run function classes:mage/spells/water/waterstrike/effects/mob

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/water/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/zprivate/end
