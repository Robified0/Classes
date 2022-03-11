### Executing as Mage player (operations/delay/20)

#Grab the current base stats. Compare to set values, and if not equal, then set.
execute store result score @s cl.o.maxHealth run attribute @s minecraft:generic.max_health base get
execute store result score @s cl.o.genAtkSpd run attribute @s minecraft:generic.attack_speed base get 100
execute store result score @s cl.o.genAtkDmg run attribute @s minecraft:generic.attack_damage base get 100
execute unless entity @s[scores={cl.o.getAtkSpd=370}] run attribute @s minecraft:generic.attack_speed base set 3.7
execute unless entity @s[scores={cl.o.getAtkDmg=0}] run attribute @s minecraft:generic.attack_damage base set 0
execute unless entity @s[scores={cl.o.maxHealth=20}] run attribute @s minecraft:generic.max_health base set 20

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/mage/head] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/chest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/legs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/feet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
