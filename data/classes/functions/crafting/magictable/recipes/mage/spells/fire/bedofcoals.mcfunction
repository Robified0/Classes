#Set spell
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Bed of Coals","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 3","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"A fiery bed of flames appears under you, damaging enemies that walk on it.","color":"red"}','{"text":" "}]']},CustomModelData:60201,cl.s.Spell:1b,cl.s.Fire:1b,cl.s.BedOfCoals:1b},Count:1b}]}

#Particle effect
particle flame ~ ~ ~ 0.3 1 0.3 0.02 50 force @a

#Playsound
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.2 1
