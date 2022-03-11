#Increase damage of arrow
execute as @e[type=#minecraft:arrows,distance=..2,nbt={inGround:0b},tag=!cl.t.arrowPierce] run data merge entity @s {PierceLevel:1b}
execute as @e[type=#minecraft:arrows,distance=..2,nbt={inGround:0b},tag=!cl.t.arrowPierce] run tag @s add cl.t.arrowPierce
