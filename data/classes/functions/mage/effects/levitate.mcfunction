execute if entity @s[tag=Levitate,nbt={OnGround:0b},predicate=!classes:checkeffects/levitate] run effect give @s minecraft:slow_falling 2 0 true
execute if entity @s[tag=Levitate] at @s anchored feet run particle minecraft:cloud ~ ~ ~ 0.2 0.1 0.2 0.01 1
execute if entity @s[tag=Levitate,nbt={OnGround:1b},predicate=classes:checkeffects/levitate] run tag @s remove Levitate
execute if entity @s[tag=Levitate,nbt={OnGround:0b},predicate=classes:checkeffects/levitate,scores={cl.Sneaking=1..}] run tag @s remove Levitate
execute if entity @s[tag=!Levitate] run effect clear @s minecraft:slow_falling
