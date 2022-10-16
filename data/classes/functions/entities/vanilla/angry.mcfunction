#AEC Summon
execute if entity @s[type=#classes:undead,nbt=!{Invulnerable:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:1,Radius:1f,Duration:6,Tags:["cl.makeAngry"],Effects:[{Id:6,Amplifier:31b,Duration:0,ShowParticles:0b}]}
execute if entity @s[type=!#classes:nontarget,type=!#classes:undead,nbt=!{Invulnerable:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:1,Radius:1f,Duration:6,Tags:["cl.makeAngry"],Effects:[{Id:7,Amplifier:31b,Duration:0,ShowParticles:0b}]}

#AEC Update Owner
execute as @e[type=minecraft:area_effect_cloud,tag=cl.makeAngry] run data modify entity @s Owner set from entity @p[scores={cl.Class=3..4}] UUID
