#Particle Effect
particle end_rod ^-0.5 ^ ^0.3 0.01 0.01 0.01 0.01 1 force

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=light,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/light/raycast
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ air run function classes:mage/spells/light/zprivate/end
#execute at @s[distance=..1] if entity @e[dx=0,tag=!this,type=!item,type=!arrow,type=!player,distance=..1] run kill @s
