##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},tag=cl.knowsSpell.Purify] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=2..},x_rotation=87..90,tag=cl.knowsSpell.Purify] run function classes:abilities/spells/purify/effects/self

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},tag=cl.knowsSpell.Purify] unless entity @s[x_rotation=87..90] run function classes:abilities/spells/purify/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},tag=!cl.knowsSpell.Purify] run function classes:main/mana_system/healer/noknowledge
