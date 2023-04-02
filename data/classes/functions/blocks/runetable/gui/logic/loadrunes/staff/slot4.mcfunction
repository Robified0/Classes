#Slot 4
item replace block ~ ~ ~ container.15 with minecraft:structure_block{display:{Lore:['{"translate":"item.classes.rune.desc","color":"gray"}']},HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4"[0]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[15]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[16]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 2 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[17]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 3 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[18]
