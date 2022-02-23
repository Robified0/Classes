##Executing as player who just right-clicked (mage/system/castspell/airspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/air/levitate=true}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=2..},x_rotation=87..90,advancements={classes:mage/learnspell/air/levitate=true}] run function classes:mage/spells/air/levitate/effects/self

#Raycast
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/air/levitate=true}] unless entity @s[x_rotation=87..90] at @s run function classes:mage/spells/air/levitate/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/air/levitate=false}] at @s run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/air/levitate
