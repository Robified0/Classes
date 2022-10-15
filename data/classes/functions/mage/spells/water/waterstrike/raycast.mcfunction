#Particle Effect
particle minecraft:falling_dripstone_water ^-0.4 ^0.2 ^0.3 0.2 0.2 0.2 1 10 force

#Do these things when spell hits
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] unless score @s cl.slo_id = @e[type=marker,tag=cl.r.waterstrike,sort=nearest,limit=1] cl.slo_id at @s run function classes:mage/spells/water/waterstrike/effects/mob
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=!#classes:nontarget,tag=cl.t.Owned,dx=0,dy=0,dz=0] run data merge entity @s {Fire:1}
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!cl.r.this] run effect give @s fire_resistance 1 0 true
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!cl.r.this] run effect clear @s fire_resistance
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run kill @s

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/water/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/zprivate/end
