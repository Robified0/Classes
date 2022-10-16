#Give player particle effect, and track scoreboard.
execute if entity @s[scores={cl.e.FireShield=1..}] run particle small_flame ~ ~ ~ 3 0.5 3 0.03 1 normal
execute if entity @s[scores={cl.e.FireShield=1..}] as @e[type=!#classes:nontarget,tag=!cl.spell.noPassthrough,tag=!cl.t.summoned,tag=!cl.t.Owned,predicate=!classes:check/effects/on_fire,distance=..3] run data merge entity @s {Fire:100}
execute if entity @s[scores={cl.e.FireShield=0..}] run scoreboard players remove @s cl.e.FireShield 1
execute if entity @s[scores={cl.e.FireShield=..0}] run tag @s remove cl.s.FireShield
execute if entity @s[scores={cl.e.FireShield=..0}] run scoreboard players reset @s cl.e.FireShield
