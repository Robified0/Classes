execute unless entity @s[nbt={Item:{tag:{Spell:1b}}}] run tag @s add cl.o.item.processed
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0
tag @s add cl.o.item.processed
