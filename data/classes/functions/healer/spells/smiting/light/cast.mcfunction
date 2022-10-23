##Executing as player who just right-clicked (healer/system/castspell/smiting)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=1..},advancements={classes:healer/learnspell/smiting/light=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:healer/learnspell/smiting/light=true}] run function classes:healer/spells/smiting/light/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:healer/learnspell/smiting/light=false}] run function classes:main/mana_system/mage/noknowledge
