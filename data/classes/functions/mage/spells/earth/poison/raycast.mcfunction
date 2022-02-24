#Particle Effect
particle dust 0.173 1.000 0.078 1 ^0.4 ^0.2 ^0.3 0.1 0.1 0.1 1 2 force

#Play sound effect - use here when needing repeat
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 0.15 0.01

#Detect entity, then do effects
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned] at @s run function classes:mage/spells/earth/poison/effects/mob

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/earth/poison/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/earth/poison/raycast
