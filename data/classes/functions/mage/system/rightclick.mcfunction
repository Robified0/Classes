#Fire Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/firespell] run function classes:mage/system/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/waterspell] run function classes:mage/system/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/airspell] run function classes:mage/system/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/earthspell] run function classes:mage/system/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/magicspell] run function classes:mage/system/castspell/magicspell

#Magic Essence
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/magicessence] run function classes:mage/system/castspell/magicessence
