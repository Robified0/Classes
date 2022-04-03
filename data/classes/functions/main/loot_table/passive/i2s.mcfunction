#I-S Passive/Neutral Mobs
execute if entity @s[type=llama] run data merge entity @s {DeathLootTable:"classes:entities/llama"}
execute if entity @s[type=mooshroom] run data merge entity @s {DeathLootTable:"classes:entities/mooshroom"}
execute if entity @s[type=mule] run data merge entity @s {DeathLootTable:"classes:entities/mule"}
execute if entity @s[type=ocelot] run data merge entity @s {DeathLootTable:"classes:entities/ocelot"}
execute if entity @s[type=panda] run data merge entity @s {DeathLootTable:"classes:entities/panda"}
execute if entity @s[type=parrot] run data merge entity @s {DeathLootTable:"classes:entities/parrot"}
execute if entity @s[type=pig] run data merge entity @s {DeathLootTable:"classes:entities/pig"}
execute if entity @s[type=polar_bear] run data merge entity @s {DeathLootTable:"classes:entities/polar_bear"}
execute if entity @s[type=pufferfish] run data merge entity @s {DeathLootTable:"classes:entities/pufferfish"}
execute if entity @s[type=rabbit] run data merge entity @s {DeathLootTable:"classes:entities/rabbit"}
execute if entity @s[type=salmon] run data merge entity @s {DeathLootTable:"classes:entities/salmon"}
execute if entity @s[type=sheep] run function classes:main/loot_table/passive/sheep/sheep
execute if entity @s[type=skeleton_horse] run data merge entity @s {DeathLootTable:"classes:entities/skeleton_horse"}
execute if entity @s[type=squid] run data merge entity @s {DeathLootTable:"classes:entities/squid"}
execute if entity @s[type=strider] run data merge entity @s {DeathLootTable:"classes:entities/strider"}
