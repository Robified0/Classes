#Slot 1
item replace block ~ ~ ~ container.13 with minecraft:structure_block{HideFlags:127,cl.isRune:1b}
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot2"[0]
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[4]
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[5]
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[6]

data modify block ~ ~ ~ Items[{Slot:13b}].tag.HideFlags set value 127
data modify block ~ ~ ~ Items[{Slot:13b}].tag."cl.isRune" set value 1b
