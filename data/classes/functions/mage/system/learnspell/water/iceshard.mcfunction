#Executing as player who has right-clicked on Teleport Spellbook

#Display message if spell has been learned.
execute unless entity @s[advancements={classes:mage/learnspell/water/iceshard=false}] run function classes:main/mana_system/learnedspell

#Replace the book
execute if entity @s[advancements={classes:mage/learnspell/water/iceshard=false}] run item replace entity @s weapon.mainhand with minecraft:air

#Give advancement
execute if entity @s[advancements={classes:mage/learnspell/water/iceshard=false}] run advancement grant @s only classes:mage/learnspell/water/iceshard
