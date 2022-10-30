##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/healing/purify=true}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=2..},x_rotation=87..90,advancements={classes:healer/learnspell/healing/purify=true}] run function classes:healer/spells/healing/purify/effects/self

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/healing/purify=true}] unless entity @s[x_rotation=87..90] run function classes:healer/spells/healing/purify/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/healing/purify=false}] run function classes:main/mana_system/healer/noknowledge
