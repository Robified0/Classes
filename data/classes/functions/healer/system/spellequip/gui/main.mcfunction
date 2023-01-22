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
item replace entity @s inventory.11 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.12 with minecraft:structure_block{CustomModelData:1100,cl.item.noDrop:1b,cl.spellselect.Healing:1b,display:{Name:'{"text":"Healing Spells","color":"green","italic":true}'}}
item replace entity @s inventory.13 with minecraft:structure_block{CustomModelData:1101,cl.item.noDrop:1b,cl.spellselect.Buff:1b,display:{Name:'{"text":"Buff Spells","color":"green","italic":true}'}}
item replace entity @s inventory.14 with minecraft:structure_block{CustomModelData:1102,cl.item.noDrop:1b,cl.spellselect.Smiting:1b,display:{Name:'{"text":"Smiting Spells","color":"green","italic":true}'}}
item replace entity @s inventory.15 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
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
function classes:healer/system/spellequip/gui/hotbarnav
