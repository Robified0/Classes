#Display message if player hasn't learned the spell.
execute unless entity @s[tag=cl.s.SnowGolem] run function classes:mage/spells/all/noknowledge

#Copy current slot # to spell scoreboard, only if player knows spell.
execute if entity @s[tag=cl.s.SnowGolem] run scoreboard players operation @s cl.s.SnowGolem = @s cl.loadSpell

#Set emptySlot scoreboard based on what slot spell was equipped to.
execute if score @s cl.s.SnowGolem matches 1 run function classes:operations/emptyslot/slot1
execute if score @s cl.s.SnowGolem matches 2 run function classes:operations/emptyslot/slot2
execute if score @s cl.s.SnowGolem matches 3 run function classes:operations/emptyslot/slot3
execute if score @s cl.s.SnowGolem matches 4 run function classes:operations/emptyslot/slot4
execute if score @s cl.s.SnowGolem matches 5 run function classes:operations/emptyslot/slot5

#Run function to increase current slot # to prepare for next spell equip
execute if entity @s[tag=cl.s.SnowGolem] as @s run function classes:operations/increasescore
