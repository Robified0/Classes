
#Set space for spells, then stop by tagging since it only needs to happen once.
item replace entity @s[tag=!cl.spellnav.spellsetup] hotbar.0 with minecraft:air
item replace entity @s[tag=!cl.spellnav.spellsetup] hotbar.1 with minecraft:air
item replace entity @s[tag=!cl.spellnav.spellsetup] hotbar.2 with minecraft:air
item replace entity @s[tag=!cl.spellnav.spellsetup] hotbar.3 with minecraft:air
item replace entity @s[tag=!cl.spellnav.spellsetup] hotbar.4 with minecraft:air
tag @s add cl.spellnav.spellsetup

#Set Inventory Navigation
item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s[tag=!cl.spellnav.selectelement] inventory.11 with minecraft:structure_block{CustomModelData:101,cl.item.noDrop:1b,SelectFire:1b,display:{Name:'{"text":"Fire Spells","color":"red","italic":true}'}}
item replace entity @s[tag=!cl.spellnav.selectelement] inventory.12 with minecraft:structure_block{CustomModelData:102,cl.item.noDrop:1b,SelectWater:1b,display:{Name:'{"text":"Water Spells","color":"blue","italic":true}'}}
item replace entity @s[tag=!cl.spellnav.selectelement] inventory.13 with minecraft:structure_block{CustomModelData:103,cl.item.noDrop:1b,SelectAir:1b,display:{Name:'{"text":"Air Spells","color":"yellow","italic":true}'}}
item replace entity @s[tag=!cl.spellnav.selectelement] inventory.14 with minecraft:structure_block{CustomModelData:104,cl.item.noDrop:1b,SelectEarth:1b,display:{Name:'{"text":"Earth Spells","color":"green","italic":true}'}}
item replace entity @s[tag=!cl.spellnav.selectelement] inventory.15 with minecraft:structure_block{CustomModelData:100,cl.item.noDrop:1b,SelectEarth:1b,display:{Name:'{"text":"Magic Spells","color":"light_purple","italic":true}'}}
item replace entity @s inventory.16 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.17 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.18 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.19 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.20 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.21 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.22 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.23 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.24 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.25 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.26 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Test for empty space in menu
#execute if entity @s[predicate=!classes:spellselect/hotbarcheck/mage/selectedelement,tag=!cl.spellnav.selectelement] run function classes:operations/spellequip/player/mage/navcontrol

#Set navigation
item replace entity @s weapon.offhand with minecraft:composter{display:{Name:'{"text":"Undo Selection","color":"red","italic":true}',Lore:['{"text":"Selected the wrong item?","color":"white","italic":true}','{"text":" "}','{"text":"Toss it here, or on the ground.","color":"white","italic":true}']},HideFlags:127,cl.item.noDrop:1b}
item replace entity @s hotbar.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s hotbar.6 with minecraft:warped_fungus_on_a_stick{CustomModelData:60000,cl.s.Wand:1b,cl.item.noDrop:1b}
item replace entity @s hotbar.7 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=!classes:spellselect/hotbarcheck/exit] run say I exited.
item replace entity @s hotbar.8 with minecraft:barrier{display:{Name:'{"text":"Exit","color":"red","italic":true}'},HideFlags:127,cl.item.noDrop:1b}

#Handle tags to refresh this page when they are on it.
tag @s add cl.spellnav.selectelement
tag @s remove cl.spellnav.firespells
tag @s remove cl.spellnav.waterspells
tag @s remove cl.spellnav.airspells
tag @s remove cl.spellnav.earthspells
tag @s remove cl.spellnav.magicspells
