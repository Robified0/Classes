#Execute player sounds/particles if entity found.
execute if entity @e[type=#classes:undead,distance=..10,sort=random,tag=!cl.t.summoned,tag=!cl.t.Owned,limit=1,nbt=!{NoAI:1b}] run function classes:healer/spells/smiting/stopundead/effects/player

#Sound effect if entity is not found.
execute unless entity @e[type=#classes:undead,distance=..10,sort=random,tag=!cl.t.summoned,limit=1,nbt=!{NoAI:1b}] run function classes:healer/spells/smiting/stopundead/effects/nomob

#Run mob function to apply effects.
execute as @e[type=#classes:undead,distance=..10,tag=!cl.t.summoned,nbt=!{NoAI:1b}] at @s run function classes:healer/spells/smiting/stopundead/effects/undead
