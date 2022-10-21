##Set Magic Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.

#Magic Missile
item replace entity @s[advancements={classes:mage/learnspell/magic/magicmissile=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Magic Missile","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Deals non-elemental damage to mobs it hits.","color":"light_purple"}']},CustomModelData:60606,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.MagicMissile:1b,cl.spell.number:606}
execute if entity @s[advancements={classes:mage/learnspell/magic/magicmissile=false}] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/magicmissile] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Mage Armor
item replace entity @s[advancements={classes:mage/learnspell/magic/magearmor=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Mage Armor","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 1 extra Armor for 10 minutes.","color":"light_purple"}']},CustomModelData:60605,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.MageArmor:1b,cl.spell.number:605}
execute if entity @s[advancements={classes:mage/learnspell/magic/magearmor=false}] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/magearmor] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Light
item replace entity @s[advancements={classes:mage/learnspell/magic/light=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Light","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Creates light source where it ends for 1 minute.","color":"light_purple"}']},CustomModelData:60600,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.Light:1b,cl.spell.number:600}
execute if entity @s[advancements={classes:mage/learnspell/magic/light=false}] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/light] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Teleport
item replace entity @s[advancements={classes:mage/learnspell/magic/teleport=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Teleport","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Teleport to the targeted location - must hit a block.","color":"light_purple"}']},CustomModelData:60601,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.Teleport:1b,cl.spell.number:601}
execute if entity @s[advancements={classes:mage/learnspell/magic/teleport=false}] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/teleport] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Shield
item replace entity @s[advancements={classes:mage/learnspell/magic/shield=true}] inventory.4 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Shield","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003/1 Sec","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Reflects projectiles coming at the direction the caster is facing.","color":"light_purple"}']},CustomModelData:60602,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.Shield:1b,cl.spell.number:602}
execute if entity @s[advancements={classes:mage/learnspell/magic/shield=false}] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/shield] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Invisibility
item replace entity @s[advancements={classes:mage/learnspell/magic/invisibility=true}] inventory.5 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Invisibility","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster invisibility for 20 seconds.","color":"light_purple"}']},CustomModelData:60603,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.Invisibility:1b,cl.spell.number:603}
execute if entity @s[advancements={classes:mage/learnspell/magic/invisibility=false}] run item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/invisibility] run item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Mend
item replace entity @s[advancements={classes:mage/learnspell/magic/mend=true}] inventory.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Mend","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Heals caster for two hearts over 5 seconds.","color":"light_purple"}']},CustomModelData:60604,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.Mend:1b,cl.spell.number:604}
execute if entity @s[advancements={classes:mage/learnspell/magic/mend=false}] run item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/mage/magic/mend] run item replace entity @s inventory.6 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}


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
function classes:mage/system/spellequip/gui/hotbarnav
