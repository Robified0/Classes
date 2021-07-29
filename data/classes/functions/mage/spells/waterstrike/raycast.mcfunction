#Particle Effect
particle minecraft:falling_water ^-0.3 ^ ^0.3 0.1 0.1 0.1 1 2 force

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data merge entity @s {Fire:1}
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run scoreboard players set @s cl.HitBySpell 100
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=1] positioned ~0.79 ~0.79 ~0.79 run effect give @s instant_health 1 1 true
execute as @e[dx=0,tag=!this,type=!#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:waterproof,type=!enderman,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=1] positioned ~0.79 ~0.79 ~0.79 run effect give @s instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=enderman] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=1] positioned ~0.79 ~0.79 ~0.79 run effect give @s instant_damage 1 2 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:waterproof,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=1] positioned ~0.79 ~0.79 ~0.79 run effect give @s instant_damage 1 1 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=1] positioned ~0.79 ~0.79 ~0.79 run effect give @s instant_health 1 2 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 at @s run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=waterstrike,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 0.8 1

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/waterstrike/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:lava run function classes:mage/spells/waterstrike/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/waterstrike/zprivate/end
