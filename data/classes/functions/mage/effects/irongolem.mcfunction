execute as @e[type=iron_golem,tag=summoned,scores={cl.summonCount=1..}] at @s run particle enchant ~ ~ ~ 0.1 1 0.1 1 10 force
execute as @e[type=iron_golem,tag=summoned,scores={cl.summonCount=..0}] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1
execute as @e[type=iron_golem,tag=summoned,scores={cl.summonCount=..0}] run tp @s ~ -4096 ~
