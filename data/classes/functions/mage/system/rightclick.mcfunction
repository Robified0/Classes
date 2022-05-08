#Fire Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=200..299},nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/firespell

#Water Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=300..399},nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/waterspell

#Air Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=400..499},nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/airspell

#Earth Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=500..599},nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/earthspell

#Generic Magic Spells
execute if entity @s[scores={cl.Mage.Armor=0,cl.spell.selected=600..699},nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/magicspell

#Magic Essence
execute if entity @s[scores={cl.Mage.Armor=0},predicate=classes:checkspell/mage/magicessence,nbt=!{SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/castspell/magicessence

#Handle spell selection (summon minecart, copy items, write to inventory, set score, and then clear the left over slots in the hotbar).
execute if entity @s[nbt={SelectedItem:{id:"minecraft:book"}}] run scoreboard players set @s cl.detect.book 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/spellequip/minecart/summon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/spellequip/gui/main

#Clear Hotbar (must come last out of this section, otherwise the arguments will evaluate to false)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:book"}}] run function classes:mage/system/spellequip/logic/clear/hotbar
execute if entity @s[scores={cl.detect.book=1}] run scoreboard players set @s change 1
execute if entity @s[scores={cl.detect.book=1}] run scoreboard players set @s cl.detect.book 0
