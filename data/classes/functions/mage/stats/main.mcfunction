execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
execute if entity @s[nbt={Health:20.0f}] run attribute @s minecraft:generic.max_health base set 14

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/mage/head] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/chest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/legs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/feet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
