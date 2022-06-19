data merge block ~ ~ ~ {Items:[{Slot:7b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Starter Wand","color":"light_purple"}'},Unbreakable:1b,CustomModelData:60000,cl.s.Wand:1b}}]}

#Playsound
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.2 1

#Crafted the wand, give them the advancement
execute if score @p cl.Class matches 3 run advancement grant @p only classes:mage/wands/starter
execute if score @p cl.Class matches 4 run advancement grant @p only classes:healer/wands/starter
