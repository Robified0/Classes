tag @s add cl.o.item.processed
execute if entity @s[nbt={Item:{tag:{Spell:1b}}}] run tag @s add cl.o.item.spell
execute if entity @s[nbt={Item:{tag:{Spell:1b}}}] run data modify entity @s Owner set from entity @s Thrower
execute if entity @s[nbt={Item:{tag:{Spell:1b}}}] run data modify entity @s PickupDelay set value 0
