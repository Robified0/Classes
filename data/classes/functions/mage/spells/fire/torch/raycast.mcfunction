#Particle Effect
particle small_flame ^-0.4 ^0.2 ^0.3 0.25 0.25 0.25 0.005 2 force
particle small_flame ^-0.4 ^0.2 ^0.3 0 0 0 0.005 2 force

#Play sound effect - use here when needing repeat
#execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Detect mob
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] unless score @s cl.slo_id = @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1] cl.slo_id at @s run function classes:mage/spells/fire/torch/effects/mob

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run kill @s

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/zprivate/end
