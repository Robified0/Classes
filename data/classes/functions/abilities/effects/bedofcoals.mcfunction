#Let's get damage values real quick
## Get damage score
# Set top damage first (this is the range minus the random below)
scoreboard players set @s cl.damageRange 2
# Run randomize function
function classes:operations/damage/random
#Boost it by the below to make sure it always does at *least* this amount
scoreboard players add @s cl.damageRandom 2

#Countdown for damage again
execute unless score @s cl.e.bedofcoals matches 1.. run scoreboard players set @s cl.e.bedofcoals 100
function classes:operations/damage/apply
function classes:entities/vanilla/angry
