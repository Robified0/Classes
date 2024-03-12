#Slot 2
item replace block ~ ~ ~ container.13 with minecraft:structure_block[minecraft:lore=['{translate:item.classes.rune.desc, color:gray}'],minecraft:custom_data={cl.isRune:1b,cl.isStaffRune:1b}]
data modify block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_model_data" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"."cl.slot2"[0]
data modify block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_name" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[5]
data modify block ~ ~ ~ Items[{Slot:13b}].components."minecraft:lore" insert 1 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[6]
data modify block ~ ~ ~ Items[{Slot:13b}].components."minecraft:lore" insert 2 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[7]
data modify block ~ ~ ~ Items[{Slot:13b}].components."minecraft:lore" insert 3 from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:lore"[8]
