##########WATER SPELLS##########

#Water Strike
data modify storage classes:mage/spells/water/waterstrike pages set value ['["",{"text":"Water Strike","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(1 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nBlast target with jet of water. Extra damage against fire-resistant mobs.\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 100"}}]']

#Ice Shard
data modify storage classes:mage/spells/water/iceshard pages set value ['["",{"text":"Ice Shard","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(2 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nHit the enemy with a shard of ice, damaging them and slowing them down for a short time.\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 101"}}]']

#Cold Shield
data modify storage classes:mage/spells/water/coldshield pages set value ['["",{"text":"Cold Shield","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(4 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants fire resistance for 20 seconds.\\n\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 102"}}]']

#Deep Freeze
data modify storage classes:mage/spells/water/deepfreeze pages set value ['["",{"text":"Deep Freeze","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(5 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nFreezes all normal enemies in their tracks for 15 seconds. They are unable to attack or move.\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 103"}}]']

#Snow Golem
data modify storage classes:mage/spells/water/snowgolem pages set value ['["",{"text":"Snow Golem","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(4 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nSummons a snow golem for 30 seconds to aid you in battle. Only one can be summoned.\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 104"}}]']

#Water Breathing
data modify storage classes:mage/spells/water/waterbrth pages set value ['["",{"text":"Water Breathing","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants you Water Breathing for 60 seconds.\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 105"}}]']

#Dolphin's Grace
data modify storage classes:mage/spells/water/dolpgrace pages set value ['["",{"text":"Dolphin\'s Grace","bold":true,"color":"blue"},{"text":"\\n","color":"reset","bold":true},{"text":"(3 Mana)","bold":true,"color":"aqua"},{"text":"\\n\\nGrants you Dolphin\'s Grace (enhanced swim speed) for 60 seconds.\\n\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"EQUIP SPELL","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set 106"}}]']
