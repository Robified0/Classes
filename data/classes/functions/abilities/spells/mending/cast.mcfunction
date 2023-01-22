##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=1..},tag=cl.knowsSpell.Mending] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=1..},tag=cl.knowsSpell.Mending] run function classes:abilities/spells/mending/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},tag=!cl.knowsSpell.Mending] run function classes:main/mana_system/healer/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:abilities/spells/mending
