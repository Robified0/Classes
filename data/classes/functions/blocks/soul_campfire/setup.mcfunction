data merge entity @s {Age:-32768,PickupDelay:32767,Motion:[0.0,0.0,0.0]}
execute align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
scoreboard players add @s cl.track.SoulExtract.time 24000
tag @s add cl.SoulExtract.Setup
