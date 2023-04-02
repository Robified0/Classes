#Forceload spawn chunks
forceload remove 0 0
forceload remove -2 0

##################Set up scoreboards######################
scoreboard objectives remove cl.CurrentHealth
scoreboard objectives remove cl.damageRange
scoreboard objectives remove cl.damageRandom
scoreboard objectives remove cl.damageWeakness

scoreboard objectives remove cl.motion_x1
scoreboard objectives remove cl.motion_y1
scoreboard objectives remove cl.motion_z1

scoreboard objectives remove cl.motion_x2
scoreboard objectives remove cl.motion_y2
scoreboard objectives remove cl.motion_z2

scoreboard objectives remove cl.power_0
scoreboard objectives remove cl.power_1
scoreboard objectives remove cl.power_2
scoreboard objectives remove cl.newFireball
scoreboard objectives remove cl.slot.selected
scoreboard objectives remove cl.spell.selected
scoreboard objectives remove cl.wand.slot1
scoreboard objectives remove cl.wand.slot2
scoreboard objectives remove cl.wand.slot3
scoreboard objectives remove cl.wand.slot4
scoreboard objectives remove cl.wand.slot5
scoreboard objectives remove cl.detect.book
scoreboard objectives remove cl.spell.equip.start
scoreboard objectives remove cl.book.template

#Set up other scoreboards
scoreboard objectives remove cl.Class
scoreboard objectives remove cl.spellMenu
scoreboard objectives remove cl.EssenceSound
scoreboard objectives remove cl.track.sneak
scoreboard objectives remove cl.rightClick
scoreboard objectives remove cl.Mana
scoreboard objectives remove cl.ManaMax
scoreboard objectives remove cl.ManaRegenSec
scoreboard objectives remove cl.ManaRegenMax
scoreboard objectives remove cl.Cooldown
scoreboard objectives remove cl.Mage.Armor
scoreboard objectives remove cl.Healer.Armor
scoreboard objectives remove cl.s.Teleport.t
scoreboard objectives remove cl.i.ManaPotion
scoreboard objectives remove cl.i.usedPotion
scoreboard objectives remove cl.i.ManaPtnUse
scoreboard objectives remove cl.i.ManaPtnUseOff
scoreboard objectives remove cl.t.PotionEff
scoreboard objectives remove cl.t.usedBow

#Set up stat tracking
scoreboard objectives remove cl.o.statx100
scoreboard players set #cl.statx100 cl.o.statx100 100
scoreboard objectives remove cl.o.genAtkDmg
scoreboard objectives remove cl.o.genAtkSpd
scoreboard objectives remove cl.o.knockBack
scoreboard objectives remove cl.o.maxHealth
scoreboard objectives remove cl.o.health
scoreboard objectives setdisplay belowName
scoreboard objectives remove cl.track.Soul.time
scoreboard objectives remove cl.t.magic_essence
scoreboard objectives remove cl.t.holy_essence

scoreboard objectives remove cl.track.currentHotBarSlot
scoreboard objectives remove cl.track.lastHotBarSlot
scoreboard objectives remove cl.track.SoulExtract.time
scoreboard objectives remove cl.track.CustomModelData
scoreboard objectives remove cl.track.SlotNumber
scoreboard objectives remove cl.track.ArmorBonus

# Remove the shulker boxes
fill -1 -64 0 1 -64 0 minecraft:bedrock

#Scoreboards for custom blocks
scoreboard objectives remove cl.RuneTable.StaffNumber
scoreboard objectives remove cl.RuneTable.LastStaffNumber
scoreboard objectives remove cl.RuneTable.Slots
scoreboard objectives remove cl.MagicTable.Ingredients
scoreboard objectives remove cl.track.Rune.Count

#Scoreboards for settings
scoreboard objectives remove cl.pref.setFire
scoreboard objectives remove cl.pref.wPortal
scoreboard objectives remove cl.pref.wObsidian
scoreboard objectives remove cl.pref.wExtFire
scoreboard objectives remove cl.pref.creeperIgnite

#Scoreboards for time based spells
scoreboard objectives remove cl.summonCount
scoreboard objectives remove cl.e.FireShield
scoreboard objectives remove cl.e.BedofCoals
scoreboard objectives remove cl.e.DeepFreeze
scoreboard objectives remove cl.e.IceWalker
scoreboard objectives remove cl.e.Blizzard.m
scoreboard objectives remove cl.e.Blizzard
scoreboard objectives remove cl.e.SlowFall
scoreboard objectives remove cl.e.TailWind
scoreboard objectives remove cl.e.BunnyHop
scoreboard objectives remove cl.e.MageArmor
scoreboard objectives remove cl.e.GoldFlesh
scoreboard objectives remove cl.e.IronFlesh
scoreboard objectives remove cl.e.DiaFlesh
scoreboard objectives remove cl.e.Light
scoreboard objectives remove cl.e.Inspire
scoreboard objectives remove cl.e.Inspire.m
scoreboard objectives remove cl.e.Mending
scoreboard objectives remove cl.e.Mending.m
scoreboard objectives remove cl.e.Mending.t
scoreboard objectives remove cl.e.FireResist
scoreboard objectives remove cl.e.SpeedBoost
scoreboard objectives remove cl.e.CureEffects
scoreboard objectives remove cl.e.Vitality
scoreboard objectives remove cl.e.Bless
scoreboard objectives remove cl.e.StopUndead
scoreboard objectives remove cl.spell.earthWall
scoreboard objectives remove cl.spell.earthWall.move

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives remove cl.slowcast
scoreboard objectives remove cl.slo_id
scoreboard objectives remove cl.slo_dst
scoreboard objectives remove cl.slo_dst_per

#Shield Spell Objectives
scoreboard objectives remove cl.e.Shield
scoreboard objectives remove cl.e.Shield.m

##Tracking Scoreboards
#Tick Tracking
scoreboard objectives remove cl.t.Tick

#Custom mob spawning scoreboard.
scoreboard objectives remove cl.customMob

#Uninstall announcement
execute unless score #cl.pref cl.pref.setFire matches 0..1 run tellraw @a ["",{"text":"\u26a0 Runes datapack was uninstalled. For support, reach out on our ","color":"red"},{"text":"Discord","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://discord.gg/dSbgxYRBTq"}},{"text":" server","color":"red"}]
