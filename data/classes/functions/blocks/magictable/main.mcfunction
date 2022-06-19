##Running through root/main

# Summoning the Magic Table when block thrown on top of crafting table
## Handled in root/operations/delay/10 for performance

# Handle Recipes
#Handled in (operations/delay/20). Small delay for performance gains.

#Particles
particle enchant ~ ~0.5 ~ 0 0 0 0.75 1 force
particle reverse_portal ~ ~0.5 ~ 0 0 0 0.01 1 force

#Check the state of the Dropper
execute if block ~ ~ ~ dropper[facing=up] run function classes:blocks/magictable/check

#Handle destruction
execute unless block ~ ~ ~ dropper[facing=up] run function classes:blocks/magictable/destroy
