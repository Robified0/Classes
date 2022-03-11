### Executing as Mage player (operations/delay/20)

#Grab the current base stats. Compare to set values, and if not equal, then set.
execute store result score @s cl.o.maxHealth run attribute @s minecraft:generic.max_health base get
execute store result score @s cl.o.genAtkSpd run attribute @s minecraft:generic.attack_speed base get 100
execute store result score @s cl.o.genAtkDmg run attribute @s minecraft:generic.attack_damage base get 100
execute unless entity @s[scores={cl.o.getAtkSpd=370}] run attribute @s minecraft:generic.attack_speed base set 3.7
execute unless entity @s[scores={cl.o.getAtkDmg=100}] run attribute @s minecraft:generic.attack_damage base set 1
execute unless entity @s[scores={cl.o.maxHealth=20}] run attribute @s minecraft:generic.max_health base set 20

#Set Healer Armor score to 0 first
scoreboard players set @s cl.Healer.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/healer/head] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/chest] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/legs] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/feet] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/shield] cl.Healer.Armor 1
