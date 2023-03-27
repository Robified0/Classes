#Slot 1
item replace block ~ ~ ~ container.15 with minecraft:structure_block{HideFlags:127,cl.isRune:1b,cl.isStaffRune:1b}
data modify block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4"[0]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[12]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[13]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[14]

data modify block ~ ~ ~ Items[{Slot:15b}].tag.HideFlags set value 127
data modify block ~ ~ ~ Items[{Slot:15b}].tag."cl.isRune" set value 1b
