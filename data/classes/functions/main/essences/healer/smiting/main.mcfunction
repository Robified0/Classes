##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.HolyStrike:1b}}}] run function classes:main/essences/healer/smiting/holystrike/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.StopUndead:1b}}}] run function classes:main/essences/healer/smiting/stopundead/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
