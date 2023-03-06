#Forceload spawn chunks
forceload add 0 0
forceload add -2 0

##################Set up scoreboards######################
scoreboard objectives add cl.CurrentHealth dummy
scoreboard objectives add cl.damageRange dummy
scoreboard objectives add cl.damageRandom dummy
scoreboard objectives add cl.damageWeakness dummy

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
scoreboard objectives add cl.slot.selected dummy
scoreboard objectives add cl.spell.selected dummy
scoreboard objectives add cl.wand.slot1 dummy
scoreboard objectives add cl.wand.slot2 dummy
scoreboard objectives add cl.wand.slot3 dummy
scoreboard objectives add cl.wand.slot4 dummy
scoreboard objectives add cl.wand.slot5 dummy
scoreboard objectives add cl.detect.book dummy
scoreboard objectives add cl.spell.equip.start dummy
scoreboard objectives add cl.book.template dummy

#Set up other scoreboards
scoreboard objectives add cl.Class trigger
scoreboard objectives add cl.spellMenu dummy
scoreboard objectives add cl.EssenceSound dummy
scoreboard objectives add cl.track.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add cl.rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add cl.Mana dummy
scoreboard objectives add cl.ManaMax dummy
scoreboard objectives add cl.ManaRegenSec dummy
scoreboard objectives add cl.ManaRegenMax dummy
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
scoreboard objectives add cl.track.Soul.time dummy
scoreboard objectives add cl.t.magic_essence dummy
scoreboard objectives add cl.t.holy_essence dummy

scoreboard objectives add cl.track.currentHotBarSlot dummy
scoreboard objectives add cl.track.lastHotBarSlot dummy
scoreboard objectives add cl.track.SoulExtract.time dummy
scoreboard objectives add cl.track.CustomModelData dummy
scoreboard objectives add cl.track.SlotNumber dummy

# Sets up the shulker boxes (and bedrock case)
fill -2 -63 -1 2 -64 -1 minecraft:bedrock
fill 2 -63 0 2 -64 1 minecraft:bedrock
fill 1 -63 1 -2 -64 1 minecraft:bedrock
fill -2 -63 0 -2 -64 0 minecraft:bedrock
fill -1 -64 0 1 -64 0 minecraft:gray_shulker_box[facing=up]

#Scoreboards for custom blocks
scoreboard objectives add cl.RuneTable.StaffNumber dummy
scoreboard objectives add cl.RuneTable.LastStaffNumber dummy
scoreboard objectives add cl.RuneTable.Slots dummy
scoreboard objectives add cl.MagicTable.Ingredients dummy
scoreboard objectives add cl.track.Rune.Count dummy
execute unless score $cl.tracker cl.RuneTable.StaffNumber matches 1.. run scoreboard players set $cl.tracker cl.RuneTable.StaffNumber 1

#Rune Number Tracker
scoreboard objectives add cl.track.RuneNumber dummy
execute unless score $cl.tracker cl.track.RuneNumber matches 1.. run scoreboard players set $cl.tracker cl.track.RuneNumber 1

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
scoreboard objectives add cl.e.BedofCoals dummy
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
scoreboard objectives add cl.spell.earthWall dummy
scoreboard objectives add cl.spell.earthWall.move dummy

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

##Tracking Scoreboards
#Tick Tracking
scoreboard objectives add cl.t.Tick dummy

#Get gamerules
scoreboard objectives add cl.track.commandFeedback dummy
execute store result score #cl.pref cl.track.commandFeedback run gamerule sendCommandFeedback

#Custom mob spawning scoreboard.
scoreboard objectives add cl.customMob dummy

#Install announcement
execute unless score #cl.pref cl.pref.setFire matches 0..1 run tellraw @a ["",{"text":"\u26a0 ClassesMC didn't install properly. For support, reach out on our ","color":"red"},{"text":"Discord","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://discord.gg/dSbgxYRBTq"}},{"text":" server","color":"red"}]
execute if score #cl.pref cl.pref.setFire matches 0..1 run tellraw @a ["",{"text":"[Classes]","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" by","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Robified","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" \u27a1","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Successfully loaded!","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}}]
