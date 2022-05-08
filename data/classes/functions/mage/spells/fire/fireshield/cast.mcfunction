##Executing as player who just right-clicked (mage/system/castspell/firespell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/fire/fireshield=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/fire/fireshield=true}] run function classes:mage/spells/fire/fireshield/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/fire/fireshield=false}] run function classes:main/mana_system/mage/noknowledge
