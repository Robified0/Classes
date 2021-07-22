##########MAGIC SPELLS##########

#Light
data modify storage classes:mage/spells/magic/light pages set value ['["",{"text":"Light","bold":true,"color":"dark_purple"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nCast a light. Will light up blocks it lands on.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 400"}}]']

#Teleport
data modify storage classes:mage/spells/magic/teleport pages set value ['["",{"text":"Teleport","bold":true,"color":"dark_purple"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nCast at a location, and teleport to it.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 401"}}]']
