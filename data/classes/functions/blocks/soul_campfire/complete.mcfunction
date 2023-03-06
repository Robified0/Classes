execute if entity @s[nbt={Item:{id:"minecraft:soul_sand",Count:1b}}] run loot spawn ~ ~ ~ loot classes:items/souls/soul
execute if entity @s[nbt={Item:{id:"minecraft:sculk",Count:1b}}] run loot spawn ~ ~ ~ loot classes:items/souls/soul
execute if entity @s[nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run loot spawn ~ ~ ~ loot classes:items/souls/soulenergy
data merge entity @e[type=item,nbt={tag:{cl.Soul:1b}},limit=1,sort=nearest,distance=..1] {Age:-32768,Motion:[0.0,0.0,0.0]}
kill @s
