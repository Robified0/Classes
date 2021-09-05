#Display message if player hasn't learned the spell.
execute unless entity @s[tag=cl.s.HolyStrike] run function classes:healer/spells/all/noknowledge

#Copy current slot # to spell scoreboard, only if player knows spell.
execute if entity @s[tag=cl.s.HolyStrike] run scoreboard players operation @s cl.s.HolyStrike = @s cl.loadSpell

#Set emptySlot scoreboard based on what slot spell was equipped to.
execute if score @s cl.s.HolyStrike matches 1 run function classes:operations/emptyslot/slot1
execute if score @s cl.s.HolyStrike matches 2 run function classes:operations/emptyslot/slot2
execute if score @s cl.s.HolyStrike matches 3 run function classes:operations/emptyslot/slot3
execute if score @s cl.s.HolyStrike matches 4 run function classes:operations/emptyslot/slot4
execute if score @s cl.s.HolyStrike matches 5 run function classes:operations/emptyslot/slot5

#Run function to increase current slot # to prepare for next spell equip
execute if entity @s[tag=cl.s.HolyStrike] as @s run function classes:operations/increasescore
