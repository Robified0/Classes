execute if entity @s[scores={cl.summonCount=1..}] run particle enchant ~ ~ ~ 0.1 1 0.1 1 10 force
execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~2 ~2 ~2 air replace snow
execute if entity @s[scores={cl.summonCount=..0}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1
execute if entity @s[scores={cl.summonCount=..0}] run tp @s ~ -4096 ~
