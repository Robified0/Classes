#Particle Effect
particle cloud ^-0.4 ^ ^0.3 0.1 0.1 0.1 0.05 2 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run scoreboard players set @s cl.HitBySpell 100
execute as @e[dx=0,tag=!this,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:levitation 1 10 false
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 30 normal
execute as @e[dx=0,tag=!this,type=!item,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run particle minecraft:cloud ~ ~ ~ 1 10 1 0.01 100 force @a
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=levitate,sort=nearest,limit=1]

#Only change paths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/levitate/zprivate/end
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/levitate/raycast
