##Set Air Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.
#Levitate
item replace entity @s[advancements={classes:mage/learnspell/air/levitate=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Levitate","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lifts enemies into the air,","color":"yellow"}','{"text":" and drops them.","color":"yellow"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast at the ground to lift","color":"yellow"}','{"text":" yourself up in the air.","color":"yellow"}','{"text":" Gives brief slow fall.","color":"yellow"}']},CustomModelData:60400,cl.s.Spell:1b,cl.s.Air:1b,cl.s.Levitate:1b,cl.spell.number:400}
execute if entity @s[advancements={classes:mage/learnspell/air/levitate=false}] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/air/levitate] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Slowfall
item replace entity @s[advancements={classes:mage/learnspell/air/slowfall=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Slow Fall","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster Slow Fall for 45 seconds.","color":"yellow"}']},CustomModelData:60401,cl.s.Spell:1b,cl.s.Air:1b,cl.s.Slowfall:1b,cl.spell.number:401}
execute if entity @s[advancements={classes:mage/learnspell/air/slowfall=false}] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/air/slowfall] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Tail Wind
item replace entity @s[advancements={classes:mage/learnspell/air/tailwind=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Tail Wind","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster Speed 2 for 20 seconds, allowing you to run away!","color":"yellow"}']},CustomModelData:60402,cl.s.Spell:1b,cl.s.Air:1b,cl.s.TailWind:1b,cl.spell.number:402}
execute if entity @s[advancements={classes:mage/learnspell/air/tailwind=false}] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/air/tailwind] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Bunny Hop
item replace entity @s[advancements={classes:mage/learnspell/air/bunnyhop=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Bunny Hop","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster Jump Boost II for 45 seconds.","color":"yellow"}']},CustomModelData:60403,cl.s.Spell:1b,cl.s.Air:1b,cl.s.BunnyHop:1b,cl.spell.number:403}
execute if entity @s[advancements={classes:mage/learnspell/air/bunnyhop=false}] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/air/bunnyhop] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}


item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.11 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.12 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.13 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.14 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
item replace entity @s inventory.15 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
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

#Set navigation
function classes:mage/system/spellequip/gui/hotbarnav
