#Fire Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=200..299},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:mage/system/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=300..399},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:mage/system/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=400..499},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:mage/system/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=500..599},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:mage/system/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=600..699},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:mage/system/castspell/magicspell

#Magic Essence
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:items/spiritessence/spiritessence,predicate=!classes:items/books/spellbook] run function classes:mage/system/castspell/magicessence

#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
execute positioned ~ -70 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute positioned ~ -70 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main

#Spellbook
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:items/books/book,predicate=!classes:items/books/spellbook] run function classes:mage/system/castspell/spellbook
