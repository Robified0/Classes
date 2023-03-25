#Slot 1
item replace block ~ ~ ~ container.15 with minecraft:structure_block
data modify block ~ ~ ~ Items[{Slot:15b}].tag."cl.spellNumber" set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4"[0]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4"[1]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[9]
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore[10]

#Reset first lore
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:201}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Magic Rune","color":"light_purple"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:202}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Fire Rune","color":"red"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:203}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Water Rune","color":"blue"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:204}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Air Rune","color":"gold"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:205}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Earth Rune","color":"dark_green"}'
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{CustomModelData:206}}]} run data modify block ~ ~ ~ Items[{Slot:15b}].tag.display.Name set value '{"text":"Holy Rune","color":"green"}'

data modify block ~ ~ ~ Items[{Slot:15b}].tag.HideFlags set value 127
data modify block ~ ~ ~ Items[{Slot:15b}].tag."cl.isRune" set value 1b
