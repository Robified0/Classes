#Particle Effect
particle minecraft:falling_water ^0.4 ^0.2 ^0.3 0.2 0.2 0.2 1 10 force

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!cl.Owned] run data merge entity @s {Fire:1}
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run playsound minecraft:entity.fish.swim player @a ~ ~ ~ 0.4 0.7
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=1] positioned ~0.25 ~0.25 ~0.25 run effect give @s instant_health 2 0 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,type=!enderman,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=1] positioned ~0.25 ~0.25 ~0.25 run effect give @s instant_damage 2 0 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=enderman] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=1] positioned ~0.25 ~0.25 ~0.25 run effect give @s instant_damage 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=1] positioned ~0.25 ~0.25 ~0.25 run effect give @s instant_damage 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=1] positioned ~0.25 ~0.25 ~0.25 run effect give @s instant_health 1 2 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] at @s run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned] run kill @e[type=marker,tag=waterstrike,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/water/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/water/waterstrike/zprivate/end
