########################################
#          AOE Spell Effects           #
#                                      #
# This tracks what AEC's should do     #
# based on the tags they are given     #
# when they are summoned.              #
#                                      #
# Tags are listed next to each         #
# heading.                             #
#                                      #
########################################

#XP Handle
execute as @e[type=minecraft:area_effect_cloud,tag=cl.HitBySpell] positioned ~-0.79 ~-0.79 ~-0.79 if entity @s[dx=0] positioned ~0.79 ~0.79 ~0.79 run scoreboard players set @s cl.HitBySpell 100

#AEC - Angry At - (tag=cl.angry)
execute as @e[type=minecraft:area_effect_cloud,tag=cl.angry] at @s run data modify entity @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,type=!item,distance=..3,limit=1,sort=random,nbt={AngerTime:0},tag=!summoned,tag=!cl.Owned] AngryAt set from entity @p[scores={cl.Class=3}] UUID

#AEC - Wither - (tag=cl.wither)
execute as @e[type=minecraft:area_effect_cloud,tag=cl.wither3] at @s run effect give @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,distance=..3,sort=nearest,tag=!summoned,tag=!cl.Owned] minecraft:wither 3 4 true

#AEC - Fire - (tag=cl.fire)
execute as @e[type=minecraft:area_effect_cloud,tag=cl.fire] at @s run data merge entity @e[type=!player,type=!#classes:nontarget,type=!#classes:fireproof,type=!minecraft:area_effect_cloud,type=!item,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] {Fire:80}

#AEC - Fire Damage (tag=cl.damage)
execute as @e[type=minecraft:area_effect_cloud,tag=cl.damage1] at @s run effect give @e[type=!player,type=!#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,type=!minecraft:area_effect_cloud,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:area_effect_cloud,tag=cl.damage1] at @s run effect give @e[type=#classes:undead,type=!#classes:fireproof,type=!minecraft:area_effect_cloud,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] minecraft:instant_health 1 0 true


#Sound - Fire
execute at @e[type=minecraft:area_effect_cloud,tag=cl.fire] run playsound minecraft:block.furnace.fire_crackle player @a ~ ~ ~ 1
