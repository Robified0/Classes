execute as @s[scores={spellFirebolt=3}] run function classes:mage/spells/firebolt/select
execute as @s[scores={spellBedofCoals=3}] run function classes:mage/spells/bedofcoals/select
execute as @s[scores={spellLevitate=3}] run function classes:mage/spells/levitate/select

#Check for empty slot
execute as @s[scores={emptySlot3=1}] run function classes:mage/spells/emptyslot
