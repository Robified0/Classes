#Set spell
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Deep Freeze","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"4 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Freezes all hostile mobs within 3 blocks in place.","color":"aqua"}']},CustomModelData:62003,Spell:1b},Count:1b}]}

#Particle effect
particle minecraft:white_ash ~ ~ ~ 0.5 1 0.5 1 100 force

#Playsound
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
