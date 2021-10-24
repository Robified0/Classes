###This is a temporary file. Will give items to player. Only for alpha/beta versions###
give @s warped_fungus_on_a_stick{CustomModelData:10000,Wand:1b,Type:Starter} 1
# Torch - if setFire is off.
execute if score #cl.pref cl.p.setFire matches 0 run give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"1 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:61000,Spell:1b} 1

# Torch - if setFire is on.
execute if score #cl.pref cl.p.setFire matches 1 run give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"1 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights blocks on fire. Also lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:61000,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Flame Burst","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Scorch enemies within 6 block of you.","color":"red"}']},CustomModelData:61002,Spell:1b} 1

# Bed of Coals
give @p warped_fungus_on_a_stick{display:{Name:'[{"text":"Bed of Coals","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"5 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"A fiery bed of flames appears under you, damaging enemies that walk on it.","color":"red"}','{"text":" "}]']},CustomModelData:61001,Spell:1b} 1

# Flame Burst
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Flame Burst","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Scorch enemies within 6 block of you.","color":"red"}']},CustomModelData:61002,Spell:1b} 1

# Fire Shield
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Fire Shield","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"4 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants fire resistance for 45 seconds.","color":"red"}']},CustomModelData:61004,Spell:1b} 1

#Water Strike (multiple possible outcomes)
function classes:operations/give/waterstrike

#Ice Shard
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Ice Shard","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"2 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots an ice shard that damages and slows the target for 10 seconds.","color":"aqua"}']},CustomModelData:62001,Spell:1b} 1

#Water Breathing
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Water Breathing","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants Water Breathing for 60 seconds.","color":"aqua"}']},CustomModelData:62005,Spell:1b} 1

#Deep Freeze
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Deep Freeze","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"4 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Freezes all hostile mobs within 3 blocks in place.","color":"aqua"}']},CustomModelData:62003,Spell:1b} 1


give @s lapis_lazuli{display:{Name:'[{"text":"Slow Fall","color":"gold","bold":true},{"text":" - ","color":"white"},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Grants the caster Slow Fall for 45 seconds.","color":"yellow"}']},CustomModelData:63001,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Bunny Hop","color":"gold","bold":true},{"text":" - ","color":"white"},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Grants the caster Jump Boost II for 45 seconds.","color":"yellow"}']},CustomModelData:63003,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Tail Wind","color":"gold","bold":true},{"text":" - ","color":"white"},{"text":"3 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Grants the caster Speed 2 for 20 seconds, allowing you to run away!","color":"yellow"}']},CustomModelData:63002,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Iron Golem","color":"green","bold":true},{"text":" - ","color":"white"},{"text":"8 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Summon an Iron Golem to come to your aid!","color":"dark_green","italic":true}']},CustomModelData:64004,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Teleport","color":"light_purple","bold":true},{"text":" - ","color":"white"},{"text":"2 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Teleport to the targeted location - must hit a block.","color":"dark_purple","italic":true}']},CustomModelData:65001,Spell:1b} 1
give @s lapis_lazuli{display:{Name:'[{"text":"Poison","color":"green","bold":true},{"text":" - ","color":"white"},{"text":"1 Mana","color":"aqua","bold":false}]',Lore:['{"text":"Poisons mobs it hits for 5 seconds.","color":"dark_green","italic":true}']},CustomModelData:64000,Spell:1b} 1

# Poison
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Poison","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"1 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Poisons hit mobs for 5 seconds.","color":"gold"}']},CustomModelData:64000,Spell:1b} 1

# Levitate
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Levitate","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"2 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lifts enemies into the air, and drops them.","color":"gold"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast at the ground to lift yourself up in the air. Gives brief slow fall.","color":"gold"}']},CustomModelData:63000,Spell:1b} 1
