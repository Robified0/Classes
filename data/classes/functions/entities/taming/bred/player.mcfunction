#Runs when player tames an animal.

#Tag the animal to avoid being hit by spells
execute as @a[advancements={classes:bredanimal=true}] at @s run function classes:entities/taming/bred/bred
