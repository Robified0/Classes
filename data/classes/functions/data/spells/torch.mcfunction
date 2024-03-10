#Set min and max damage
data modify storage runes:spells/torch {} merge value {"element":"fire","type":"projectile","sound":{"track":"minecraft:whatever","pitch":1,"volume":1},"cooldown":5,"projectile":{"steps": 4,"blocks": 48},"damage":{"type":"minecraft:lava","min":4,"max":8}}
