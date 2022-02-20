#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Levitate","color":"yellow"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Air","color":"yellow"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lifts enemies into the air,","color":"gold"}','{"text":" and drops them.","color":"gold"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast at the ground to lift","color":"gold"}','{"text":" yourself up in the air.","color":"gold"}','{"text":" Gives brief slow fall.","color":"gold"}']},CustomModelData:60400,Spell:1b,Air:1b,Levitate:1b},Count:1b}]}

#Particles
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20 force

#Playsound
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 2 1
