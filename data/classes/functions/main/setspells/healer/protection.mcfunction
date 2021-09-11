#Guard
data modify storage classes:healer/spells/protection/guard pages set value ['["",{"text":"Guard","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(5 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nPlaces down a stationary barrier that blocks incoming and outgoing projectiles for 20 seconds.\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 501"}}]']

#Stop Undead
data modify storage classes:healer/spells/protection/stopundead pages set value ['["",{"text":"Stop Undead","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(4 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nStop all undead in their tracks within 10 blocks for 10 seconds. They can still attack.\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 511"}}]']
