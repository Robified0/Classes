#Particle Effect
particle composter ^0.4 ^0.2 ^0.3 0.3 0.3 0.3 1 3 force
particle electric_spark ^0.4 ^0.2 ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @a[distance=..1.3,tag=!cl.r.this] at @s run function classes:healer/spells/healing/heal/effects/player
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=#classes:passive,tag=!cl.t.summoned] at @s run function classes:healer/spells/healing/heal/effects/mob
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!cl.r.this,type=#classes:undead,tag=!cl.t.summoned,tag=!cl.t.Owned] at @s run function classes:healer/spells/healing/heal/effects/undead


#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:healer/spells/healing/heal/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:healer/spells/healing/heal/zprivate/end
