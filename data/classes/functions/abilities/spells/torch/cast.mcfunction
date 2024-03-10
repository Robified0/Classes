##Executing as player who just right-clicked (mage/system/castspell/firespell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={ru.Experience=5..}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={ru.Experience=5..}] run function classes:abilities/spells/torch/zprivate/setparams
