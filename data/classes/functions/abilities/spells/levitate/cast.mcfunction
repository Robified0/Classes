##Executing as player who just right-clicked (mage/system/castspell/airspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/levitate=true}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90,advancements={classes:mage/learnspell/air/levitate=true}] run function classes:abilities/spells/levitate/effects/self

#Raycast
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/levitate=true}] unless entity @s[x_rotation=87..90] run function classes:abilities/spells/levitate/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/air/levitate=false}] run function classes:main/mana_system/mage/noknowledge
