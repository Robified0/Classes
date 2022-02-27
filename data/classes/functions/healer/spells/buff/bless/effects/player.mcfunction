scoreboard players set @s cl.e.Bless 12000
effect give @s minecraft:absorption 600 2 false

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.bless,sort=nearest,limit=1] run function classes:healer/spells/buff/bless/zprivate/end
