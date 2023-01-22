##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Not Enough Mana
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/iceshard=true}] run function classes:main/mana_system/nomana

#Raycast
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/iceshard=true}] run function classes:abilities/spells/iceshard/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/iceshard=false}] run function classes:main/mana_system/mage/noknowledge
