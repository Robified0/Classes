##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Levitate:1b}}}] run function classes:main/essences/air/levitate/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.BunnyHop:1b}}}] run function classes:main/essences/air/bunnyhop/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Slowfall:1b}}}] run function classes:main/essences/air/slowfall/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.TailWind:1b}}}] run function classes:main/essences/air/tailwind/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
