execute if entity @s[nbt={Item:{id:"minecraft:soul_sand",Count:1b}}] run loot spawn ~ ~ ~ loot classes:items/essences/spirit
execute if entity @s[nbt={Item:{id:"minecraft:sculk",Count:1b}}] run loot spawn ~ ~ ~ loot classes:items/essences/spirit
data merge entity @e[type=item,nbt={tag:{cl.Soul:1b}},limit=1,sort=nearest,distance=..1] {Age:-32768,Motion:[0.0,0.0,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run say summon soul energy
kill @s
