#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Light","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE004 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Creates light source where it ends for 1 minute.","color":"light_purple"}']},CustomModelData:60600,Spell:1b,Magic:1b,Light:1b},Count:1b}]}

#Particle effect
particle end_rod ~ ~ ~ 1 1 1 0.01 40 normal

#Playsound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.05 2
