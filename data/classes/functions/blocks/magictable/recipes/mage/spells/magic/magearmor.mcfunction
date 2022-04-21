#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Mage Armor","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 3 Armor for 20 minutes.","color":"light_purple"}']},CustomModelData:60605,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.MageArmor:1b},Count:1b}]}

#Particle effect
particle witch ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.4 0.6
