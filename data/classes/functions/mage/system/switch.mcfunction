execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=5}] run function classes:mage/wand/basewand/switch/slot1
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=1}] run function classes:mage/wand/basewand/switch/slot2
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=2}] run function classes:mage/wand/basewand/switch/slot3
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=3}] run function classes:mage/wand/basewand/switch/slot4
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=4}] run function classes:mage/wand/basewand/switch/slot5
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=1..5}] run scoreboard players add @s cl.currSpellSel 1
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=6}] run scoreboard players set @s cl.currSpellSel 1
execute if entity @s[scores={cl.Sneaking=1..,cl.rightClick=1..,cl.Class=3,cl.currSpellSel=0}] run scoreboard players set @s cl.currSpellSel 1
