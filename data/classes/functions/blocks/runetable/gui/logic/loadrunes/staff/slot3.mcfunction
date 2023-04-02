#Slot 3
item replace block ~ ~ ~ container.14 with minecraft:structure_block{display:{Lore:['{"translate":"item.classes.rune.desc","color":"gray"}']},HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3"[0]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[10]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[11]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 2 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[12]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 3 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[13]
