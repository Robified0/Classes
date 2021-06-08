execute positioned ^ ^ ^-0.25 unless block ^ ^ ^0.25 air unless block ^ ^ ^0.25 campfire unless block ^ ^ ^0.25 soul_campfire if block ^ ^ ^-0.80 air run setblock ^ ^ ^-0.8 minecraft:fire keep
execute positioned ^ ^ ^-0.25 if block ^ ^ ^0.25 #classes:air if block ^ ^ ^-0.80 air run setblock ^ ^ ^-0.8 minecraft:fire keep
execute positioned ^ ^ ^-0.25 if block ^ ^ ^0.25 obsidian if block ^ ^ ^-0.8 air run setblock ^ ^ ^-0.8 minecraft:fire
scoreboard players reset @s slo_id
