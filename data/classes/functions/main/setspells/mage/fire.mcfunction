##########FIRE SPELLS##########

#Torch
data modify storage classes:mage/spells/fire/torch pages set value ['["",{"text":"Torch","bold":true,"color":"red"},{"text":"\\n\\nA basic fire spell.\\n\\nCast it at an enemy to damage them and light them on fire.\\n\\nNo effect against fire-resistant mobs.\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 1"}}]']

#Bed of Coals
data modify storage classes:mage/spells/fire/bedofcoals pages set value ['["",{"text":"Bed of Coals","bold":true,"color":"red"},{"text":"\\n\\nCreate a mass of embers on the ground that damages and ignites any mob that walks through it.\\n\\nNo effect against fire-resistant mobs.\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 2"}}]']

#Flame Burst
data modify storage classes:mage/spells/fire/flameburst pages set value ['["",{"text":"Flame Burst","bold":true,"color":"red"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nAny mobs within 5 blocks take fire damage, and ignite into flames.\\n\\nNo effect against fire-resistant mobs.\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 3"}}]']

#Fireball
data modify storage classes:mage/spells/fire/fireball pages set value ['["",{"text":"Fireball","bold":true,"color":"red"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nPlace holder text\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 4"}}]']
