##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/smiting/bolt=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/smiting/bolt=true}] run function classes:healer/spells/smiting/bolt/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:healer/learnspell/smiting/bolt=false}] run function classes:main/mana_system/healer/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/smiting/bolt
