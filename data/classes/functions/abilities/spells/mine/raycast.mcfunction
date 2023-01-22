#Particle Effect
particle dust 0.173 1.000 0.078 1 ^-0.4 ^0.2 ^0.3 0.1 0.1 0.1 1 2 force

#Play sound effect - use here when needing repeat
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 0.15 0.01

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:mage/mine/mineable run function classes:abilities/spells/mine/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:mage/mine/mineable run function classes:abilities/spells/mine/raycast
