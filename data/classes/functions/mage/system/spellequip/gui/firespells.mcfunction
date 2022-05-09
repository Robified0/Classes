##Set Fire Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.
#Torch
execute if score #cl.pref cl.pref.setFire matches 0 run item replace entity @s[advancements={classes:mage/learnspell/fire/torch=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:60200,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.Torch:1b,cl.spell.number:200}
execute if score #cl.pref cl.pref.setFire matches 1 run item replace entity @s[advancements={classes:mage/learnspell/fire/torch=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights blocks on fire. Also lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:60200,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.Torch:1b,cl.spell.number:200}
execute if entity @s[advancements={classes:mage/learnspell/fire/torch=false}] run item replace entity @s inventory.0 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/fire/torch] run item replace entity @s inventory.0 with minecraft:air

#Fire Shield
item replace entity @s[advancements={classes:mage/learnspell/fire/fireshield=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Fire Shield","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants fire resistance for 45 seconds.","color":"red"}']},CustomModelData:60204,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.FireShield:1b,cl.spell.number:204}
execute if entity @s[advancements={classes:mage/learnspell/fire/fireshield=false}] run item replace entity @s inventory.1 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/fire/fireshield] run item replace entity @s inventory.1 with minecraft:air

#Bed of Coals
item replace entity @s[advancements={classes:mage/learnspell/fire/bedofcoals=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Bed of Coals","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"A fiery bed of flames appears under you, damaging enemies that walk on it.","color":"red"}','{"text":" "}]']},CustomModelData:60201,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.BedOfCoals:1b,cl.spell.number:201}
execute if entity @s[advancements={classes:mage/learnspell/fire/bedofcoals=false}] run item replace entity @s inventory.2 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/fire/bedofcoals] run item replace entity @s inventory.2 with minecraft:air

#Flame Burst
item replace entity @s[advancements={classes:mage/learnspell/fire/flameburst=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Flame Burst","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Scorch enemies within 6 blocks of you.","color":"red"}']},CustomModelData:60202,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.FlameBurst:1b,cl.spell.number:202}
execute if entity @s[advancements={classes:mage/learnspell/fire/flameburst=false}] run item replace entity @s inventory.3 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/fire/flameburst] run item replace entity @s inventory.3 with minecraft:air


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
