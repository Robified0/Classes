##Executing as player who just right-clicked (mage/system/castspell/magicspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/invisibility=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/invisibility=true}] run function classes:abilities/spells/invisibility/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/invisibility=false}] run function classes:main/mana_system/mage/noknowledge
