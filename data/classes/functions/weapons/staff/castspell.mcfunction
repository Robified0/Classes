#Fire Spells
execute if entity @s[scores={cl.spell.selected=200..299}] run function classes:weapons/staff/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.spell.selected=300..399}] run function classes:weapons/staff/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.spell.selected=400..499}] run function classes:weapons/staff/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.spell.selected=500..599}] run function classes:weapons/staff/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.spell.selected=600..699}] run function classes:weapons/staff/castspell/magicspell

#Holy
execute if entity @s[scores={cl.spell.selected=700..799}] run function classes:weapons/staff/castspell/holyspell

#Holy Essence
execute if entity @s[predicate=classes:items/souls/soul] run function classes:healer/system/castspell/holyessence
