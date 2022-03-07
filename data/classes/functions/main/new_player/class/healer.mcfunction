##Execute as player who has just selected Mage. (main/new_player/setmana)

#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.Cooldown 0

#Give advancements
advancement grant @s only classes:healer/root
advancement grant @s only classes:healer/learnspell/healing/heal
function classes:healer/stats/main
