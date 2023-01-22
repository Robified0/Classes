#Particle Effect
particle composter ^-0.4 ^0.2 ^0.3 0.3 0.3 0.3 1 2 force
particle wax_off ^-0.4 ^0.2 ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5

#Detect mob
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=#classes:undead,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] unless score @s cl.slo_id = @e[type=marker,tag=cl.r.holystrike,sort=nearest,limit=1] cl.slo_id at @s run function classes:abilities/spells/holystrike/effects/mob

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run kill @s

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:abilities/spells/holystrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:abilities/spells/holystrike/zprivate/end
