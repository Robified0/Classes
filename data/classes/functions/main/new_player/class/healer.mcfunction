##Execute as player who has just selected Mage. (main/new_player/setmana)

#Get rid of Class selection book
clear @s minecraft:written_book{cl.item.classselect:1b}

#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.Cooldown 0

#Give advancements
advancement grant @s only classes:healer/root
advancement grant @s only classes:healer/learnspell/healing/heal
advancement grant @s only classes:healer/learnspell/smiting/bolt
function classes:healer/stats/main

#Set first slot spell as selected
scoreboard players set @s cl.slot.selected 1

##Give Heal & Bolt
scoreboard players set @s cl.spell.selected 700
scoreboard players set @s cl.wand.slot1 700
scoreboard players set @s cl.wand.slot2 902

##Give wand
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Starter Wand","color":"light_purple"}'},Unbreakable:1b,CustomModelData:60000,cl.s.Wand:1b}

##Give spellbook
give @s book{display:{Name:'{"text":"Spellbook","color":"light_purple","italic":true}',Lore:['{"text":"Used to allow equipping different spells.","color":"white","italic":true}']},CustomModelData:99,cl.item.spellbook:1b} 1

##Give guide
give @s written_book{pages:['["",{"text":"Spellcasting Guide\\n\\nYou have chosen a magical path. This guide will walk you through how to use your power.\\n\\n- "},{"text":"Equipping spells","color":"dark_green","clickEvent":{"action":"change_page","value":2}},{"text":"\\n- ","color":"reset"},{"text":"Switching spells","color":"dark_red","clickEvent":{"action":"change_page","value":4}},{"text":"\\n- ","color":"reset"},{"text":"Learning spells","color":"blue","clickEvent":{"action":"change_page","value":6}}]','["",{"text":"Equipping Spells:","color":"dark_green"},{"text":"\\n\\nTo equip spells, hold your wand in your right hand, and your spellbook in your left, and ","color":"reset"},{"keybind":"key.use","color":"dark_green"},{"text":". Then open your inventory.\\n\\nDo not move/open things while doing this, or it will reset!\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"continued >>>>","italic":true,"color":"gray","clickEvent":{"action":"change_page","value":3}}]','["",{"text":"To select spells, take them from your inventory and place them in your hotbar in order. You can equip from 1-5 spells.\\n\\nOnce you\'re done, click the wand icon to equip those spells.\\n\\n"},{"text":"[ Back to start ]","italic":true,"color":"gray","clickEvent":{"action":"change_page","value":1}}]','["",{"text":"Switching Spells:","color":"dark_red"},{"text":"\\n\\nTo switch between equipped spells, press ","color":"reset"},{"keybind":"key.sneak","color":"dark_green"},{"text":" and ","color":"reset"},{"keybind":"key.use","color":"dark_green"},{"text":" with your wand in your right hand.\\n\\nYou\'ll see what spell is now selected.\\n \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"continued >>>>>","italic":true,"color":"gray"}]','["",{"text":"Now just right-click to cast it!\\n\\nYou can hold down "},{"keybind":"key.sneak","color":"dark_green"},{"text":" and press ","color":"reset"},{"keybind":"key.use","color":"dark_green"},{"text":" again to quickly go between different spells.\\n\\n","color":"reset"},{"text":"[ Back to start ]","italic":true,"color":"gray","clickEvent":{"action":"change_page","value":1}}]','["",{"text":"Learning Spells:","color":"blue"},{"text":"\\n\\nTo learn new spells, create a Magic Table by tossing a Lapis Lazuli block on top of a crafting table using the ","color":"reset"},{"keybind":"key.drop","color":"dark_green"},{"text":" button.\\n\\nThen","color":"reset"},{"text":" ","color":"dark_green"},{"keybind":"key.use","color":"dark_green"},{"text":" on the Magic Table to open it.\\n     ","color":"reset"},{"text":"  ","italic":true,"color":"gray"},{"text":"continued >>>>>","italic":true,"color":"gray","clickEvent":{"action":"change_page","value":6}}]','["",{"text":"Then place any item along with a Book & Quill inside any of the slots, to research it.\\n\\nIf nothing happens, then that item isn\'t a component you need to study to learn a spell.\\n\\n"},{"text":" \\u0020 \\u0020 \\u0020 continued >>>>>","italic":true,"color":"gray"}]','["",{"text":"When you do learn a spell, you\'ll see an achievement come up indicating what it is. All you need to do is "},{"text":"equip it","color":"blue","clickEvent":{"action":"change_page","value":2}},{"text":" to use it.\\n\\n","color":"reset"},{"text":"[ Back to start ]","italic":true,"color":"gray","clickEvent":{"action":"change_page","value":1}}]'],title:"Spellcasting Guide",author:Unknown,display:{Lore:["A quick guide to how to use spells."]}}

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
