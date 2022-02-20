#Set up Mana scoreboards
scoreboard players set @s cl.ManaRegenSec 1
scoreboard players set @s cl.Mana 20

advancement grant @s[scores={cl.Class=3}] only classes:mage/root
advancement grant @s[scores={cl.Class=3}] only classes:mage/learnspell/magic/magearmor
advancement grant @s[scores={cl.Class=3}] only classes:mage/learnspell/fire/torch

###Give base Mage spells

##Give Torch
#If setFire is on
execute if score #cl.pref cl.p.setFire matches 1 run give @s[scores={cl.Class=3}] warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}]','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights blocks on fire. Also lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:60200,Spell:1b,Fire:1b,Torch:1b}

#If setFire is off
execute if score #cl.pref cl.p.setFire matches 0 run give @s[scores={cl.Class=3}] warped_fungus_on_a_stick{display:{Name:'[{"text":"Torch","color":"dark_red"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 1","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Fire","color":"red"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Lights hit mobs on fire, and damages them.","color":"red"}','{"text":" "}','[{"text":""},{"text":"Other Effects:"}]','{"text":"Lights Nether portals, candles, and campfires.","color":"red"}']},CustomModelData:60200,Spell:1b,Fire:1b,Torch:1b}

##Give Mage Armor
give @s[scores={cl.Class=3}] warped_fungus_on_a_stick{display:{Name:'[{"text":"Mage Armor","color":"light_purple"},{"text":" - ","color":"white","bold":false},{"text":"\\uE003 x 4","color":"aqua","bold":false,"italic":false}]',Lore:['{"text":"------------------","color":"dark_aqua"}','[{"text":"Element: ","color":"dark_aqua"},{"text":"Magic","color":"light_purple"}]','{"text":"------------------","color":"dark_aqua"}','{"text":" "}','{"text":"Effect:"}','{"text":"Grants the caster 4 Armor for 20 minutes.","color":"light_purple"}']},CustomModelData:60605,Spell:1b,Magic:1b,MageArmor:1b}
