##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=6..}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=6..}] run function classes:abilities/spells/diamondflesh/spell
