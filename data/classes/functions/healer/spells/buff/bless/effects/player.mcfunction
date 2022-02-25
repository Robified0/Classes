effect give @s minecraft:absorption 20 1 false
scoreboard players set @s cl.e.Bless 400

#Edit comment/uncomment if you want it to continue/end when it hits a target
execute as @e[type=marker,tag=cl.r.bless,sort=nearest,limit=1] run function classes:healer/spells/buff/bless/zprivate/end
