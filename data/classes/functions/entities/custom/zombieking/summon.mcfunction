# Data merge if score matches 0
execute if score #cl.ZombieKing cl.customMob matches 0 run data merge entity @s {CanPickUpLoot:0b,Health:150f,CanBreakDoors:1b,Tags:["cl.ZombieKing"],CustomName:'{"text":"Zombie King","color":"gold","bold":true}',HandItems:[{id:'minecraft:iron_sword',Count:1b},{}],HandDropChances:[0.085F,0.085F],ArmorItems:[{id:'minecraft:golden_boots',Count:1b},{id:'minecraft:golden_leggings',Count:1b},{id:'minecraft:golden_chestplate',Count:1b},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1680704291,-1630648293,-1164663505,-1847362537],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk4NTQ3YzkwZWExMWMzMWU5YmFiYTUwMGMyN2JiMmM2ZjVhYTBjM2M5NmJmMDk0MjU0OWMwNGI4NzkxMTg2OSJ9fX0='}]}}}}],Attributes:[{Name:generic.max_health,Base:150},{Name:generic.follow_range,Base:50},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:3},{Name:zombie.spawn_reinforcements,Base:0.2}]}
# Add tag
tag @s add cl.customProc

# Increment count
scoreboard players add #cl.ZombieKing cl.customMob 1

# Reset count
execute if score #cl.ZombieKing cl.customMob matches 100 run scoreboard players set #cl.ZombieKing cl.customMob 0
