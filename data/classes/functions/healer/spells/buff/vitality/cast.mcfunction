##Executing as player who just right-clicked (healer/system/castspell/buffspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=4..},advancements={classes:healer/learnspell/buff/vitality=true}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=4..},x_rotation=87..90,advancements={classes:healer/learnspell/buff/vitality=true}] run function classes:healer/spells/buff/vitality/effects/self

#Raycast
execute if entity @s[scores={cl.Mana=4..},advancements={classes:healer/learnspell/buff/vitality=true}] unless entity @s[x_rotation=87..90] run function classes:healer/spells/buff/vitality/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=4..},advancements={classes:healer/learnspell/buff/vitality=false}] run function classes:main/mana_system/healer/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:healer/spells/buff/vitality
