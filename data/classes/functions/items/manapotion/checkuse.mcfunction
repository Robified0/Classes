### (operations/delay/20)
##Execute as @a

#Scoreboard tracking for replacing the bottle in mainhand
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:1}}}] run scoreboard players set @s cl.i.ManaPtnUse 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:2}}}] run scoreboard players set @s cl.i.ManaPtnUse 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:3}}}] run scoreboard players set @s cl.i.ManaPtnUse 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:4}}}] run scoreboard players set @s cl.i.ManaPtnUse 4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b,ManaPotionUses:5}}}] run scoreboard players set @s cl.i.ManaPtnUse 5

#Scoreboard tracking for replacing the bottle in offhand
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b,ManaPotionUses:1}}]}] run scoreboard players set @s cl.i.ManaPtnUseOff 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b,ManaPotionUses:2}}]}] run scoreboard players set @s cl.i.ManaPtnUseOff 2
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b,ManaPotionUses:3}}]}] run scoreboard players set @s cl.i.ManaPtnUseOff 3
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b,ManaPotionUses:4}}]}] run scoreboard players set @s cl.i.ManaPtnUseOff 4
execute if entity @s[nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b,ManaPotionUses:5}}]}] run scoreboard players set @s cl.i.ManaPtnUseOff 5

#Reset scores if not set
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:potion",Count:1b,tag:{ManaPotion:1b}}}] run scoreboard players reset @s cl.i.ManaPtnUse
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:potion",Slot:-106b,tag:{ManaPotion:1b}}]}] run scoreboard players reset @s cl.i.ManaPtnUseOff
