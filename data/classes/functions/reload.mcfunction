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
scoreboard objectives add cl.currSpellSel dummy
scoreboard objectives add cl.emptySlot1 dummy
scoreboard objectives add cl.emptySlot2 dummy
scoreboard objectives add cl.emptySlot3 dummy
scoreboard objectives add cl.emptySlot4 dummy
scoreboard objectives add cl.emptySlot5 dummy
scoreboard objectives add cl.Cooldown dummy
scoreboard objectives add cl.HitBySpell dummy
scoreboard objectives add cl.Mage.Armor dummy
scoreboard objectives add cl.s.Teleport.t dummy
scoreboard objectives add cl.i.ManaPotion dummy
scoreboard objectives add cl.i.usedPotion minecraft.used:minecraft.potion

#Scoreboards for settings
scoreboard objectives add cl.p.setFire dummy
scoreboard objectives add cl.p.wPortal dummy
scoreboard objectives add cl.p.wObsidian dummy
scoreboard objectives add cl.p.wExtFire dummy
execute unless score #cl.pref cl.p.setFire matches 0 run scoreboard players set #cl.pref cl.p.setFire 0
execute unless score #cl.pref cl.p.wPortal matches 0 run scoreboard players set #cl.pref cl.p.wPortal 1
execute unless score #cl.pref cl.p.wObsidian matches 0 run scoreboard players set #cl.pref cl.p.wObsidian 1
execute unless score #cl.pref cl.p.wExtFire matches 0 run scoreboard players set #cl.pref cl.p.wExtFire 1

#Scoreboards for time based spells
scoreboard objectives add cl.summonCount dummy
scoreboard objectives add cl.e.ColdShield dummy
scoreboard objectives add cl.e.DeepFreeze dummy
scoreboard objectives add cl.e.SlowFall dummy
scoreboard objectives add cl.e.TailWind dummy
scoreboard objectives add cl.e.BunnyHop dummy
scoreboard objectives add cl.e.StoneFlesh dummy
scoreboard objectives add cl.e.IronFlesh dummy
scoreboard objectives add cl.e.DiaFlesh dummy
scoreboard objectives add cl.e.Light dummy
scoreboard objectives add cl.e.Inspire dummy
scoreboard objectives add cl.e.FireResist dummy
scoreboard objectives add cl.e.SpeedBoost dummy
scoreboard objectives add cl.e.CureEffects dummy
scoreboard objectives add cl.e.Vitality dummy
scoreboard objectives add cl.e.Bless dummy

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives add cl.slowcast dummy
scoreboard players add dst cl.slowcast 0
scoreboard players add dst_per cl.slowcast 0
scoreboard objectives add cl.slo_id dummy
scoreboard objectives add cl.slo_dst dummy
scoreboard objectives add cl.slo_dst_per dummy

#Mage Spells
scoreboard objectives add cl.s.Torch dummy
scoreboard objectives add cl.s.FlameBurst dummy
scoreboard objectives add cl.s.Fireball dummy
scoreboard objectives add cl.s.BedofCoals dummy
scoreboard objectives add cl.s.WaterStrike dummy
scoreboard objectives add cl.s.IceShard dummy
scoreboard objectives add cl.s.ColdShield dummy
scoreboard objectives add cl.s.DeepFreeze dummy
scoreboard objectives add cl.s.SnowGolem dummy
scoreboard objectives add cl.s.WaterBrth dummy
scoreboard objectives add cl.s.DolpGrace dummy
scoreboard objectives add cl.s.Levitate dummy
scoreboard objectives add cl.s.SlowFall dummy
scoreboard objectives add cl.s.TailWind dummy
scoreboard objectives add cl.s.BunnyHop dummy
scoreboard objectives add cl.s.Poison dummy
scoreboard objectives add cl.s.StoneFlesh dummy
scoreboard objectives add cl.s.IronFlesh dummy
scoreboard objectives add cl.s.DiaFlesh dummy
scoreboard objectives add cl.s.IronGolem dummy
scoreboard objectives add cl.s.Light dummy
scoreboard objectives add cl.s.Teleport dummy
scoreboard objectives add cl.s.Shield dummy

#Shield Spell Objectives
scoreboard objectives add cl.e.Shield dummy
scoreboard objectives add cl.e.Shield.m dummy

#Healer Spells
scoreboard objectives add cl.s.Heal dummy
scoreboard objectives add cl.s.Guard dummy
scoreboard objectives add cl.s.Inspire dummy
scoreboard objectives add cl.s.FireResist dummy
scoreboard objectives add cl.s.SpeedBoost dummy
scoreboard objectives add cl.s.CureEffects dummy
scoreboard objectives add cl.s.Satiate dummy
scoreboard objectives add cl.s.HealCircle dummy
scoreboard objectives add cl.s.Vitality dummy
scoreboard objectives add cl.s.Bless dummy
scoreboard objectives add cl.s.HolyStrike dummy

#Set storage
function classes:main/setspells/main

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

#Set keepInventory (temporary)
gamerule keepInventory true

#Tellraw - DO NOT REMOVE WITHOUT EXPRESS PERMISSION
tellraw @a ["",{"text":"[Classes]","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" by","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Robified","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" \u27a1","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Successfully loaded!","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}}]
