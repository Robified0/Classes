##Executing as player who just right-clicked (mage/system/castspell/buffspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=8..},advancements={classes:healer/learnspell/buff/guard=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:healer/learnspell/buff/guard=true}] run function classes:healer/spells/buff/guard/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:healer/learnspell/buff/guard=false}] run function classes:main/mana_system/healer/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/buff/guard
