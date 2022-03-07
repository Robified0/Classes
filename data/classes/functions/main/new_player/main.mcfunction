##Executing as player who has just joined (root/main)

#Enable Class trigger, to allow selecting of class
scoreboard players enable @s cl.Class

#Tellraw Class selection
tellraw @s ["",{"text":"=====================","color":"dark_aqua"},{"text":"\n\n"},{"text":"Select your class:","color":"green"},{"text":"\n\n"},{"text":"=====================","color":"dark_aqua"},{"text":"\n\n"},{"text":"\u2b25 ","color":"gold"},{"text":"Knight","color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 1"},"hoverEvent":{"action":"show_text","contents":"A powerful warrior, focused on protecting his allies and dealing melee damage."}},{"text":"\n"},{"text":"\u2b25 ","color":"gold"},{"text":"Ranger","color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 2"},"hoverEvent":{"action":"show_text","contents":"Proficient with bows, and grants bonuses to animals they tame."}},{"text":"\n"},{"text":"\u2b25 ","color":"gold"},{"text":"Mage","color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 3"},"hoverEvent":{"action":"show_text","contents":"Controls the elements to deal damage to enemies, and gain buffs."}},{"text":"\n"},{"text":"\u2b25 ","color":"gold"},{"text":"Healer","color":"gold","clickEvent":{"action":"run_command","value":"/trigger cl.Class set 4"},"hoverEvent":{"action":"show_text","contents":"Heals and buffs their allies using holy magic."}},{"text":"\n\n"},{"text":"=====================","color":"dark_aqua"}]
#Tag player to avoid spam
tag @s add cl.o.Joined
