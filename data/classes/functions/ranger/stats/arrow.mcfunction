#Increase damage of arrow
execute as @e[type=#minecraft:arrows,distance=..3,nbt={inGround:0b}] run data merge entity @s {PierceLevel:2b}
execute as @e[type=#minecraft:arrows,distance=..3,nbt={inGround:0b}]
