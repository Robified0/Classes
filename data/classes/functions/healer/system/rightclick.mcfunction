#Healing Spells
execute if entity @s[scores={cl.spell.selected=700..799},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:healer/system/castspell/healingspell

#Buff Spells
execute if entity @s[scores={cl.spell.selected=800..899},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:healer/system/castspell/buffspell

#Smiting Spells
execute if entity @s[scores={cl.spell.selected=900..999},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/spiritessence/spiritessence] run function classes:healer/system/castspell/smitingspell

#Holy Essence
execute if entity @s[predicate=classes:items/spiritessence/spiritessence] run function classes:healer/system/castspell/holyessence

#Spellbook
execute if entity @s[predicate=classes:items/books/book,predicate=!classes:items/books/spellbook] run function classes:healer/system/castspell/spellbook


#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
execute positioned ~ -70 ~ if entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/existing
execute positioned ~ -70 ~ unless entity @e[type=minecraft:chest_minecart,distance=..2] at @s if entity @s[predicate=classes:items/books/spellbook] run function classes:operations/track/spellequip/minecart/main
