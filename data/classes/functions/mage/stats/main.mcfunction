execute store result score @s cl.o.genAtkSpd run attribute @s minecraft:generic.attack_speed get
execute store result score @s cl.o.genAtkDmg run attribute @s minecraft:generic.attack_damage get
execute unless entity @s[scores={cl.o.getAtkSpd=3}] run attribute @s minecraft:generic.attack_speed base set 3
execute unless entity @s[scores={cl.o.getAtkDmg=0}] run attribute @s minecraft:generic.attack_damage base set 0

#Set Mage Armor score to 0 first
scoreboard players set @s cl.Mage.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/mage/head] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/chest] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/legs] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/feet] cl.Mage.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/mage/shield] cl.Mage.Armor 1
