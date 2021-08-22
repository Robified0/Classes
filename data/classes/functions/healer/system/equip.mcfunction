#Make sure 0 is avoided.
execute if entity @s[scores={cl.loadSpell=0}] run scoreboard players set @s cl.loadSpell 1

#Perform the equipping of healing spells
execute if entity @s[scores={cl.s.Heal=0,cl.equipSpell=500}] run function classes:healer/spells/heal/equip

#Reset equipSpell back to 0
scoreboard players set @s cl.equipSpell 0
