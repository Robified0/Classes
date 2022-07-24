## Binds the Spirit to the location it was summoned, so it doesn't float away too far.

data modify entity @s BoundX set from entity @s Pos[0]
data modify entity @s BoundY set from entity @s Pos[1]
data modify entity @s BoundZ set from entity @s Pos[2]

#Tag to avoid re-iteration
tag @s add cl.entity.vex.bound
