#Randomize the damage
$execute store result entity @s data.damage int 1 run random value $(min)..$(max)
