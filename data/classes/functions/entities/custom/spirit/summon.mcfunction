# Data merge if score matches 0
summon vex ~ ~ ~ {DeathLootTable:"classes:items/spiritessence",CanPickUpLoot:0b,Health:10f,Tags:["cl.isCustomMob"],ArmorItems:[{},{},{},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1061943633,1206992957,-1355954278,-1550453126],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZhMTMwMzJmYTkzOWYxODRkYWE2YTRlMTFlNmYzYTkxM2U0OGYyNTA0OTgxNjVjNTY2NWNjZjQ5YzcyYTE0MCJ9fX0='}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:1}]}
execute as @e[type=vex,limit=1,sort=nearest,tag=!cl.entity.vex.bound] run function classes:entities/custom/spirit/bind

#TP mob to death
tp @s ~ -600 ~

# Increment count
#scoreboard players add #cl.Spirit cl.customMob 1

# Reset count
#execute if score #cl.Spirit cl.customMob matches 50 run scoreboard players set #cl.Spirit cl.customMob 0
