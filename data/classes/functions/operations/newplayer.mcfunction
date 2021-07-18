scoreboard players set @s cl.Mana 0
scoreboard players set @s cl.ManaRegenSec 0
scoreboard players set @s cl.currSpellSel 1
scoreboard players set @s cl.loadOrder 1
scoreboard players set @s cl.Cooldown 0
tellraw @s ["",{"text":"Uses the elements to shape\nthe world around them.","italic":true},{"text":"\n\n"},{"text":"While unable to use weapons,\nthey are capable of aiding\nallies, and damaging enemies\nwith their wands and staves\nto cast potent spells.","italic":true,"color":"dark_aqua"}]
scoreboard players enable @s cl.Class
tag @s add Joined
scoreboard players set @s cl.loadSpell 0
