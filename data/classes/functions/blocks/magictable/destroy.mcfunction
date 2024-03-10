##Executing as Magic Table marker if dropper isn't detected (crafting/magictable/main)

#Summon the item to give to player
#summon item ~ ~ ~ {Facing:1b,Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Magic Table"}'},CustomModelData:59999,EntityTag:{Tags:["cl.magicTable"]}}}}
summon item ~ ~ ~ {Facing:1b,Item:{id:"minecraft:red_wool",Count:1b}}
summon item ~ ~ ~ {Facing:1b,Item:{id:"minecraft:book",Count:3b}}

#Kill dropper and GUI Items
execute as @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..1] run kill @s
execute as @e[type=item,nbt={Item:{tag:{cl.gui:1b}}},distance=..1] run kill @s

#Kill the existing placed item frame
#kill @e[type=glow_item_frame,limit=1,sort=nearest,tag=cl.magicTable,distance=..1]

#Kill the marker
kill @s
