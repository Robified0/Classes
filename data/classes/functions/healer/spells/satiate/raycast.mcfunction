#Particle Effect
particle composter ^-0.3 ^ ^0.3 0.3 0.3 0.3 1 3 force
particle electric_spark ^-0.3 ^ ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=player] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] positioned ~0.89 ~0.89 ~0.89 run effect give @s minecraft:saturation 5 1 true

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=player] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] positioned ~0.89 ~0.89 ~0.89 run kill @e[type=marker,tag=satiate,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:healer/spells/satiate/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:healer/spells/satiate/zprivate/end
