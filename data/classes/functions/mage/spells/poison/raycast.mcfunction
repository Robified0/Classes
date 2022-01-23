#Particle Effect
particle dust 0.173 1.000 0.078 1 ^0.4 ^0.2 ^0.3 0.1 0.1 0.1 1 2 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 0.15 0.01

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run effect give @s minecraft:poison 5 1 false
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] at @s run particle dust 0.173 1.000 0.078 1 ~ ~ ~ 0.5 1 0.5 0.1 30 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned] run kill @e[type=marker,tag=poison,sort=nearest,limit=1]

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/poison/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/poison/raycast
