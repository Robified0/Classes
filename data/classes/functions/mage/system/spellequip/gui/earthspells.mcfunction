##Set Air Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.
#Poison
item replace entity @s[advancements={classes:mage/learnspell/earth/poison=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Poison","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Inflicts hit mob with Poison for 15 seconds.","color":"gold"}']},CustomModelData:60500,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.Poison:1b,cl.spell.number:500}
execute if entity @s[advancements={classes:mage/learnspell/earth/poison=false}] run item replace entity @s inventory.0 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/air/poison] run item replace entity @s inventory.0 with minecraft:air

#Iron Flesh
item replace entity @s[advancements={classes:mage/learnspell/earth/ironflesh=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Iron Flesh","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 4 Armor for 20 minutes.","color":"dark_green"}']},CustomModelData:60501,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.IronFlesh:1b,cl.spell.number:501}
execute if entity @s[advancements={classes:mage/learnspell/earth/ironflesh=false}] run item replace entity @s inventory.1 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/earth/ironflesh] run item replace entity @s inventory.1 with minecraft:air

#Gold Flesh
item replace entity @s[advancements={classes:mage/learnspell/earth/goldflesh=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Gold Flesh","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 5 Armor for 20 minutes.","color":"dark_green"}']},CustomModelData:60502,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.GoldFlesh:1b,cl.spell.number:502}
execute if entity @s[advancements={classes:mage/learnspell/earth/goldflesh=false}] run item replace entity @s inventory.2 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/earth/goldflesh] run item replace entity @s inventory.2 with minecraft:air

#Diamond Flesh
item replace entity @s[advancements={classes:mage/learnspell/earth/diamondflesh=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Diamond Flesh","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 5","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 6 Armor for 20 minutes.","color":"dark_green"}']},CustomModelData:60503,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.DiamondFlesh:1b,cl.spell.number:503}
execute if entity @s[advancements={classes:mage/learnspell/earth/diamondflesh=false}] run item replace entity @s inventory.3 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/earth/diamondflesh] run item replace entity @s inventory.3 with minecraft:air

#Iron Golem
item replace entity @s[advancements={classes:mage/learnspell/earth/irongolem=true}] inventory.4 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Summon Iron Golem","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 5","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Summon an Iron Golem to come to your aid!","color":"dark_green"}']},CustomModelData:60504,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.IronGolem:1b,cl.spell.number:504}
execute if entity @s[advancements={classes:mage/learnspell/earth/irongolem=false}] run item replace entity @s inventory.4 with minecraft:air
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/earth/irongolem] run item replace entity @s inventory.4 with minecraft:air

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
