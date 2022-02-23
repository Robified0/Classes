##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/earth/ironflesh=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/earth/ironflesh=true}] at @s run function classes:mage/spells/earth/ironflesh/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=8..},advancements={classes:mage/learnspell/earth/ironflesh=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/ironflesh
