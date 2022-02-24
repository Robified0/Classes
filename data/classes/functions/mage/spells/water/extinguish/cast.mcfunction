##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/extinguish=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/extinguish=true}] at @s run function classes:mage/spells/water/extinguish/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/extinguish=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/extinguish
