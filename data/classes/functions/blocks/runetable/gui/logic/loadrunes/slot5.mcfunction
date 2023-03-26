#Slot 1
item replace block ~ ~ ~ container.16 with minecraft:structure_block{HideFlags:127,cl.isRune:1b}
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot5"[0]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[16]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[17]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[18]
