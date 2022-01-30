#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Teleport","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"2 Mana","color":"aqua","bold":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Teleport to the targeted location - must hit a block.","color":"light_purple"}']},CustomModelData:60601,Spell:1b,Magic:1b,Teleport:1b},Count:1b}]}

#Particle effect
particle reverse_portal ~ ~1 ~ 1 1 1 0.05 40 normal

#Playsound Effect
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1
