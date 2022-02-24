#Particle Effect
particle small_flame ^0.4 ^0.2 ^0.3 0.25 0.25 0.25 0.005 2 force
particle small_flame ^0.4 ^0.2 ^0.3 0 0 0 0.005 2 force

#Play sound effect - use here when needing repeat
#execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Detect mob & bosses
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned] at @s run function classes:mage/spells/fire/torch/effects/mob

#Detect boss - Wither is immune to fire.
execute positioned ~ ~-0.5 ~ as @e[dx=0,tag=!cl.r.this,type=ender_dragon] at @s run function classes:mage/spells/fire/torch/effects/boss

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/zprivate/end
