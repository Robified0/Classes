item replace block ~ ~ ~ container.16 with minecraft:structure_block
execute if block ~ ~ ~ barrel{Items:[{tag:{cl.book.template:1b}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:12b}].tag.display.Name
execute if block ~ ~ ~ barrel{Items:[{tag:{cl.book.template:1b}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[0]
execute if block ~ ~ ~ barrel{Items:[{tag:{cl.book.template:1b}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 2 from block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[1]
execute if block ~ ~ ~ barrel{Items:[{tag:{cl.book.template:1b}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore insert 3 value '{"text":""}'
execute if data block ~ ~ ~ Items[{cl.book.template:1b}].tag."cl.spell.craft" run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData insert 0 from block ~ ~ ~ Items[{Slot:10b}].tag."cl.spell.craft"
