### (operations/delay/20)
##Execute as @a

#Scoreboard for replacing the bottle
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:1}}}] run scoreboard players set @s cl.i.ManaPtnUse 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:2}}}] run scoreboard players set @s cl.i.ManaPtnUse 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:3}}}] run scoreboard players set @s cl.i.ManaPtnUse 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:4}}}] run scoreboard players set @s cl.i.ManaPtnUse 4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:5}}}] run scoreboard players set @s cl.i.ManaPtnUse 5
