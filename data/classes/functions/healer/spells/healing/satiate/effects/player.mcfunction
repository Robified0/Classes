#Give the effect
effect give @s minecraft:saturation 5 1 true

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute at @s as @e[type=marker,tag=cl.r.satiate,sort=nearest,limit=1] run function classes:healer/spells/healing/satiate/zprivate/end
