##Executing as player who just right-clicked (mage/system/castspell/healingspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=6..}] run function classes:main/mana_system/nomana

#Cast on self
execute if entity @s[scores={cl.Mana=6..},x_rotation=87..90] run function classes:abilities/spells/prevention/effects/self

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=6..}] unless entity @s[x_rotation=87..90] run function classes:abilities/spells/prevention/zprivate/setparams
