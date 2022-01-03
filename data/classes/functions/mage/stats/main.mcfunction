execute unless data entity @s Attributes[{Base: 3.0d,Name:"minecraft:generic.attack_speed"}] run attribute @s minecraft:generic.attack_speed base set 3
execute unless data entity @s Attributes[{Base: -1.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -1

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/mage/head] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/chest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/legs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/feet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
