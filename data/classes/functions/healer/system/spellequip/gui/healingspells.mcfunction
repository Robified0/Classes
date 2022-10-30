##Set Healing Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.

#Heal
item replace entity @s[advancements={classes:healer/learnspell/healing/heal=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Heal","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Heals friendly hit targets, and damages undead.","color":"green"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast while looking at the ground to heal yourself.","color":"green"}']},CustomModelData:60700,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.Heal:1b,cl.spell.number:700}
execute if entity @s[advancements={classes:healer/learnspell/healing/heal=false}] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/healing/heal] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Purify
item replace entity @s[advancements={classes:healer/learnspell/healing/purify=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Purify","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Cure all negative effects on target.","color":"green"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast while looking at the ground.","color":"green"}']},CustomModelData:60702,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.Purify:1b,cl.spell.number:702}
execute if entity @s[advancements={classes:healer/learnspell/healing/purify=false}] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/healing/purify] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Prevention
item replace entity @s[advancements={classes:healer/learnspell/healing/prevention=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Prevention","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Gives protection against status effects to target for 10 seconds.","color":"green"}']},CustomModelData:60703,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.Prevention:1b,cl.spell.number:703}
execute if entity @s[advancements={classes:healer/learnspell/healing/prevention=false}] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/healing/prevention] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Heal Circle
item replace entity @s[advancements={classes:healer/learnspell/healing/healcircle=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Heal Circle","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Heals allies within 5 blocks of you for 4 hearts. Damages undead.","color":"green"}']},CustomModelData:60701,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.HealCircle:1b,cl.spell.number:701}
execute if entity @s[advancements={classes:healer/learnspell/healing/healcircle=false}] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/healing/healcircle] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

#Mending
item replace entity @s[advancements={classes:healer/learnspell/healing/mending=true}] inventory.4 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Mending","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003/1 Sec","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Heals all allies within 10 blocks 2 Hearts/sec.","color":"green"}']},CustomModelData:60704,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.Mending:1b,cl.spell.number:704}
execute if entity @s[advancements={classes:healer/learnspell/healing/mending=false}] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/healing/mending] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{display:{Name:'{"text":""}'},cl.item.noDrop:1b}

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
