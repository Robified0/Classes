execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:1}}}] run item replace entity @s weapon.mainhand with minecraft:glass_bottle
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:2}}}] run item modify entity @s weapon.mainhand classes:items/manapotion/1use
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:3}}}] run item modify entity @s weapon.mainhand classes:items/manapotion/2use
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:4}}}] run item modify entity @s weapon.mainhand classes:items/manapotion/3use
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:5}}}] run item modify entity @s weapon.mainhand classes:items/manapotion/4use
