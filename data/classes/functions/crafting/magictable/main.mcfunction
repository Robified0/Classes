# Item drop summon
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ crafting_table run function classes:crafting/magictable/summon

#If picked up and replaced
execute as @e[type=glow_item_frame,tag=cl.magicTable,tag=!cl.magicTablePlaced] at @s run function classes:crafting/magictable/placed

# Handle Recipes
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[0] run function classes:crafting/magictable/recipes/main

#Particles
execute as @e[type=marker,tag=cl.magicTable] at @s run particle enchant ~ ~0.5 ~ 0 0 0 0.75 1 force
execute as @e[type=marker,tag=cl.magicTable] at @s run particle reverse_portal ~ ~0.5 ~ 0 0 0 0.01 1 force

#Handle Table being broken
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} run summon item ~ ~ ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Magic Table"}'},CustomModelData:59999,EntityTag:{Tags:["cl.magicTable"]}}}}
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} as @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}}] run kill @s
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} run kill @e[type=glow_item_frame,limit=1,sort=nearest,tag=cl.magicTable,distance=..1]
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} run kill @s
