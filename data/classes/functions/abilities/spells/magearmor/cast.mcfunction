##Executing as player who just right-clicked (mage/system/castspell/magicspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..}] run function classes:abilities/spells/magearmor/spell
