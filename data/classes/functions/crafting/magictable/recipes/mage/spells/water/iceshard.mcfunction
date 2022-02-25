#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Ice Shard","color":"blue"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Water","color":"blue"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Shoots an ice shard that damages and slows the target for 10 seconds.","color":"aqua"}']},CustomModelData:60301,cl.s.Spell:1b,cl.s.Water:1b,cl.s.IceShard:1b},Count:1b}]}

#Particle effect
particle minecraft:white_ash ~ ~ ~ 0.5 1 0.5 1 100 force

#Playsound Effect
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.4 0.6
