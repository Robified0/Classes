execute unless data entity @s Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -4
execute unless score @s cl.e.Vitality < 1 if entity @s[nbt=!{Health:20.0f}] run attribute @s minecraft:generic.max_health base set 20
execute unless score @s cl.e.Vitality < 1  if entity @s[nbt=!{Health:20.0f},scores=!{cl.e.Vitality=1..}] run effect give Robified minecraft:instant_health 1 5

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Healer.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/healer/head] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/chest] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/legs] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/feet] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/shield] cl.Healer.Armor 1
