##Executing as player who just right-clicked (mage/system/castspell/magicspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/teleport=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/teleport=true}] at @s run function classes:mage/spells/magic/teleport/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/magic/teleport=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/magic/teleport
