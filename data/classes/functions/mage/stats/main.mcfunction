execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
#execute if entity @s[nbt={Health:20.0f}] run effect give @s minecraft:instant_damage 1 0
execute if entity @s[nbt={Health:20.0f}] run attribute @s minecraft:generic.max_health base set 14

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:magearmorhead] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:magearmorchest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:magearmorlegs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:magearmorfeet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:magearmorshield] cl.Mage.Armor 1
