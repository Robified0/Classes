### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute if entity @s[scores={Mana=2..}] run scoreboard players set dst_per slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
execute if entity @s[scores={Mana=2..}] run scoreboard players set dst slowcast 48

execute positioned ~ ~1.45 ~ run function classes:mage/spells/iceshard/start
