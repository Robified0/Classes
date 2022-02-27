#Apply Effects
function classes:main/loot_table/main
playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.5 1.3
data merge entity @s {Fire:200}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire
execute as @s[type=!#classes:undead] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[type=#classes:undead] run effect give @s minecraft:instant_health 1 1 true
execute as @s[type=witch] run effect give @s minecraft:instant_damage 1 3 true
particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.01 30 normal
execute as @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
#execute as @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1] run function classes:mage/spells/fire/torch/zprivate/end
