##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/water/blizzard=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/water/blizzard=true}] run function classes:abilities/spells/blizzard/spell

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=1..},advancements={classes:mage/learnspell/water/blizzard=false}] run function classes:main/mana_system/mage/noknowledge
