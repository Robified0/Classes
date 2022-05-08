##Executing as player who just right-clicked (mage/system/castspell/firespell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/fire/torch=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/fire/torch=true}] run function classes:mage/spells/fire/torch/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/fire/torch=false}] run function classes:main/mana_system/mage/noknowledge

#Modify item (for spell versioning)
#execute if score #cl.pref cl.pref.setFire matches 0 run item modify entity @s weapon.mainhand classes:mage/spells/fire/torch/noblock
#execute if score #cl.pref cl.pref.setFire matches 1 run item modify entity @s weapon.mainhand classes:mage/spells/fire/torch/lightblocks
