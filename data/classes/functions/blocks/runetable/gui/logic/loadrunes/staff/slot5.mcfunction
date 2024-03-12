#Slot 5
item replace block ~ ~ ~ container.16 with minecraft:structure_block[minecraft:lore=['{translate:item.classes.rune.desc, color:gray}'],minecraft:custom_data={cl.isRune:1b,cl.isStaffRune:1b}]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot5"[0]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_name" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[20]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore" insert 1 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[21]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore" insert 2 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[22]
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:lore" insert 3 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[23]
