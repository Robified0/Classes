##Executing as Magic Table marker if dropper isn't detected (crafting/magictable/main)

#Summon the item to give to player
summon item ~ ~ ~ {Item:{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_name":'{"text":"Rune Table"}',"minecraft:custom_model_data":59999,"minecraft:custom_data":{cl.RuneTable:1b}}}}

#Kill dropper and GUI Items
execute as @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..1] run kill @s
execute as @e[type=item,nbt={Item:{tag:{cl.gui:1b}}},distance=..1] run kill @s

#Kill the existing placed item frame
kill @e[type=glow_item_frame,limit=1,sort=nearest,tag=cl.RuneTable,distance=..1]

#Kill the marker
kill @s
