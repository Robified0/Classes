#Particle Effect
particle end_rod ^-0.4 ^0.2 ^0.3 0.01 0.01 0.01 0.01 1 force

#Sound
execute at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.05 2

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run function classes:abilities/spells/light/zprivate/end

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:abilities/spells/light/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:abilities/spells/light/zprivate/end
