execute if entity @s[scores={cl.summonCount=1..}] run particle enchant ~ ~ ~ 0.1 1 0.1 1 10 force
execute if entity @s[scores={cl.summonCount=..0}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1
execute if entity @s[scores={cl.summonCount=..0}] run tp @s ~ -4096 ~
execute if entity @s[scores={cl.summonCount=..0}] run kill @s
