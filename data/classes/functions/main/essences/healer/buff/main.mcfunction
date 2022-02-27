##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Bless:1b}}}] run function classes:main/essences/healer/buff/bless/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.FireResist:1b}}}] run function classes:main/essences/healer/buff/fireresist/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Guard:1b}}}] run function classes:main/essences/healer/buff/guard/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Inspire:1b}}}] run function classes:main/essences/healer/buff/inspire/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.SpeedBoost:1b}}}] run function classes:main/essences/healer/buff/speedboost/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Vitality:1b}}}] run function classes:main/essences/healer/buff/vitality/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
