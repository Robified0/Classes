#Particle Effect
particle flame ^-0.3 ^ ^0.3 0.25 0.25 0.25 0.03 2 force


#Play sound effect - use here when needing repeat
execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run scoreboard players set @s cl.HitBySpell 100
execute as @e[dx=0,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run data merge entity @s {Fire:200}
execute as @e[dx=0,tag=!this,type=creeper] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run function classes:entities/creeper/fire
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,type=!creeper,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_damage 1 1 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_health 1 1 true
execute as @e[dx=0,tag=!this,type=witch] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_damage 1 3 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 at @s run particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.5 30 normal
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run kill @e[type=marker,tag=torch,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/torch/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/torch/zprivate/end
