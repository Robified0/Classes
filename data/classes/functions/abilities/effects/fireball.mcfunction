##Executing as marker no longer riding snowball.
#Handle spell landing

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force
execute as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run data merge entity @s {Fire:100}
execute as @e[tag=!cl.r.this,type=!#classes:nontarget,type=!#classes:fireproof,tag=!cl.t.summoned,tag=!cl.t.Owned,distance=..5] run damage @s 8 minecraft:fireball by @p

summon creeper ~ ~ ~ {ExplosionRadius:-2b,Fuse:1,ignited:1b,Tags:["cl.t.summoned"]}
kill @s
