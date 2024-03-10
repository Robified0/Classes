execute if score @s cl.EnchantNumber matches 0 run scoreboard players set @s cl.EnchantNumber 4
execute unless score @s cl.EnchantNumber matches 1.. run scoreboard players set @s cl.EnchantNumber 1
#First slot
execute if score @s cl.EnchantNumber matches 1 run loot replace block ~ ~ ~ container.16 loot classes:items/runes/fire/torch

#Second Slot
execute if score @s cl.EnchantNumber matches 2 run loot replace block ~ ~ ~ container.16 loot classes:items/runes/fire/bedofcoals

#Third Slot
execute if score @s cl.EnchantNumber matches 3 run loot replace block ~ ~ ~ container.16 loot classes:items/runes/fire/flameburst

#Fourth Slot
execute if score @s cl.EnchantNumber matches 4 run loot replace block ~ ~ ~ container.16 loot classes:items/runes/fire/fireshield

#Finish
execute if score @s cl.EnchantNumber matches 5.. run scoreboard players set @s cl.EnchantNumber 1
