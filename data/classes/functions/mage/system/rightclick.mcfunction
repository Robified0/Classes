#Fire Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/firespell] at @s run function classes:mage/system/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/waterspell] at @s run function classes:mage/system/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/airspell] at @s run function classes:mage/system/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/earthspell] at @s run function classes:mage/system/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/magicspell] at @s run function classes:mage/system/castspell/magicspell
