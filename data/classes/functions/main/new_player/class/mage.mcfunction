##Execute as player who has just selected Mage. (main/new_player/setmana)

#Get rid of Class selection book
clear @s minecraft:written_book{cl.item.classselect:1b}

#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.Cooldown 0

#Halve armor
attribute @s generic.armor modifier add f836241b-d712-463d-b80f-77705fddad01 half -0.5 multiply

#Give advancements
advancement grant @s only classes:mage/root
advancement grant @s only classes:mage/learnspell/magic/magearmor
advancement grant @s only classes:mage/learnspell/magic/magicmissile
advancement grant @s only classes:mage/learnspell/magic/mend
function classes:mage/stats/main

#Set first slot spell as selected
scoreboard players set @s cl.slot.selected 1

###Give base Mage spells (Magic Missile, Mage Armor, and Mend)
scoreboard players set @s cl.spell.selected 606
scoreboard players set @s cl.wand.slot1 606
scoreboard players set @s cl.wand.slot2 605
scoreboard players set @s cl.wand.slot3 604

##Give wand
loot spawn ~ ~ ~ loot classes:items/wands/starterwand

##Give spellbook
loot spawn ~ ~ ~ loot classes:items/books/spellbook

##Give guide
loot spawn ~ ~ ~ loot classes:items/books/spellguide

#Reenable the gamerule
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback true
