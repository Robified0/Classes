##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=6..},advancements={classes:mage/learnspell/earth/diamondflesh=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=6..},advancements={classes:mage/learnspell/earth/diamondflesh=true}] run function classes:abilities/spells/diamondflesh/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=6..},advancements={classes:mage/learnspell/earth/diamondflesh=false}] run function classes:main/mana_system/mage/noknowledge
