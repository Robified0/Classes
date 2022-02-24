##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/snowgolem=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/snowgolem=true}] at @s run function classes:mage/spells/water/snowgolem/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:mage/learnspell/water/snowgolem=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/snowgolem
