##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=6..},tag=cl.knowsSpell.HolyStrike] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=6..},tag=cl.knowsSpell.HolyStrike] run function classes:abilities/spells/stopundead/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=6..},tag=!cl.knowsSpell.HolyStrike] run function classes:main/mana_system/healer/noknowledge

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:abilities/spells/stopundead
