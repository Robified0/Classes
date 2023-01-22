##Executing as player who just right-clicked (healer/system/castspell/smiting)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=1..},tag=cl.knowsSpell.HolyStrike] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=1..},tag=cl.knowsSpell.HolyStrike] run function classes:abilities/spells/light/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},tag=!cl.knowsSpell.HolyStrike] run function classes:main/mana_system/mage/noknowledge
