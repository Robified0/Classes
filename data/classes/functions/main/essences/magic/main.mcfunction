##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.Invisibility:1b}}}] run function classes:main/essences/magic/invisibility/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Light:1b}}}] run function classes:main/essences/magic/light/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Mend:1b}}}] run function classes:main/essences/magic/mend/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Shield:1b}}}] run function classes:main/essences/magic/shield/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Teleport:1b}}}] run function classes:main/essences/magic/teleport/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
