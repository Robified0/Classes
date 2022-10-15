#Particle Effect
particle reverse_portal ^-0.35 ^0.2 ^0.3 0.1 0.1 0.1 0.03 5 force

#Kill a split second early if no blocks are hit.
execute if entity @s[scores={cl.slo_dst=1}] run kill @s

#Do these things when spell hits
#Not needed, handled in end.mcfunction

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run function classes:mage/spells/magic/teleport/zprivate/end

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ lava run kill @s
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/magic/teleport/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/magic/teleport/zprivate/end
