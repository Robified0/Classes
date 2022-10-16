##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Not Enough Mana
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/deepfreeze=true}] run function classes:main/mana_system/nomana

#Raycast
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/deepfreeze=true}] run function classes:mage/spells/water/deepfreeze/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/deepfreeze=false}] run function classes:main/mana_system/mage/noknowledge
