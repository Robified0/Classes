#Replace
data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'[{"text":"Diamond Flesh","color":"dark_green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 5","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Earth","color":"dark_green"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 6 Armor for 20 minutes.","color":"dark_green"}']},CustomModelData:60503,cl.s.Spell:1b,cl.s.Earth:1b,cl.s.DiamondFlesh:1b},Count:1b}]}

#Particle effect
particle block diamond_block ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.2 1.5
