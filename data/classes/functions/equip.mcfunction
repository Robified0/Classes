#Make sure 0 is avoided.
execute if entity @s[scores={loadSpell=0}] run scoreboard players set @s loadSpell 1

#Perform the equipping of spells
execute if entity @s[scores={equipSpell=1}] run function classes:mage/spells/firebolt/equip
execute if entity @s[scores={equipSpell=2}] run function classes:mage/spells/bedofcoals/equip
execute if entity @s[scores={equipSpell=3}] run function classes:mage/spells/levitate/equip
execute if entity @s[scores={equipSpell=4}] run function classes:mage/spells/firebolt/equip
execute if entity @s[scores={equipSpell=5}] run function classes:mage/spells/firebolt/equip
execute if entity @s[scores={equipSpell=6}] run function classes:mage/spells/firebolt/equip
execute if entity @s[scores={equipSpell=7}] run function classes:mage/spells/firebolt/equip

#Reset equipSpell back to 0
scoreboard players set @s equipSpell 0
