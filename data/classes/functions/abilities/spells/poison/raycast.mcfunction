#Particle Effect
particle dust 0.173 1.000 0.078 1 ^-0.4 ^0.2 ^0.3 0.1 0.1 0.1 1 2 force

#Play sound effect - use here when needing repeat
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 0.15 0.01

#Detect entity, then do effects
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] at @s run function classes:abilities/spells/poison/effects/mob

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run kill @s

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:abilities/spells/poison/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:abilities/spells/poison/raycast
