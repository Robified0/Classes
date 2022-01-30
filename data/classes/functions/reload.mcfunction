##################Set up scoreboards######################

scoreboard objectives add cl.motion_x1 dummy
scoreboard objectives add cl.motion_y1 dummy
scoreboard objectives add cl.motion_z1 dummy

scoreboard objectives add cl.motion_x2 dummy
scoreboard objectives add cl.motion_y2 dummy
scoreboard objectives add cl.motion_z2 dummy

scoreboard objectives add cl.power_0 dummy
scoreboard objectives add cl.power_1 dummy
scoreboard objectives add cl.power_2 dummy
scoreboard objectives add cl.newFireball dummy
#Set up trigger for equipping spells
scoreboard objectives add cl.equipSpell trigger

#Set up other scoreboards
scoreboard objectives add cl.Class trigger
scoreboard objectives add cl.loadSpell dummy
scoreboard objectives add cl.Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add cl.rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add cl.ReadBook minecraft.used:minecraft.written_book
scoreboard objectives add cl.Mana dummy
scoreboard objectives add cl.ManaRegenSec dummy
scoreboard objectives add cl.Swimming air
scoreboard objectives add cl.health health
scoreboard objectives add cl.Cooldown dummy
scoreboard objectives add cl.HitBySpell dummy
scoreboard objectives add cl.Mage.Armor dummy
scoreboard objectives add cl.Healer.Armor dummy
scoreboard objectives add cl.s.Teleport.t dummy
scoreboard objectives add cl.i.ManaPotion dummy
scoreboard objectives add cl.i.usedPotion minecraft.used:minecraft.potion

#Set up stat tracking
scoreboard objectives add cl.o.statx100 dummy
scoreboard players set #cl.statx100 cl.o.statx100 100
scoreboard objectives add cl.o.genAtkDmg dummy
scoreboard objectives add cl.o.genAtkSpd dummy

#Scoreboards for settings
scoreboard objectives add cl.p.setFire dummy
scoreboard objectives add cl.p.wPortal dummy
scoreboard objectives add cl.p.wObsidian dummy
scoreboard objectives add cl.p.wExtFire dummy
scoreboard objectives add cl.p.clericHeal dummy
execute unless score #cl.pref cl.p.setFire matches 0 run scoreboard players set #cl.pref cl.p.setFire 0
execute unless score #cl.pref cl.p.wPortal matches 0 run scoreboard players set #cl.pref cl.p.wPortal 1
execute unless score #cl.pref cl.p.wObsidian matches 0 run scoreboard players set #cl.pref cl.p.wObsidian 1
execute unless score #cl.pref cl.p.wExtFire matches 0 run scoreboard players set #cl.pref cl.p.wExtFire 1

#Scoreboards for time based spells
scoreboard objectives add cl.summonCount dummy
scoreboard objectives add cl.e.FireShield dummy
scoreboard objectives add cl.e.DeepFreeze dummy
scoreboard objectives add cl.e.IceWalker dummy
scoreboard objectives add cl.e.Blizzard.m dummy
scoreboard objectives add cl.e.Blizzard dummy
scoreboard objectives add cl.e.SlowFall dummy
scoreboard objectives add cl.e.TailWind dummy
scoreboard objectives add cl.e.BunnyHop dummy
scoreboard objectives add cl.e.GoldFlesh dummy
scoreboard objectives add cl.e.IronFlesh dummy
scoreboard objectives add cl.e.DiaFlesh dummy
scoreboard objectives add cl.e.Light dummy
scoreboard objectives add cl.e.Inspire dummy
scoreboard objectives add cl.e.Inspire.m dummy
scoreboard objectives add cl.e.Mending dummy
scoreboard objectives add cl.e.Mending.m dummy
scoreboard objectives add cl.e.Mending.t dummy
scoreboard objectives add cl.e.FireResist dummy
scoreboard objectives add cl.e.SpeedBoost dummy
scoreboard objectives add cl.e.CureEffects dummy
scoreboard objectives add cl.e.Vitality dummy
scoreboard objectives add cl.e.Bless dummy
scoreboard objectives add cl.e.StopUndead dummy

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives add cl.slowcast dummy
scoreboard players add dst cl.slowcast 0
scoreboard players add dst_per cl.slowcast 0
scoreboard objectives add cl.slo_id dummy
scoreboard objectives add cl.slo_dst dummy
scoreboard objectives add cl.slo_dst_per dummy

#Shield Spell Objectives
scoreboard objectives add cl.e.Shield dummy
scoreboard objectives add cl.e.Shield.m dummy

#Set up Oxygen Boss bar
bossbar add air0 "Oxygen"
bossbar add air1 "Oxygen"
bossbar add air2 "Oxygen"
bossbar add air3 "Oxygen"
bossbar add air4 "Oxygen"
bossbar add air5 "Oxygen"
bossbar add air6 "Oxygen"
bossbar add air7 "Oxygen"
bossbar add air7 "Oxygen"
bossbar add air8 "Oxygen"
bossbar add air9 "Oxygen"
bossbar add air10 "Oxygen"
bossbar set minecraft:air0 max 10
bossbar set minecraft:air1 max 10
bossbar set minecraft:air2 max 10
bossbar set minecraft:air3 max 10
bossbar set minecraft:air4 max 10
bossbar set minecraft:air5 max 10
bossbar set minecraft:air6 max 10
bossbar set minecraft:air7 max 10
bossbar set minecraft:air8 max 10
bossbar set minecraft:air9 max 10
bossbar set minecraft:air10 max 10
bossbar set minecraft:air0 value 0
bossbar set minecraft:air1 value 1
bossbar set minecraft:air2 value 2
bossbar set minecraft:air3 value 3
bossbar set minecraft:air4 value 4
bossbar set minecraft:air5 value 5
bossbar set minecraft:air6 value 6
bossbar set minecraft:air7 value 7
bossbar set minecraft:air8 value 8
bossbar set minecraft:air9 value 9
bossbar set minecraft:air10 value 10
bossbar set air0 color blue
bossbar set air1 color blue
bossbar set air2 color blue
bossbar set air3 color blue
bossbar set air4 color blue
bossbar set air5 color blue
bossbar set air6 color blue
bossbar set air7 color blue
bossbar set air8 color blue
bossbar set air9 color blue
bossbar set air10 color blue
bossbar set minecraft:air0 style notched_10
bossbar set minecraft:air1 style notched_10
bossbar set minecraft:air2 style notched_10
bossbar set minecraft:air3 style notched_10
bossbar set minecraft:air4 style notched_10
bossbar set minecraft:air5 style notched_10
bossbar set minecraft:air6 style notched_10
bossbar set minecraft:air7 style notched_10
bossbar set minecraft:air8 style notched_10
bossbar set minecraft:air9 style notched_10
bossbar set minecraft:air10 style notched_10

#Custom mob spawning scoreboard.
scoreboard objectives add cl.customMob dummy

#Initiate scores for custom mobs
scoreboard players add #cl.ZombieKing cl.customMob 0

#Tellraw - DO NOT REMOVE WITHOUT EXPRESS PERMISSION
tellraw @a ["",{"text":"[Classes]","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" by","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Robified","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" \u27a1","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Successfully loaded!","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}}]
