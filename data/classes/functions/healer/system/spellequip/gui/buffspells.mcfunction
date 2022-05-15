##Set Buff Spells to inventory - only placing them if the spell has been learned, and isn't currently in their hotbar.
#Bless
item replace entity @s[advancements={classes:healer/learnspell/buff/bless=true}] inventory.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Bless","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Gives 6 absorption hearts to the target for 10 minutes.","color":"green"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast at the ground to cast it on yourself.","color":"green"}']},CustomModelData:60805,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.Bless:1b,cl.spell.number:805}
execute if entity @s[advancements={classes:healer/learnspell/buff/bless=false}] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/bless] run item replace entity @s inventory.0 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Fire Resist
item replace entity @s[advancements={classes:healer/learnspell/buff/fireresist=true}] inventory.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Fire Resist","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"All players within 5 blocks gain Fire Resistance for 5 minutes.","color":"green"}']},CustomModelData:60801,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.FireResist:1b,cl.spell.number:801}
execute if entity @s[advancements={classes:healer/learnspell/buff/fireresist=false}] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/fireresist] run item replace entity @s inventory.1 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Guard
item replace entity @s[advancements={classes:healer/learnspell/buff/guard=true}] inventory.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Guard","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Places down a barrier that removes all projectiles in its radius.","color":"green"}']},CustomModelData:60800,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.Guard:1b,cl.spell.number:800}
execute if entity @s[advancements={classes:healer/learnspell/buff/guard=false}] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/guard] run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Inspire
item replace entity @s[advancements={classes:healer/learnspell/buff/inspire=true}] inventory.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Inspire","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003/1 Sec","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"While casting, all players within 10 blocks gain Strength II.","color":"green"}']},CustomModelData:60803,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.Inspire:1b,cl.spell.number:803}
execute if entity @s[advancements={classes:healer/learnspell/buff/inspire=false}] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/inspire] run item replace entity @s inventory.3 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Speed Boost
item replace entity @s[advancements={classes:healer/learnspell/buff/speedboost=true}] inventory.4 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Speed Boost","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"All players within 10 blocks gain Speed I for 15 seconds.","color":"green"}']},CustomModelData:60802,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.SpeedBoost:1b,cl.spell.number:802}
execute if entity @s[advancements={classes:healer/learnspell/buff/speedboost=false}] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/speedboost] run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

#Vitality
item replace entity @s[advancements={classes:healer/learnspell/buff/vitality=true}] inventory.5 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Vitality","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Hit player gets 4 extra hearts for 60 seconds.","color":"green"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast while looking at the ground.","color":"green"}']},CustomModelData:60804,cl.s.Spell:1b,cl.s.Buff:1b,cl.s.Vitality:1b,cl.spell.number:804}
execute if entity @s[advancements={classes:healer/learnspell/buff/vitality=false}] run item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}
execute if entity @s[predicate=classes:spellselect/hotbarcheck/healer/buff/vitality] run item replace entity @s inventory.5 with minecraft:black_stained_glass_pane{cl.item.noDrop:1b}

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
function classes:healer/system/spellequip/gui/hotbarnav
