execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[0]
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 1 from block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[1]
execute if score @s cl.RuneTable.Slots matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 2 value '{"text":""}'
execute if score @s cl.RuneTable.Slots matches 1.. if data block ~ ~ ~ Items[{Slot:12b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot1" insert 0 from block ~ ~ ~ Items[{Slot:12b}].tag."cl.spellNumber"
execute if score @s cl.RuneTable.Slots matches 1.. if data block ~ ~ ~ Items[{Slot:12b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot1" insert 1 from block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData

execute if score @s cl.RuneTable.Slots matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 3 from block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore[0]
execute if score @s cl.RuneTable.Slots matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 4 from block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore[1]
execute if score @s cl.RuneTable.Slots matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 5 value '{"text":""}'
execute if score @s cl.RuneTable.Slots matches 2.. if data block ~ ~ ~ Items[{Slot:13b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot2" insert 0 from block ~ ~ ~ Items[{Slot:13b}].tag."cl.spellNumber"
execute if score @s cl.RuneTable.Slots matches 2.. if data block ~ ~ ~ Items[{Slot:13b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot2" insert 1 from block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData

execute if score @s cl.RuneTable.Slots matches 3.. if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 6 from block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore[0]
execute if score @s cl.RuneTable.Slots matches 3.. if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 7 from block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore[1]
execute if score @s cl.RuneTable.Slots matches 3.. if block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 8 value '{"text":""}'
execute if score @s cl.RuneTable.Slots matches 3.. if data block ~ ~ ~ Items[{Slot:14b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3" insert 0 from block ~ ~ ~ Items[{Slot:14b}].tag."cl.spellNumber"
execute if score @s cl.RuneTable.Slots matches 3.. if data block ~ ~ ~ Items[{Slot:14b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot3" insert 1 from block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData

execute if score @s cl.RuneTable.Slots matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 9 from block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore[0]
execute if score @s cl.RuneTable.Slots matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 10 from block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore[1]
execute if score @s cl.RuneTable.Slots matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 11 value '{"text":""}'
execute if score @s cl.RuneTable.Slots matches 4.. if data block ~ ~ ~ Items[{Slot:15b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4" insert 0 from block ~ ~ ~ Items[{Slot:15b}].tag."cl.spellNumber"
execute if score @s cl.RuneTable.Slots matches 4.. if data block ~ ~ ~ Items[{Slot:15b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot4" insert 1 from block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData

execute if score @s cl.RuneTable.Slots matches 5.. if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 12 from block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[0]
execute if score @s cl.RuneTable.Slots matches 5.. if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 13 from block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore[1]
execute if score @s cl.RuneTable.Slots matches 5.. if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{cl.isRune:1b}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore insert 14 value '{"text":""}'
execute if score @s cl.RuneTable.Slots matches 5.. if data block ~ ~ ~ Items[{Slot:16b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot5" insert 0 from block ~ ~ ~ Items[{Slot:16b}].tag."cl.spellNumber"
execute if score @s cl.RuneTable.Slots matches 5.. if data block ~ ~ ~ Items[{Slot:16b}].tag."cl.spellNumber" run data modify block ~ ~ ~ Items[{Slot:10b}].tag."cl.slot5" insert 1 from block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData
