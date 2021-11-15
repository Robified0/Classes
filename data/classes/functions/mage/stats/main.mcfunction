execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -4
execute if entity @s[nbt={Health:20.0f},scores={cl.e.Vitality=..0}] run attribute @s minecraft:generic.max_health base set 14
execute if entity @s[nbt={Health:20.0f},scores={cl.e.Vitality=..0}] run effect give Robified minecraft:instant_damage 1 0

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/mage/head] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/chest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/legs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/feet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
