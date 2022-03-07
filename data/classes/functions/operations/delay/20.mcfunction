### Runs commands here once every second (20 ticks)

#Run function when #cl.t.20Tick score hits 20 (operations/delay/main)
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[0] run function classes:crafting/magictable/recipes/main

#Stat handling
execute as @a[scores={cl.Class=1}] run function classes:knight/stats/main
execute as @a[scores={cl.Class=2}] run function classes:ranger/stats/main
execute as @a[scores={cl.Class=3}] run function classes:mage/stats/main
execute as @a[scores={cl.Class=4}] run function classes:healer/stats/main

#Check for items
execute as @e[type=item,tag=!cl.o.item.spell,tag=!cl.t.processed] run function classes:operations/items/tag

#If player died, and keepInventory is off, display particles for dropped spells
execute as @e[type=item,tag=cl.o.item.spell] at @s run particle minecraft:portal ~ ~0.1 ~ 0.04 0.05 0.04 0.1 50 force

#Bless handling
execute as @a[scores={cl.e.Bless=1..}] run function classes:operations/checks/bless

#Check for Ranger potions, and set cl.t.PotionEff for tracking
execute as @a[scores={cl.Class=2},predicate=classes:ranger/potion/check] at @s run function classes:ranger/system/potion/check/main

#Check for Ranger holding bow/crossbow in mainhand
execute as @a[scores={cl.Class=2}] run function classes:ranger/stats/bow

#Check if Knight is holding up shield
execute as @a[scores={cl.Class=1,cl.t.blocking=1..}] at @s run function classes:knight/system/blocking

#Check if Knight is low on Health
execute as @a[scores={cl.Class=1,cl.t.blocking=1..}] at @s run function classes:knight/system/blocking

#Take Raiders for Knight ability
execute as @e[type=#classes:illagers,tag=!cl.t.Raider,tag=!cl.t.NotRaider] run function classes:operations/entities/raiders/tag

#Handle Knight bonuses for Raids
execute as @a[scores={cl.Class=1}] at @s if entity @e[type=#classes:illagers,tag=cl.t.Raider,distance=..10] run function classes:knight/system/raid/main

#Reset score
scoreboard players set #cl.t.20Tick cl.t.Tick 0
