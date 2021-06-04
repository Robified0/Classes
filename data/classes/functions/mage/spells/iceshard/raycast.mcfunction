#Particle Effect
particle dust 0.129 0.914 1.000 1 ^-0.5 ^ ^0.3 0.1 0.1 0.1 2 10 normal

#Do these things when spell hits
#execute as @e[dx=0,tag=!this,type=creeper,type=!player] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run function classes:entities/creeper/fire
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:slowness 10 1 false
execute as @e[dx=0,tag=!this,type=!#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:undead,type=!#classes:fireproof,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 0 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=!#classes:undead,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_damage 1 1 true
execute as @e[dx=0,tag=!this,type=#classes:fireproof,type=#classes:undead,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run effect give @s minecraft:instant_health 1 1 true
execute as @e[dx=0,tag=!this,type=!#classes:nontarget,nbt={AngerTime:0}] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run data modify entity @s AngryAt set from entity @p[scores={class=3}] UUID

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[dx=0,tag=!this,type=!#classes:nontarget] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run kill @e[type=marker,tag=iceshard,sort=nearest,limit=1]

#Play sound
execute at @s run playsound minecraft:block.fire.extinguish player @a[distance=..10] ~ ~ ~ 0.1 2
execute at @s run playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 3 1.5

#Only change filepaths for spell
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/iceshard/raycast
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/iceshard/zprivate/end
