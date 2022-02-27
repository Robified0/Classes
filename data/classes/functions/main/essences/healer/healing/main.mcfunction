##Executing as dropped item from loot tables (main/itemhandle)

execute if entity @s[nbt={Item:{tag:{cl.ess.CureEffects:1b}}}] run function classes:main/essences/healer/healing/cureeffects/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Heal:1b}}}] run function classes:main/essences/healer/healing/heal/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.HealCircle:1b}}}] run function classes:main/essences/healer/healing/healcircle/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Mending:1b}}}] run function classes:main/essences/healer/healing/mending/summon
execute if entity @s[nbt={Item:{tag:{cl.ess.Satiate:1b}}}] run function classes:main/essences/healer/healing/satiate/summon

#Play summon sound for Essence
execute at @s run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 0.8 0.8
kill @s
