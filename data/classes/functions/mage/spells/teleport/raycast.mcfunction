#Particle Effect
particle reverse_portal ^-0.3 ^ ^0.3 0.1 0.1 0.1 0.03 5 force

#Kill a split second early if no blocks are hit.
execute if entity @s[scores={cl.slo_dst=1}] run kill @s

#Play sound effect - use here when needing repeat
#execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..10] ~ ~ ~ 0.1

#Do these things when spell hits
#Not needed, handled in end.mcfunction

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
#scoreboard players set @p[tag=Teleport] cl.Cooldown 20
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ lava run kill @s
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:air run function classes:mage/spells/teleport/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:air run function classes:mage/spells/teleport/zprivate/end
