##########AIR SPELLS##########

#Levitate
data modify storage classes:mage/spells/air/levitate pages set value ['["",{"text":"Levitate","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"(2 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nTarget levitates into the air briefly.\\n\\nIf cast looking at the ground, levitates the caster and gives slow fall.\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 200"}}]']

#Slow Fall
data modify storage classes:mage/spells/air/slowfall pages set value ['["",{"text":"Slow Fall","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants caster with Slow Fall for 45 seconds.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 201"}}]']

#Tail Wind
data modify storage classes:mage/spells/air/tailwind pages set value ['["",{"text":"Tail Wind","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants caster with Speed II for 20 seconds.\\n\\nHandy in exploring, and escaping....\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 202"}}]']

#Bunny Hop
data modify storage classes:mage/spells/air/bunnyhop pages set value ['["",{"text":"Bunny Hop","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants caster with Jump Boost II for 45 seconds.\\n\\nBetter to climb mountains with!\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 203"}}]']
