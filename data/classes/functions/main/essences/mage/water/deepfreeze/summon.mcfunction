execute at @s positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Tags:["cl.EssenceMarker","cl.ess.Water","cl.ess.DeepFreeze"],Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3600,Age:0}

execute at @s run tellraw @a[distance=..20] ["",{"text":"An essence of ","italic":true,"color":"aqua"},{"text":"Deep Freeze","italic":true,"color":"blue"},{"text":" appeared.","italic":true,"color":"aqua"}]
