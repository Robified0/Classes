#Fire Spells
execute if entity @s[scores={cl.spell.selected=200..299},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.spell.selected=300..399},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.spell.selected=400..499},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.spell.selected=500..599},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.spell.selected=600..699},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/magicspell

#Healing Spells
execute if entity @s[scores={cl.spell.selected=700..799},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/healingspell

#Buff Spells
execute if entity @s[scores={cl.spell.selected=800..899},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/buffspell

#Smiting Spells
execute if entity @s[scores={cl.spell.selected=900..999},predicate=!classes:items/books/book,predicate=!classes:items/books/spellbook,predicate=!classes:items/souls/soul] run function classes:weapons/staff/castspell/smitingspell

#Holy Essence
execute if entity @s[predicate=classes:items/souls/soul] run function classes:healer/system/castspell/holyessence


#Magic Essence
execute if entity @s[predicate=classes:items/souls/soul,predicate=!classes:items/books/spellbook] run function classes:weapons/staff/castspell/magicessence
