#Particle Effect
particle dust 0.129 0.914 1.000 1 ^-0.3 ^ ^0.3 0.1 0.1 0.1 2 10 force

#Do these things when spell hits
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run scoreboard players set @s cl.HitBySpell 100
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run function classes:main/loot_table/main
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:slowness 10 1 false
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_damage 1 1 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run effect give @s minecraft:instant_health 1 1 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run data modify entity @s AngryAt set from entity @p[scores={cl.Class=3}] UUID
execute as @e[dx=0,tag=!this,type=#classes:neutral,nbt=!{Brain:{memories:{"minecraft:angry_at":{}}}},tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[scores={cl.Class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~0.25 ~0.25 ~0.25 run kill @e[type=marker,tag=iceshard,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.1 2
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/iceshard/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/iceshard/zprivate/end
