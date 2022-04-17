##Execute as player who has just selected Mage. (main/new_player/setmana)

#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.Cooldown 0

#Give advancements
advancement grant @s only classes:mage/root
advancement grant @s only classes:mage/learnspell/magic/magearmor
advancement grant @s only classes:mage/learnspell/magic/magicmissile
function classes:mage/stats/main

###Give base Mage spells

##Give Magic Missle
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Magic Missile","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Deals non-elemental damage to mobs it hits.","color":"light_purple"}']},CustomModelData:60606,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.MagicMissile:1b}

##Give Mage Armor
give @s warped_fungus_on_a_stick{display:{Name:'[{"text":"Mage Armor","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 4 Armor for 20 minutes.","color":"light_purple"}']},CustomModelData:60605,cl.s.Spell:1b,cl.s.Magic:1b,cl.s.MageArmor:1b}

##Give wand
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Starter Wand","color":"light_purple"}'},Unbreakable:1b,CustomModelData:60000,cl.s.Wand:1b}
