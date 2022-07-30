#Particle Effect
particle minecraft:falling_dripstone_water ^-0.4 ^0.2 ^0.3 0.2 0.2 0.2 1 10 force

#Do these things when spell hits
execute positioned ~-1 ~-1 ~-1 as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=1,dy=1,dz=1] at @s run function classes:mage/spells/water/waterstrike/effects/mob
execute positioned ~-1 ~-1 ~-1 as @e[tag=!cl.r.this,type=!#classes:nontarget,tag=cl.t.Owned,dx=1,dy=1,dz=1] run data merge entity @s {Fire:1}
execute positioned ~-1 ~-1 ~-1 as @a[tag=!cl.r.this] run effect give @s fire_resistance 1 0 true
execute positioned ~-1 ~-1 ~-1 as @a[tag=!cl.r.this] run effect clear @s fire_resistance

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/water/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/zprivate/end
