#Slot 1
item replace block ~ ~ ~ container.14 with minecraft:structure_block{HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3"[0]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[8]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[9]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[10]

data modify block ~ ~ ~ Items[{Slot:14b}].tag.HideFlags set value 127
data modify block ~ ~ ~ Items[{Slot:14b}].tag."cl.isRune" set value 1b
