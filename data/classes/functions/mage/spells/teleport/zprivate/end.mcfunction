execute as @e[tag=!slowcast,scores={slo_id=1..}] if score @s slo_id = @e[type=marker,tag=slowcast,limit=1,sort=nearest] slo_id run function classes:mage/spells/teleport/end
kill @s
