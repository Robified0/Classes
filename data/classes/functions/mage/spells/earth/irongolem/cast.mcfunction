##Executing as player who just right-clicked (mage/system/castspell/earthspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=10..},advancements={classes:mage/learnspell/earth/irongolem=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=10..},advancements={classes:mage/learnspell/earth/irongolem=true}] run function classes:mage/spells/earth/irongolem/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=10..},advancements={classes:mage/learnspell/earth/irongolem=false}] run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/earth/irongolem
