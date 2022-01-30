#Fire Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/firespell] at @s run function classes:mage/system/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/waterspell] at @s run function classes:mage/system/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/airspell] at @s run function classes:mage/system/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/earthspell] at @s run function classes:mage/system/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/magicspell] at @s run function classes:mage/system/castspell/magicspell
