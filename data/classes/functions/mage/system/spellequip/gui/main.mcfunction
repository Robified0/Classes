#Set score for page
scoreboard players set @s cl.spellMenu -1

#Set Inventory Navigation
item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.11 with minecraft:structure_block{CustomModelData:1001,cl.item.noDrop:1b,cl.spellselect.Fire:1b,display:{Name:'{"text":"Fire Spells","color":"red","italic":true}'}}
item replace entity @s inventory.12 with minecraft:structure_block{CustomModelData:1002,cl.item.noDrop:1b,cl.spellselect.Water:1b,display:{Name:'{"text":"Water Spells","color":"blue","italic":true}'}}
item replace entity @s inventory.13 with minecraft:structure_block{CustomModelData:1003,cl.item.noDrop:1b,cl.spellselect.Air:1b,display:{Name:'{"text":"Air Spells","color":"yellow","italic":true}'}}
item replace entity @s inventory.14 with minecraft:structure_block{CustomModelData:1004,cl.item.noDrop:1b,cl.spellselect.Earth:1b,display:{Name:'{"text":"Earth Spells","color":"green","italic":true}'}}
item replace entity @s inventory.15 with minecraft:structure_block{CustomModelData:1000,cl.item.noDrop:1b,cl.spellselect.Magic:1b,display:{Name:'{"text":"Magic Spells","color":"light_purple","italic":true}'}}
item replace entity @s inventory.16 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.17 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.18 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.19 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.20 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.21 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.22 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.23 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.24 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.25 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.26 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Set navigation
function classes:mage/system/spellequip/gui/hotbarnav
