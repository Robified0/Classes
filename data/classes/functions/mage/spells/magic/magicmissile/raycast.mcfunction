#Particle Effect
particle firework ^-0.4 ^0.2 ^0.3 0 0 0 0.05 1 force

#Play sound effect - use here when needing repeat


#Do these things when spell hits
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] unless score @s cl.slo_id = @e[type=marker,tag=cl.r.magicmissile,sort=nearest,limit=1] cl.slo_id at @s run function classes:mage/spells/magic/magicmissile/effects/mob

#Edit comment/uncomment if you want it to continue/end when it hits a target
# Kill Marker to avoid re-runs
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!cl.r.this,type=!#classes:nontarget,tag=!cl.t.summoned,tag=!cl.t.Owned,dx=0,dy=0,dz=0] run function classes:mage/spells/magic/magicmissile/zprivate/end

#Stop spell from going through certain spells
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=cl.spell.noPassthrough,dx=0,dy=0,dz=0] run kill @s

#Only change filepaths for spell
scoreboard players remove #temp cl.slowcast 1
execute if score #temp cl.slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #classes:watercapable run function classes:mage/spells/magic/magicmissile/raycast
execute if score #temp cl.slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #classes:watercapable run function classes:mage/spells/magic/magicmissile/zprivate/end
