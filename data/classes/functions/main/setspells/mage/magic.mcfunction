##########MAGIC SPELLS##########

#Light
data modify storage classes:mage/spells/magic/light pages set value ['["",{"text":"Light","bold":true,"color":"dark_purple"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nCast a light. Will light up blocks it lands on.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 400"}}]']

#Teleport
data modify storage classes:mage/spells/magic/teleport pages set value ['["",{"text":"Teleport","bold":true,"color":"dark_purple"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nCast at a location, and teleport to it.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 401"}}]']

#Shield
data modify storage classes:mage/spells/magic/shield pages set value ['["",{"text":"Shield","bold":true,"color":"dark_purple"},{"text":"\\n","color":"reset","bold":true},{"text":"(Drains Mana over time)","bold":true,"color":"aqua"},{"text":"\\n\\nHold to cast. Reflects projectiles in front of you to where you\'re looking.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 402"}}]']
