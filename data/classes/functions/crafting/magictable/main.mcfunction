# Item drop summon
execute as @e[type=item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] at @s positioned ~ ~ ~ if block ~ ~ ~ enchanting_table run function classes:crafting/magictable/summon

# Handle Recipes
execute as @e[type=marker,tag=cl.magicTable] at @s if data block ~ ~ ~ Items[0] run function classes:crafting/magictable/recipes/main

#Handle Table being broken
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Magic Table"}'} run kill @s
