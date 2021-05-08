#Particle Effect
particle flame ^-0.5 ^ ^0.3 0.1 0.1 0.1 0 2 normal

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!item,type=!arrow,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data merge entity @s {Fire:200}
#execute as @e[dx=0,tag=!this,type=creeper,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run function classes:entities/creeper/fire
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!creeper,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this,type=!item,type=!player,nbt={AngerTime:0}] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!item,type=!arrow,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=area_effect_cloud,tag=torch,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/firebolt/raycast
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/firebolt/zprivate/end
#execute at @s[distance=..1] if entity @e[dx=0,tag=!this,type=!item,type=!arrow,type=!player,distance=..1] run kill @s
