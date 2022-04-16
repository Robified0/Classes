##Execute as player who has just selected Mage. (main/new_player/setmana)

#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.Cooldown 0

#Give advancements
advancement grant @s only classes:healer/root
advancement grant @s only classes:healer/learnspell/healing/heal
advancement grant @s only classes:healer/learnspell/smiting/bolt
function classes:healer/stats/main

##Give Heal
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Heal","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Heals friendly hit targets, and damages undead.","color":"green"}','{"text":" "}','[{"text":""},{"text":"Self Cast:"}]','{"text":"Cast while looking at the ground to heal yourself.","color":"green"}']},CustomModelData:60700,cl.s.Spell:1b,cl.s.Healing:1b,cl.s.Heal:1b}

##Give Bolt
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Bolt","color":"green"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Deals minor holy damage to enemies.","color":"green"}']},CustomModelData:60902,cl.s.Spell:1b,cl.s.Smiting:1b,cl.s.Bolt:1b}

##Give wand
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Starter Wand","color":"light_purple"}'},Unbreakable:1b,CustomModelData:60000,cl.s.Wand:1b}
