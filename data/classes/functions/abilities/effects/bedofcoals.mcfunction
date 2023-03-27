#Set score of AEC
execute unless score @s cl.e.BedofCoals matches 1.. run scoreboard players set @s cl.e.BedofCoals 100

#Light mobs on fire, if they aren't already
execute as @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,predicate=!classes:check/effects/on_fire,tag=!cl.t.summoned,tag=!cl.t.Owned] run data merge entity @s {Fire:50}

#Deal damage in 1 second intervals
execute if score @s cl.e.BedofCoals matches 100 run damage @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] 2 minecraft:in_fire by @p
execute if score @s cl.e.BedofCoals matches 80 run damage @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] 2 minecraft:in_fire by @p
execute if score @s cl.e.BedofCoals matches 60 run damage @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] 2 minecraft:in_fire by @p
execute if score @s cl.e.BedofCoals matches 40 run damage @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] 2 minecraft:in_fire by @p
execute if score @s cl.e.BedofCoals matches 20 run damage @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] 2 minecraft:in_fire by @p
scoreboard players remove @s cl.e.BedofCoals 1
