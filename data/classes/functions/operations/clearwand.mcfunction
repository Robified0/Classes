#Mage Spells
execute as @s[scores={cl.Class=3}] run function classes:operations/clearwand/mage

#Healer Spells
execute as @s[scores={cl.Class=4}] run function classes:operations/clearwand/healer

#Reset equipSpell back to 0
scoreboard players set @s cl.equipSpell 0

#Reset loadSpell back to 1 (allowing re-equipping of spells)
scoreboard players set @s cl.loadSpell 0
