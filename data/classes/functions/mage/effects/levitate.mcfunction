
execute as @a[tag=Levitate,nbt={OnGround:0b},nbt=!{ActiveEffects:[{Id:25b}]}] run effect give @s minecraft:slow_falling 1 0 true
execute as @a[tag=Levitate] at @s anchored feet run particle minecraft:cloud ~ ~ ~ 0.2 0.1 0.2 0.01 1
execute as @a[tag=Levitate,nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b}]}] run tag @s remove Levitate
execute as @a[tag=Levitate,nbt={OnGround:0b},nbt=!{ActiveEffects:[{Id:25b}]},scores={cl.Sneaking=1..}] run tag @s remove Levitate
execute as @a[tag=!Levitate] run effect clear @s minecraft:slow_falling
