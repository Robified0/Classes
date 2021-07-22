scoreboard players set @s cl.Mana 0
scoreboard players set @s cl.ManaRegenSec 0
scoreboard players set @s cl.currSpellSel 1
scoreboard players set @s cl.loadSpell 1
scoreboard players set @s cl.Cooldown 0
scoreboard players enable @s cl.Class
tellraw @s ["",{"text":"-----------","color":"dark_aqua"},{"text":"\n"},{"text":"Select a class:","color":"green"},{"text":"\n"},{"text":"-----------","color":"dark_aqua"},{"text":"\n"},{"text":"- ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 3"}},{"text":"Mage","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 3"}},{"text":"\n"},{"text":"-----------","color":"dark_aqua"}]
scoreboard players set @s cl.emptySlot1 1
scoreboard players set @s cl.emptySlot2 1
scoreboard players set @s cl.emptySlot3 1
scoreboard players set @s cl.emptySlot4 1
scoreboard players set @s cl.emptySlot5 1
scoreboard players set @s cl.s.Torch 0
scoreboard players set @s cl.s.BedofCoals 0
scoreboard players set @s cl.s.FlameBurst 0
scoreboard players set @s cl.s.WaterStrike 0
scoreboard players set @s cl.s.IceShard 0
scoreboard players set @s cl.s.ColdShield 0
scoreboard players set @s cl.s.DeepFreeze 0
scoreboard players set @s cl.s.SnowGolem 0
scoreboard players set @s cl.s.WaterBrth 0
scoreboard players set @s cl.s.DolpGrace 0
scoreboard players set @s cl.s.Levitate 0
scoreboard players set @s cl.s.SlowFall 0
scoreboard players set @s cl.s.TailWind 0
scoreboard players set @s cl.s.BunnyHop 0
scoreboard players set @s cl.s.WindWard 0
scoreboard players set @s cl.s.Poison 0
scoreboard players set @s cl.s.StoneFlesh 0
scoreboard players set @s cl.s.IronFlesh 0
scoreboard players set @s cl.s.DiaFlesh 0
scoreboard players set @s cl.s.IronGolem 0
scoreboard players set @s cl.s.Light 0
scoreboard players set @s cl.s.Teleport 0

##Set tags
tag @s add cl.s.Torch
tag @s add cl.s.BedofCoals
tag @s add cl.s.FlameBurst
tag @s add cl.s.WaterStrike
tag @s add cl.s.IceShard
tag @s add cl.s.ColdShield
tag @s add cl.s.DeepFreeze
tag @s add cl.s.SnowGolem
tag @s add cl.s.WaterBrth
tag @s add cl.s.DolpGrace
tag @s add cl.s.Levitate
tag @s add cl.s.SlowFall
tag @s add cl.s.TailWind
tag @s add cl.s.BunnyHop
tag @s add cl.s.WindWard
tag @s add cl.s.Poison
tag @s add cl.s.StoneFlesh
tag @s add cl.s.IronFlesh
tag @s add cl.s.DiaFlesh
tag @s add cl.s.IronGolem
tag @s add cl.s.Light
tag @s add cl.s.Teleport

tag @s add Joined
