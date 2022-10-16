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

#AEC - Angry At - (tag=cl.angry)
execute if entity @s[tag=cl.angry] as @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,distance=..3,sort=random,predicate=classes:entities/angry,tag=!summoned,tag=!cl.Owned] run function classes:entities/vanilla/angry

#AEC - Wither - (tag=cl.wither)
execute if entity @s[tag=cl.wither3] run effect give @e[type=!#classes:nontarget,type=!minecraft:area_effect_cloud,distance=..3,sort=nearest,tag=!summoned,tag=!cl.Owned] minecraft:wither 3 4 true

#AEC - Fire - (tag=cl.fire)
#execute if entity @s[tag=cl.fire] run data merge entity @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] {Fire:80}

#AEC - Fire Damage (tag=cl.damage)
execute if entity @s[tag=cl.damage1] run effect give @e[type=!#classes:undead,type=!#classes:nontarget,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] minecraft:wither 5 0 true
execute if entity @s[tag=cl.damage1] run effect give @e[type=#classes:undead,type=!#classes:fireproof,distance=..3,limit=1,sort=random,tag=!summoned,tag=!cl.Owned] minecraft:regeneration 5 0 true

#Sound - Fire
execute if entity @s[tag=cl.fire] run playsound minecraft:block.furnace.fire_crackle player @a ~ ~ ~ 1
