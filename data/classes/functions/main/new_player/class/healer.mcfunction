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
tag @s add cl.knowsSpell.Heal
tag @s add cl.knowsSpell.Bolt
function classes:healer/stats/main

#Set first slot spell as selected
scoreboard players set @s cl.slot.selected 1

##Give Heal & Bolt
scoreboard players set @s cl.spell.selected 700
scoreboard players set @s cl.wand.slot1 700
scoreboard players set @s cl.wand.slot2 902

##Give wand
loot spawn ~ ~ ~ loot classes:items/wands/starterwand

##Give spellbook
loot spawn ~ ~ ~ loot classes:items/books/spellbook

##Give guide
loot spawn ~ ~ ~ loot classes:items/books/spellguide

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
