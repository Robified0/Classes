#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Gold Flesh","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 8 Armor for 20 minutes.","color":"dark_green"}']},CustomModelData:60502,Spell:1b,Earth:1b,GoldFlesh:1b},Count:1b}]}

#Particle effect
particle block gold_block ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.2 1.5
