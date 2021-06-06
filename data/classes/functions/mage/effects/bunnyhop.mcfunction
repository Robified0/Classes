execute as @a[tag=BunnyHop,scores={effBunnyHop=1..}] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute if entity @a[scores={effBunnyHop=1..}] run scoreboard players remove @a[scores={effBunnyHop=1..}] effBunnyHop 1
execute as @a[tag=BunnyHop,scores={effBunnyHop=..0}] run tag @s remove BunnyHop
execute as @a[tag=BunnyHop,scores={effBunnyHop=..0}] run scoreboard players reset @s effBunnyHop
