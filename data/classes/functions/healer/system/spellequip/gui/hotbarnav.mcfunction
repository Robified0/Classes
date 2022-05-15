## Run by each of the (element)spell.mcfunction files in this folder.
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s hotbar.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @p hotbar.6 with warped_fungus_on_a_stick{display:{Name:'{"text":"Equip To Wand","color":"green","italic":true}',Lore:['{"text":"Equip the spells in the hotbar.","color":"white","italic":true}']},CustomModelData:60000,cl.item.noDrop:1b,cl.spellselect.EquipWand:1b}
item replace entity @s hotbar.7 with minecraft:medium_amethyst_bud{display:{Name:'{"text":"Go Back","color":"red","italic":true}'},HideFlags:127,cl.item.noDrop:1b,cl.spellselect.GoBack:1b}
item replace entity @s hotbar.8 with minecraft:barrier{display:{Name:'{"text":"Exit","color":"red","italic":true}'},HideFlags:127,cl.item.noDrop:1b,cl.spellselect.Exit:1b}
