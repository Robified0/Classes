#Branch commands to mitigate lag.
execute as @s[scores={cl.spell.selected=200..299}] run function classes:weapons/staff/switch/branching/200
execute as @s[scores={cl.spell.selected=300..399}] run function classes:weapons/staff/switch/branching/300
execute as @s[scores={cl.spell.selected=400..499}] run function classes:weapons/staff/switch/branching/400
execute as @s[scores={cl.spell.selected=500..599}] run function classes:weapons/staff/switch/branching/500
execute as @s[scores={cl.spell.selected=600..699}] run function classes:weapons/staff/switch/branching/600
execute as @s[scores={cl.spell.selected=700..799}] run function classes:weapons/staff/switch/branching/700

#Check for empty slot
execute unless entity @s[scores={cl.spell.selected=1..}] if score @s cl.track.lastHotBarSlot = @s cl.track.currentHotBarSlot run title @s times 20 100 20
execute unless entity @s[scores={cl.spell.selected=1..}] if score @s cl.track.lastHotBarSlot = @s cl.track.currentHotBarSlot run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.spell.selected=1..}] if score @s cl.track.lastHotBarSlot = @s cl.track.currentHotBarSlot run title @s title {"text":"You have no spells equipped!","color":"red"}
