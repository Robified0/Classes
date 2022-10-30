##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=6..},advancements={classes:healer/learnspell/healing/prevention=true}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=6..},x_rotation=87..90,advancements={classes:healer/learnspell/healing/prevention=true}] run function classes:healer/spells/healing/prevention/effects/self

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=6..},advancements={classes:healer/learnspell/healing/prevention=true}] unless entity @s[x_rotation=87..90] run function classes:healer/spells/healing/prevention/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=6..},advancements={classes:healer/learnspell/healing/prevention=false}] run function classes:main/mana_system/healer/noknowledge
