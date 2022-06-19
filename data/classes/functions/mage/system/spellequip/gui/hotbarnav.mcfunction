## Run by each of the (element)spell.mcfunction files in this folder.
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s hotbar.5 with minecraft:command_block{display:{Name:'{"text":""}'},CustomModelData:1,cl.item.noDrop:1b}
item replace entity @p hotbar.6 with warped_fungus_on_a_stick{display:{Name:'{"text":"Equip To Wand","color":"green","italic":true}',Lore:['{"text":"Equip the spells in the hotbar.","color":"white","italic":true}']},CustomModelData:60000,cl.item.noDrop:1b,cl.spellselect.EquipWand:1b}

#Remove back button if we're not in the main screen
execute if score @s cl.spellMenu matches -1 run item replace entity @s hotbar.7 with minecraft:command_block{display:{Name:'{"text":""}'},CustomModelData:1,HideFlags:127,cl.item.noDrop:1b,cl.spellselect.GoBack:1b}
execute unless score @s cl.spellMenu matches -1 run item replace entity @s hotbar.7 with minecraft:command_block{display:{Name:'{"text":"Go Back","color":"red","italic":true}'},CustomModelData:3,HideFlags:127,cl.item.noDrop:1b,cl.spellselect.GoBack:1b}

#Exit
item replace entity @s hotbar.8 with minecraft:command_block{display:{Name:'{"text":"Exit","color":"red","italic":true}'},CustomModelData:2,HideFlags:127,cl.item.noDrop:1b,cl.spellselect.Exit:1b}
