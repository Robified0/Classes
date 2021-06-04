#Particle Effect
particle cloud ^-0.5 ^ ^0.3 0.1 0.1 0.1 0.05 2 normal

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.horse.breathe player @a[distance=..10] ~ ~ ~ 0.2

#Do these things when spell hits
execute as @p[x_rotation=87..90,distance=..1] run effect give @s minecraft:levitation 1 10 false
execute as @p[x_rotation=87..90,distance=..1] run effect give @s minecraft:slow_falling 3 0 false
execute as @p[x_rotation=87..90,distance=..1] run kill @e[type=marker,tag=levitate,sort=nearest,limit=1]
execute as @e[dx=0,tag=!this] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:levitation 1 10 false
execute as @e[dx=0,tag=!this,type=player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:slow_falling 3 1 false
execute as @e[dx=0,tag=!this,type=!item,nbt={AngerTime:0}] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={class=3}] UUID
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 30 normal

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=levitate,sort=nearest,limit=1]

#Only change paths for spell
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/levitate/zprivate/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/levitate/raycast
