## Checks if player still has absorption. If they do, stop. Runs once a second. (operations/delay/20)

execute if data entity @s {AbsorptionAmount:0.0f} run effect clear @s minecraft:absorption
execute if data entity @s {AbsorptionAmount:0.0f} run scoreboard players set @s cl.e.Bless 0
