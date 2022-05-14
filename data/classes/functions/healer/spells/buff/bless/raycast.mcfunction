#Particle Effect
particle composter ^-0.4 ^0.2 ^0.3 0.3 0.3 0.3 1 3 force
particle electric_spark ^-0.4 ^0.2 ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Do these things when spell hits
execute as @a[dx=0,tag=!cl.r.this] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] positioned ~0.89 ~0.89 ~0.89 run function classes:healer/spells/buff/bless/effects/player

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:healer/spells/buff/bless/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:healer/spells/buff/bless/zprivate/end
