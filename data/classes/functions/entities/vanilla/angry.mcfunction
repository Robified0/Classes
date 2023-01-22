#AEC Summon
#Amplifier is 31, which causes the mob to actually take no damage, but turn red and start their AI for taking damage (passive runs, neutral get aggroed, etc). One line for living and one for undead.
execute if entity @s[type=#classes:undead,nbt=!{Invulnerable:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",WaitTime:0,ReapplicationDelay:0,Radius:1f,Duration:6,Tags:["cl.makeAngry"],Effects:[{Id:6,Amplifier:31b,Duration:0,ShowParticles:0b}]}
execute if entity @s[type=!#classes:nontarget,type=!#classes:undead,nbt=!{Invulnerable:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",WaitTime:0,ReapplicationDelay:0,Radius:1f,Duration:6,Tags:["cl.makeAngry"],Effects:[{Id:7,Amplifier:31b,Duration:0,ShowParticles:0b}]}

#AEC Update Owner
execute as @e[type=minecraft:area_effect_cloud,tag=cl.makeAngry] run data modify entity @s Owner set from entity @p[scores={cl.Class=3..4}] UUID
