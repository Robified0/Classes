##Set Smiting Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.
#Bolt
item replace entity @s[tag=cl.knowsSpell.Bolt] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Bolt","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Deals minor holy damage to enemies.","color":"green"}']},CustomModelData:60902,cl.s.Spell:1b,cl.s.Smiting:1b,cl.s.Bolt:1b,cl.spell.number:902}
execute if entity @s[tag=!cl.knowsSpell.Bolt] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/smiting/bolt] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Light
item replace entity @s[tag=cl.knowsSpell.Light] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Light","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Creates light source where it ends for 1 minute. Also reveals hidden entities within 10 blocks.","color":"green"}']},CustomModelData:60903,cl.s.Spell:1b,cl.s.Smiting:1b,cl.s.Light:1b,cl.spell.number:903}
execute if entity @s[tag=!cl.knowsSpell.Light] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/smiting/light] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Holy Strike
item replace entity @s[tag=cl.knowsSpell.HolyStrike] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Holy Strike","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Smites undead it hits. Can hit multiple in a line.","color":"green"}']},CustomModelData:60900,cl.s.Spell:1b,cl.s.Smiting:1b,cl.s.HolyStrike:1b,cl.spell.number:900}
execute if entity @s[tag=!cl.knowsSpell.HolyStrike] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/smiting/holystrike] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Stop Undead
item replace entity @s[tag=cl.knowsSpell.StopUndead] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Stop Undead","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Normal undead within 10 blocks freeze in place.","color":"green"}']},CustomModelData:60901,cl.s.Spell:1b,cl.s.Smiting:1b,cl.s.StopUndead:1b,cl.spell.number:901}
execute if entity @s[tag=!cl.knowsSpell.StopUndead] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/smiting/stopundead] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.11 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.12 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.13 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
item replace entity @s inventory.14 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
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
