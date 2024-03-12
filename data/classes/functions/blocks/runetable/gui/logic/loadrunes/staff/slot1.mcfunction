#Slot 1
item replace block ~ ~ ~ container.12 with minecraft:structure_block[minecraft:lore=['{translate:item.classes.rune.desc, color:gray}'],minecraft:custom_data={cl.isRune:1b,cl.isStaffRune:1b}]
data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_model_data" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot1"[0]
data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_name" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[0]
data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:lore" insert 1 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[1]
data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:lore" insert 2 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[2]
data modify block ~ ~ ~ Items[{Slot:12b}].components."minecraft:lore" insert 3 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[3]
