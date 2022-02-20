#Set spell
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Extinguish","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Extinguish fires within 10 blocks.","color":"aqua"}']},CustomModelData:60307,Spell:1b,Water:1b,Extinguish:1b},Count:1b}]}

#Particle effect
particle minecraft:dripping_water ~ ~ ~ 0.3 1 0.3 0.02 50 force @a

#Playsound
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
