#Not Enough Mana
execute unless entity @s[scores={cl.Mana=2..}] run function classes:main/mana_system/nomana

### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set dst_per cl.slowcast 1
# how many half blocks to travel (24*0.5) = 12 blocks
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set dst cl.slowcast 100

execute if entity @s[scores={cl.Mana=2..}] at @s positioned ~ ~1.45 ~ run function classes:mage/spells/teleport/start

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/teleport
