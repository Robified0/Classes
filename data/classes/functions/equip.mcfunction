#Handle equipping for Mage.
execute if entity @s[scores={cl.Class=3,cl.equipSpell=1..}] run function classes:mage/system/equip

execute if entity @s[scores={cl.Class=4,cl.equipSpell=1..}] run function classes:healer/system/equip
