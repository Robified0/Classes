#Particle Effect
particle flame ^0.4 ^0.2 ^0.3 0.25 0.25 0.25 0.03 2 force


#Play sound effect - use here when needing repeat
#execute at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Do these things when spell hits
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run scoreboard players set @s cl.HitBySpell 100
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run function classes:main/loot_table/main
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.5 1.3
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:fireproof,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] run data merge entity @s {Fire:200}
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=creeper] run function classes:entities/vanilla/creeper/fire
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,type=!creeper,tag=!summoned,tag=!cl.Owned] run effect give @s minecraft:instant_damage 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.Owned] run effect give @s minecraft:instant_health 1 1 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=witch] run effect give @s minecraft:instant_damage 1 3 true
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned,tag=!cl.Owned] at @s run particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.01 30 normal
execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,predicate=classes:entities/angry,tag=!summoned,tag=!cl.Owned] at @s run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute positioned ~ ~-0.5 ~ as @e[distance=..1.3,tag=!this,type=!#classes:nontarget,tag=!summoned] run kill @e[type=marker,tag=torch,sort=nearest,limit=1]

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/fire/torch/zprivate/end
