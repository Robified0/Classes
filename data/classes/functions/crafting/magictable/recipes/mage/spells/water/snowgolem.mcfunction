#Set spell
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Snow Golem","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Summons a snow golem to fend off enemies.","color":"aqua"}']},CustomModelData:60303,Spell:1b,Water:1b,SnowGolem:1b},Count:1b}]}

#Particle effect
particle minecraft:dripping_water ~ ~ ~ 0.3 1 0.3 0.02 50 force @a

#Playsound
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
