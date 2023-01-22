execute if entity @s[tag=!cl.check.BarrelOpen] if block ~ ~ ~ barrel[open=true] run stopsound @a[distance=..5] block minecraft:block.barrel.open
execute if entity @s[tag=!cl.check.BarrelOpen] if block ~ ~ ~ barrel[open=true] run tag @s add cl.check.BarrelOpen
execute if entity @s[tag=cl.check.BarrelOpen] if block ~ ~ ~ barrel[open=false] run stopsound @a[distance=..5] block minecraft:block.barrel.close
execute if entity @s[tag=cl.check.BarrelOpen] if block ~ ~ ~ barrel[open=false] run tag @s remove cl.check.BarrelOpen
