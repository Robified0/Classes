#Slot 1
item replace block ~ ~ ~ container.14 with minecraft:structure_block
data modify block ~ ~ ~ Items[{Slot:14b}].tag."cl.spellNumber" set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3"[0]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3"[1]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[6]
data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[7]

#Reset first lore
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:201}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Magic Rune","color":"light_purple"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:202}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Fire Rune","color":"red"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:203}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Water Rune","color":"blue"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:204}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Air Rune","color":"gold"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:205}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Earth Rune","color":"dark_green"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CustomModelData:206}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set value '{"text":"Holy Rune","color":"green"}'

data modify block ~ ~ ~ Items[{Slot:14b}].tag.HideFlags set value 127
data modify block ~ ~ ~ Items[{Slot:14b}].tag."cl.isRune" set value 1b
