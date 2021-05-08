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
execute as @e[type=minecraft:area_effect_cloud,tag=angry] at @s run data modify entity @e[type=!player,type=!minecraft:area_effect_cloud,type=!item,distance=..6,limit=1,sort=random,nbt={AngerTime:0}] AngryAt set from entity @p[scores={class=3}] UUID

#AEC - Wither - (tag=wither)
execute as @e[type=minecraft:area_effect_cloud,tag=wither] at @s run effect give @e[type=!player,type=!minecraft:area_effect_cloud,distance=..6,sort=nearest] minecraft:wither 1 1 true

#AEC - Fire - (tag=fire)
execute as @e[type=minecraft:area_effect_cloud,tag=fire] at @s run data merge entity @e[type=!player,type=!minecraft:area_effect_cloud,type=!item,distance=..6,limit=1,sort=random] {Fire:20}

#Sound - Fire
execute at @e[type=minecraft:area_effect_cloud,tag=fire] run playsound minecraft:block.furnace.fire_crackle ambient @a[distance=..20] ~ ~ ~ 1
execute at @e[type=minecraft:armor_stand,tag=fire] run playsound minecraft:block.furnace.fire_crackle ambient @a[distance=..20] ~ ~ ~ 1
