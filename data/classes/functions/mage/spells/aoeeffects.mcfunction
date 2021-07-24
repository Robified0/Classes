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

#AEC - Angry At - (tag=angry)
execute as @e[type=minecraft:area_effect_cloud,tag=angry3] at @s run data modify entity @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,type=!item,distance=..3,limit=1,sort=random,nbt={AngerTime:0},tag=!summoned] AngryAt set from entity @p[scores={cl.Class=3}] UUID

#AEC - Wither - (tag=wither)
execute as @e[type=minecraft:area_effect_cloud,tag=wither3] at @s run effect give @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,distance=..3,sort=nearest,tag=!summoned] minecraft:wither 3 4 true

#AEC - Fire - (tag=fire)
execute as @e[type=minecraft:area_effect_cloud,tag=fire3] at @s run data merge entity @e[type=!player,type=!#classes:nontarget,type=!#classes:fireproof,type=!minecraft:area_effect_cloud,type=!item,distance=..3,limit=1,sort=random,tag=!summoned] {Fire:80}

#Sound - Fire
execute at @e[type=minecraft:area_effect_cloud,tag=fire] run playsound minecraft:block.furnace.fire_crackle player @a ~ ~ ~ 1
