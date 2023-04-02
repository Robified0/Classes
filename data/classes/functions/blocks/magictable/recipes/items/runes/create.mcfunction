item replace block ~ ~ ~ container.16 with minecraft:structure_block{display:{Lore:['{"translate":"item.classes.rune.desc","color":"gray"}']},HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set from block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag."cl.spell.craft"
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set from block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag.display.Lore[9]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 2 from block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag.display.Lore[10]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 3 from block ~ ~ ~ Items[{tag:{cl.book.template:1b}}].tag.display.Lore[11]

#Run sound file
function classes:blocks/magictable/gui/logic/sounds/magic
