#Particle Effect
particle composter ^-0.3 ^ ^0.3 0.3 0.3 0.3 1 3 force
particle end_rod ^-0.3 ^ ^0.3 0.3 0.3 0.3 0.1 1 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1.5 1.5

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run effect give @s minecraft:instant_health 1 2 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 1 30 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] at @s run playsound minecraft:entity.shulker_bullet.hit player @a ~ ~ ~ 0.5 0.1
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[distance=..1.3,tag=!this,type=#classes:undead,tag=!summoned,tag=!cl.Owned] run kill @e[type=marker,tag=holystrike,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:healer/spells/holystrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:healer/spells/holystrike/zprivate/end
