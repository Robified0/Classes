# Test for wand type, replace with CustomModelData that has appropriate crystal.
# Mage uses 10000-20000 CustomModelData
# Ending numbers for consistency: Magic/Unspecified: 0, Earth: 1, Air: 2, Fire: 3, Water: 4
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"Starter"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:10003,Spell:"FlameBurst",Wand:1b,Type:"Starter",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Flame Burst","color":"red","italic":true}]'}}
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"WhiteStaff"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:601,Spell:"FlameBurst",Wand:1b,Type:"WhiteStaff",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Flame Burst","color":"red","italic":true}]'}}

#Title - Show spell name on select
title @s times 20 100 20
title @s subtitle {"text":"Scorch all enemies within 6 blocks.","color":"dark_aqua"}
title @a title ["",{"text":"Flame Burst","color":"red"},{"text":" (3 Mana)","color":"#265ED6"}]
