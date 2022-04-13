execute at @s positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Tags:["cl.EssenceMarker","cl.ess.Fire","cl.ess.FireShield"],Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3600,Age:0,CustomName:'{"text":"Fire Shield","color":"red"}'}

execute at @s run tellraw @a[distance=..20] ["",{"text":"An essence of ","italic":true,"color":"aqua"},{"text":"Fire Shield","italic":true,"color":"red"},{"text":" appeared.","italic":true,"color":"aqua"}]
