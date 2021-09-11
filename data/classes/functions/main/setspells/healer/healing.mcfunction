#Heal
data modify storage classes:healer/spells/healing/heal pages set value ['["",{"text":"Heal","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nHeals hit friendlies for 4 hearts.\\n\\nPoint down on cast to heal yourself!\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 500"}}]']

#Satiate
data modify storage classes:healer/spells/healing/satiate pages set value ['["",{"text":"Satiate","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(2 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nRestore 5 points of hunger to hit allies.\\n\\nPoint down on cast to heal yourself!\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 506"}}]']

#Heal Circle
data modify storage classes:healer/spells/healing/healcircle pages set value ['["",{"text":"Heal Circle","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nYou project healing energy into a circle, healing allies and damaging undead within 5 blocks.\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 507"}}]']

#Holy Strike
data modify storage classes:healer/spells/healing/holystrike pages set value ['["",{"text":"Holy Strike","bold":true,"color":"green"},{"text":"\\n","color":"reset","bold":true},{"text":"(2 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nSmite undead enemies with a concentrated strike of healing energy.\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 510"}}]']
