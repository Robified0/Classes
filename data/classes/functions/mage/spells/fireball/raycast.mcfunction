#Particle Effect
particle flame ^-0.3 ^ ^0.3 0.3 0.3 0.3 0.05 6 force

#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..10] ~ ~ ~ 0.05

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,type=!#classes:fireproof,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data merge entity @s {Fire:200}
execute as @e[dx=0,tag=!this,type=creeper] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run function classes:entities/creeper/fire
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,type=!creeper,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,distance=..5,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 at @s run particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.5 50 normal
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=torch,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/fireball/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ obsidian if block ^ ^ ^-1 air run setblock ^ ^ ^-1 minecraft:fire
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=north] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=north]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=south] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=south]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=east] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=east]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:campfire[lit=false,facing=west] run setblock ~ ~ ~ minecraft:campfire[lit=true,facing=west]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=north] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=north]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=south] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=south]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=east] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=east]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:soul_campfire[lit=false,facing=west] run setblock ~ ~ ~ minecraft:soul_campfire[lit=true,facing=west]
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/fireball/zprivate/end
