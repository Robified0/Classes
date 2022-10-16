## Get damage score
# Set top damage first (this is the range minus the random below)
scoreboard players set @s cl.damageRange 4
# Run randomize function
function classes:operations/damage/random
#Boost it by the below to make sure it always does at *least* this amount
scoreboard players add @s cl.damageRandom 6

#Make them mad


particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force
execute as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run data merge entity @s {Fire:100}
execute as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run function classes:operations/damage/apply
execute as @e[tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run function classes:entities/vanilla/angry

summon creeper ~ ~ ~ {ExplosionRadius:-2b,Fuse:1,ignited:1b,Tags:["cl.t.summoned"]}
kill @s
