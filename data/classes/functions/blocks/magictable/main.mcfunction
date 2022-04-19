##Running through tick.json

# Summoning the Magic Table when block thrown on top of crafting table
## Handled in root/operations/delay/10 for performance

#If picked up and replaced
execute as @e[type=glow_item_frame,tag=cl.magicTable,tag=!cl.magicTablePlaced] at @s run function classes:blocks/magictable/placed

# Handle Recipes
#Handled in (operations/delay/20). Small delay for performance gains.

#Particles
execute as @e[type=marker,tag=cl.magicTable] at @s run particle enchant ~ ~0.5 ~ 0 0 0 0.75 1 force
execute as @e[type=marker,tag=cl.magicTable] at @s run particle reverse_portal ~ ~0.5 ~ 0 0 0 0.01 1 force

#Handle Table being broken
execute as @e[type=marker,tag=cl.magicTable] at @s positioned ~ ~ ~ unless block ~ ~ ~ dropper[facing=up] run function classes:blocks/magictable/destroy
