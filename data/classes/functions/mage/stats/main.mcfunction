execute unless data entity @s[scores={cl.Class=3}] Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
execute unless data entity @s[scores={cl.Class=3}] Attributes[{Base: -8.0d,Name:"minecraft:generic.attack_damage"}] run attribute @s minecraft:generic.attack_damage base set -8
execute if entity @s[nbt={Health:20.0f},scores={cl.Class=3}] run effect give @s minecraft:instant_damage 1 0
execute if entity @s[nbt={Health:20.0f},scores={cl.Class=3}] run attribute @s minecraft:generic.max_health base set 14
