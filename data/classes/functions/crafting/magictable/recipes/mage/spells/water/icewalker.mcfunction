#Set spell
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Ice Walker","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 2","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Turns still water at your feet to ice for 1 minute.","color":"aqua"}']},CustomModelData:60306,cl.s.Spell:1b,cl.s.Water:1b,cl.s.IceWalker:1b},Count:1b}]}

#Particle effect
particle minecraft:dripping_water ~ ~ ~ 0.3 1 0.3 0.02 50 force @a

#Playsound
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
