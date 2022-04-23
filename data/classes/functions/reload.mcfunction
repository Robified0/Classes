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


#Set up other scoreboards
scoreboard objectives add cl.Class trigger
scoreboard objectives add cl.EssenceSound dummy
scoreboard objectives add cl.Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add cl.rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add cl.Mana dummy
scoreboard objectives add cl.ManaRegenSec dummy
scoreboard objectives add cl.Swimming air
scoreboard objectives add cl.Cooldown dummy
scoreboard objectives add cl.Mage.Armor dummy
scoreboard objectives add cl.Healer.Armor dummy
scoreboard objectives add cl.s.Teleport.t dummy
scoreboard objectives add cl.i.ManaPotion dummy
scoreboard objectives add cl.i.usedPotion minecraft.used:minecraft.potion
scoreboard objectives add cl.i.ManaPtnUse dummy
scoreboard objectives add cl.i.ManaPtnUseOff dummy
scoreboard objectives add cl.t.PotionEff dummy
scoreboard objectives add cl.t.RangerID dummy
execute unless score #cl.t.RangerID cl.t.RangerID matches 1.. run scoreboard players set #cl.t.RangerID cl.t.RangerID 1
scoreboard objectives add cl.t.dropItem minecraft.custom:minecraft.drop
scoreboard objectives add cl.t.usedBow minecraft.used:minecraft.bow

#Set up stat tracking
scoreboard objectives add cl.o.statx100 dummy
scoreboard players set #cl.statx100 cl.o.statx100 100
scoreboard objectives add cl.o.genAtkDmg dummy
scoreboard objectives add cl.o.genAtkSpd dummy
scoreboard objectives add cl.o.knockBack dummy
scoreboard objectives add cl.o.maxHealth dummy
scoreboard objectives add cl.o.health health {"text":"\u2764","color":"red"}
scoreboard objectives setdisplay belowName cl.o.health
scoreboard objectives add cl.item.spiritessence dummy
scoreboard objectives add cl.t.magic_essence dummy
scoreboard objectives add cl.t.holy_essence dummy

#Scoreboards for settings
scoreboard objectives add cl.pref.setFire dummy
scoreboard objectives add cl.pref.wPortal dummy
scoreboard objectives add cl.pref.wObsidian dummy
scoreboard objectives add cl.pref.wExtFire dummy
scoreboard objectives add cl.pref.creeperIgnite dummy
execute unless score #cl.pref cl.pref.setFire matches 0..1 run scoreboard players set #cl.pref cl.pref.setFire 0
execute unless score #cl.pref cl.pref.creeperIgnite matches 0..1 run scoreboard players set #cl.pref cl.pref.creeperIgnite 0
execute unless score #cl.pref cl.pref.wPortal matches 0..1 run scoreboard players set #cl.pref cl.pref.wPortal 1
execute unless score #cl.pref cl.pref.wObsidian matches 0..1 run scoreboard players set #cl.pref cl.pref.wObsidian 1
execute unless score #cl.pref cl.pref.wExtFire matches 0..1 run scoreboard players set #cl.pref cl.pref.wExtFire 1

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
scoreboard objectives add cl.e.MageArmor dummy
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

#Set up Item Research tracking
scoreboard objectives add cl.item.research.air_essence dummy
scoreboard objectives add cl.item.research.blaze_powder dummy
scoreboard objectives add cl.item.research.bone dummy
scoreboard objectives add cl.item.research.carved_pumpkin dummy
scoreboard objectives add cl.item.research.coal_block dummy
scoreboard objectives add cl.item.research.diamond_block dummy
scoreboard objectives add cl.item.research.earth_essence dummy
scoreboard objectives add cl.item.research.end_crystal dummy
scoreboard objectives add cl.item.research.ender_eye dummy
scoreboard objectives add cl.item.research.fire_charge dummy
scoreboard objectives add cl.item.research.fire_essence dummy
scoreboard objectives add cl.item.research.ghast_tear dummy
scoreboard objectives add cl.item.research.glistering_melon_slice dummy
scoreboard objectives add cl.item.research.glow_berries dummy
scoreboard objectives add cl.item.research.glowstone dummy
scoreboard objectives add cl.item.research.gold_block dummy
scoreboard objectives add cl.item.research.golden_apple dummy
scoreboard objectives add cl.item.research.golden_carrot dummy
scoreboard objectives add cl.item.research.holy_essence dummy
scoreboard objectives add cl.item.research.ice dummy
scoreboard objectives add cl.item.research.iron_block dummy
scoreboard objectives add cl.item.research.lapis_block dummy
scoreboard objectives add cl.item.research.magic_essence dummy
scoreboard objectives add cl.item.research.magma_cream dummy
scoreboard objectives add cl.item.research.nautilus_shell dummy
scoreboard objectives add cl.item.research.nether_star dummy
scoreboard objectives add cl.item.research.packed_ice dummy
scoreboard objectives add cl.item.research.phantom_membrane dummy
scoreboard objectives add cl.item.research.quartz dummy
scoreboard objectives add cl.item.research.rabbit_foot dummy
scoreboard objectives add cl.item.research.rotten_flesh dummy
scoreboard objectives add cl.item.research.sea_lantern dummy
scoreboard objectives add cl.item.research.snow_block dummy
scoreboard objectives add cl.item.research.sugar dummy
scoreboard objectives add cl.item.research.water_essence dummy
scoreboard objectives add cl.item.research.lapis_lazuli dummy

#Shield Spell Objectives
scoreboard objectives add cl.e.Shield dummy
scoreboard objectives add cl.e.Shield.m dummy

##Tracking Scoreboards
#Tick Tracking
scoreboard objectives add cl.t.Tick dummy

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
