# Test for wand type, replace with CustomModelData that has appropriate crystal.
# Mage uses 10000-20000 CustomModelData
# Ending numbers for consistency: Magic/Unspecified: 0, Earth: 1, Air: 2, Fire: 3, Water: 4
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"Starter"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:10000,Spell:"Shield",Wand:1b,Type:"Starter",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Shield","color":"green","italic":true}]'}}
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Wand:1b,Type:"WhiteStaff"}}}] weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:601,Spell:"Shield",Wand:1b,Type:"WhiteStaff",display:{Name:'[{"text":"Wand","color":"dark_purple"},{"text":" - "},{"text":"Shield","color":"green","italic":true}]'}}

#Title - Show spell name on select
title @s times 20 100 20
title @s subtitle {"text":"Hold to cast. Reflects incoming projectiles.","color":"dark_aqua"}
title @a title ["",{"text":"Shield","color":"light_purple"},{"text":" (1 Mana/2 sec)","color":"#265ED6"}]
