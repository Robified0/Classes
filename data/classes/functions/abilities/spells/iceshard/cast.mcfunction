##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Not Enough Mana
execute unless entity @s[scores={cl.Mana=2..}] run function classes:main/mana_system/nomana

#Raycast
execute if entity @s[scores={cl.Mana=2..}] run function classes:abilities/spells/iceshard/zprivate/setparams
