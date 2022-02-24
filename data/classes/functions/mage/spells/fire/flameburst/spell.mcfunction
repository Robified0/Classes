#Execute player sounds/particles if entity found.
execute if entity @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..6,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned,limit=1] run function classes:mage/spells/fire/flameburst/effects/player

#Sound effect if entity is not found.
execute unless entity @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..6,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned,limit=1] run function classes:mage/spells/fire/flameburst/effects/nomob

#Run mob function to apply effects.
execute as @e[type=!#classes:nontarget,type=!#classes:fireproof,distance=..6,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned] run function classes:mage/spells/fire/flameburst/effects/mob
