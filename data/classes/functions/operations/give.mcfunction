###This is a temporary file. Will give items to player. Only for alpha/beta versions###
give @s written_book{HideFlags:127,SpellBook:1b,display:{Lore:['{"text":"A spell book where you can add and equip spells.","color":"dark_purple","bold":true,"italic":true}']},HideFlags:1,CustomModelData:60000,title:"Spell Book",author:"???",generation:3,resolved:0b,pages:['["",{"selector":"@s","bold":true,"italic":true,"color":"dark_purple"},{"text":"\'s Spell Book","bold":true,"italic":true,"color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"Learn New Spells:","bold":true,"color":"dark_green"},{"text":"\\nNot implemented! You have them all!\\n\\n\\n","color":"reset"},{"text":"Equip Different Spells:","bold":true,"color":"dark_green"},{"text":"\\n","color":"reset"},{"text":">> Clear Wand","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cl.equipSpell set -1"}}]']} 1
item modify entity @s weapon.mainhand classes:mage/spells/fire/torch
item modify entity @s weapon.mainhand classes:mage/spells/fire/bedofcoals
item modify entity @s weapon.mainhand classes:mage/spells/fire/flameburst
item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike
item modify entity @s weapon.mainhand classes:mage/spells/water/iceshard
item modify entity @s weapon.mainhand classes:mage/spells/water/coldshield
item modify entity @s weapon.mainhand classes:mage/spells/water/deepfreeze
item modify entity @s weapon.mainhand classes:mage/spells/water/snowgolem
item modify entity @s weapon.mainhand classes:mage/spells/water/waterbrth
item modify entity @s weapon.mainhand classes:mage/spells/water/dolpgrace
item modify entity @s weapon.mainhand classes:mage/spells/air/levitate
item modify entity @s weapon.mainhand classes:mage/spells/air/slowfall
item modify entity @s weapon.mainhand classes:mage/spells/air/tailwind
item modify entity @s weapon.mainhand classes:mage/spells/air/bunnyhop
item modify entity @s weapon.mainhand classes:mage/spells/air/windward
item modify entity @s weapon.mainhand classes:mage/spells/earth/poison
item modify entity @s weapon.mainhand classes:mage/spells/earth/stoneflesh
item modify entity @s weapon.mainhand classes:mage/spells/earth/ironflesh
item modify entity @s weapon.mainhand classes:mage/spells/earth/diaflesh
item modify entity @s weapon.mainhand classes:mage/spells/earth/irongolem
item modify entity @s weapon.mainhand classes:mage/spells/magic/light
item modify entity @s weapon.mainhand classes:mage/spells/magic/teleport

give @s warped_fungus_on_a_stick{CustomModelData:10000,Wand:1b,Type:Starter} 1
