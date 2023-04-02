#Slot 1
item replace block ~ ~ ~ container.12 with minecraft:structure_block{display:{Lore:['{"translate":"item.classes.rune.desc","color":"gray"}']},HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot1"[0]
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[0]
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[1]
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore insert 2 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[2]
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore insert 3 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[3]
