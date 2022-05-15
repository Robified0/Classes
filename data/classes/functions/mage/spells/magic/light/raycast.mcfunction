#Particle Effect
particle end_rod ^-0.4 ^0.2 ^0.3 0.01 0.01 0.01 0.01 1 force

#Sound
execute at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.05 2

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/magic/light/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/magic/light/zprivate/end
