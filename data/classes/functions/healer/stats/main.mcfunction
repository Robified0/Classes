#Set Mage Armor score to 0 first
scoreboard players set @s cl.Healer.Armor 0

#Check for Armor
scoreboard players set @s[predicate=classes:checkarmor/healer/head] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/chest] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/legs] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/feet] cl.Healer.Armor 1
scoreboard players set @s[predicate=classes:checkarmor/healer/shield] cl.Healer.Armor 1
