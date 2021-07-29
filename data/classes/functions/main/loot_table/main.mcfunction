#Handle scoreboard to time when last hit by player
scoreboard players remove @s[scores={cl.HitBySpell=1..}] cl.HitBySpell 1
scoreboard players reset @s[scores={cl.HitBySpell=..0}] cl.HitBySpell

#Hostile Mobs
execute if entity @s[type=skeleton] run data merge entity @s {DeathLootTable:"classes:entities/skeleton"}
execute if entity @s[type=zombie] run data merge entity @s {DeathLootTable:"classes:entities/zombie"}
execute if entity @s[type=zombie_villager] run data merge entity @s {DeathLootTable:"classes:entities/zombie_villager"}
execute if entity @s[type=husk] run data merge entity @s {DeathLootTable:"classes:entities/husk"}
execute if entity @s[type=stray] run data merge entity @s {DeathLootTable:"classes:entities/stray"}
execute if entity @s[type=spider] run data merge entity @s {DeathLootTable:"classes:entities/spider"}
execute if entity @s[type=cave_spider] run data merge entity @s {DeathLootTable:"classes:entities/cave_spider"}
execute if entity @s[type=blaze] run data merge entity @s {DeathLootTable:"classes:entities/blaze"}
execute if entity @s[type=creeper] run data merge entity @s {DeathLootTable:"classes:entities/creeper"}
execute if entity @s[type=drowned] run data merge entity @s {DeathLootTable:"classes:entities/drowned"}
execute if entity @s[type=endermite] run data merge entity @s {DeathLootTable:"classes:entities/endermite"}
execute if entity @s[type=evoker] run data merge entity @s {DeathLootTable:"classes:entities/evoker"}
execute if entity @s[type=ghast] run data merge entity @s {DeathLootTable:"classes:entities/ghast"}
execute if entity @s[type=guardian] run data merge entity @s {DeathLootTable:"classes:entities/guardian"}
execute if entity @s[type=hoglin] run data merge entity @s {DeathLootTable:"classes:entities/hoglin"}
execute if entity @s[type=magma_cube] run data merge entity @s {DeathLootTable:"classes:entities/magma_cube"}
execute if entity @s[type=phantom] run data merge entity @s {DeathLootTable:"classes:entities/phantom"}
execute if entity @s[type=piglin] run data merge entity @s {DeathLootTable:"classes:entities/piglin"}
execute if entity @s[type=piglin_brute] run data merge entity @s {DeathLootTable:"classes:entities/piglin_brute"}
execute if entity @s[type=pillager] run data merge entity @s {DeathLootTable:"classes:entities/pillager"}
#Passive Mobs
execute if entity @s[type=cow] run data merge entity @s {DeathLootTable:"classes:entities/cow"}
execute if entity @s[type=chicken] run data merge entity @s {DeathLootTable:"classes:entities/chicken"}
execute if entity @s[type=axolotl] run data merge entity @s {DeathLootTable:"classes:entities/axolotl"}
execute if entity @s[type=cod] run data merge entity @s {DeathLootTable:"classes:entities/cod"}
execute if entity @s[type=cat] run data merge entity @s {DeathLootTable:"classes:entities/cat"}
execute if entity @s[type=fox] run data merge entity @s {DeathLootTable:"classes:entities/fox"}
execute if entity @s[type=glow_squid] run data merge entity @s {DeathLootTable:"classes:entities/glow_squid"}
execute if entity @s[type=goat] run data merge entity @s {DeathLootTable:"classes:entities/goat"}
execute if entity @s[type=horse] run data merge entity @s {DeathLootTable:"classes:entities/horse"}
execute if entity @s[type=llama] run data merge entity @s {DeathLootTable:"classes:entities/llama"}
execute if entity @s[type=mooshroom] run data merge entity @s {DeathLootTable:"classes:entities/mooshroom"}
execute if entity @s[type=mule] run data merge entity @s {DeathLootTable:"classes:entities/mule"}
execute if entity @s[type=ocelot] run data merge entity @s {DeathLootTable:"classes:entities/ocelot"}
execute if entity @s[type=panda] run data merge entity @s {DeathLootTable:"classes:entities/panda"}
execute if entity @s[type=parrot] run data merge entity @s {DeathLootTable:"classes:entities/parrot"}
execute if entity @s[type=pig] run data merge entity @s {DeathLootTable:"classes:entities/pig"}
tag @s add cl.LTAdjusted
