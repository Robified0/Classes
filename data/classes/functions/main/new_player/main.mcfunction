scoreboard players set @s cl.Mana 0
scoreboard players set @s cl.ManaRegenSec 0
scoreboard players set @s cl.currSpellSel 1
scoreboard players set @s cl.loadSpell 1
scoreboard players set @s cl.Cooldown 0
scoreboard players enable @s cl.Class
tellraw @s ["",{"text":"-----------","color":"dark_aqua"},{"text":"\n"},{"text":"Select a class:","color":"green"},{"text":"\n"},{"text":"-----------","color":"dark_aqua"},{"text":"\n"},{"text":"- Mage","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 3"}},{"text":"\n"},{"text":"- Healer","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 4"}},{"text":"\n"},{"text":"-----------","color":"dark_aqua"}]
tag @s add cl.o.Joined
