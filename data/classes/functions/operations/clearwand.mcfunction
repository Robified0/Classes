#Mage Spells
execute as @s[scores={class=3}] run function classes:operations/clearwand/mage

#Healer Spells
execute as @s[scores={class=4}] run function classes:operations/clearwand/mage

#Reset equipSpell back to 0
scoreboard players set @s equipSpell 0

#Reset loadSpell back to 1 (allowing re-equipping of spells)
scoreboard players set @s loadSpell 0
