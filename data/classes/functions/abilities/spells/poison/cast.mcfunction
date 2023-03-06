##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Not Enough Mana
execute unless entity @s[scores={cl.Mana=1..}] run function classes:main/mana_system/nomana

#Raycast
execute if entity @s[scores={cl.Mana=1..}] run function classes:abilities/spells/poison/zprivate/setparams
