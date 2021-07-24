##################Set up scoreboards######################

#Set up for equipping spells
scoreboard objectives remove cl.equipSpell

#Set up other scoreboards
scoreboard objectives remove cl.Class
scoreboard objectives remove cl.loadSpell
scoreboard objectives remove cl.Sneaking
scoreboard objectives remove cl.rightClick
scoreboard objectives remove cl.ReadBook
scoreboard objectives remove cl.Mana
scoreboard objectives remove cl.ManaRegenSec
scoreboard objectives remove cl.currSpellSel
scoreboard objectives remove cl.emptySlot1
scoreboard objectives remove cl.emptySlot2
scoreboard objectives remove cl.emptySlot3
scoreboard objectives remove cl.emptySlot4
scoreboard objectives remove cl.emptySlot5
scoreboard objectives remove cl.Cooldown
scoreboard objectives remove cl.Mage.Armor
scoreboard objectives remove cl.s.Teleport.t

#Scoreboards for settings
scoreboard objectives remove cl.p.setFire
scoreboard objectives remove cl.p.wPortal
scoreboard objectives remove cl.p.wObsidian
scoreboard objectives remove cl.p.wExtFire

#Scoreboards for time based spells
scoreboard objectives remove cl.summonCount
scoreboard objectives remove cl.e.ColdShield
scoreboard objectives remove cl.e.DeepFreeze
scoreboard objectives remove cl.e.SlowFall
scoreboard objectives remove cl.e.TailWind
scoreboard objectives remove cl.e.BunnyHop
scoreboard objectives remove cl.e.StoneFlesh
scoreboard objectives remove cl.e.IronFlesh
scoreboard objectives remove cl.e.DiaFlesh
scoreboard objectives remove cl.e.Light

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives remove cl.slowcast
scoreboard players remove dst cl.slowcast 0
scoreboard players remove dst_per cl.slowcast 0
scoreboard objectives remove cl.slo_id
scoreboard objectives remove cl.slo_dst
scoreboard objectives remove cl.slo_dst_per

#Mage Spells
scoreboard objectives remove cl.s.Torch
scoreboard objectives remove cl.s.FlameBurst
scoreboard objectives remove cl.s.Fireball
scoreboard objectives remove cl.s.BedofCoals
scoreboard objectives remove cl.s.WaterStrike
scoreboard objectives remove cl.s.IceShard
scoreboard objectives remove cl.s.ColdShield
scoreboard objectives remove cl.s.DeepFreeze
scoreboard objectives remove cl.s.SnowGolem
scoreboard objectives remove cl.s.WaterBrth
scoreboard objectives remove cl.s.DolpGrace
scoreboard objectives remove cl.s.Levitate
scoreboard objectives remove cl.s.SlowFall
scoreboard objectives remove cl.s.TailWind
scoreboard objectives remove cl.s.BunnyHop
scoreboard objectives remove cl.s.Poison
scoreboard objectives remove cl.s.StoneFlesh
scoreboard objectives remove cl.s.IronFlesh
scoreboard objectives remove cl.s.DiaFlesh
scoreboard objectives remove cl.s.IronGolem
scoreboard objectives remove cl.s.Light
scoreboard objectives remove cl.s.Teleport
scoreboard objectives remove cl.s.WindWard

#Healer Spells
scoreboard objectives remove cl.s.FirstAid
scoreboard objectives remove cl.s.Heal
scoreboard objectives remove cl.s.Inspire
scoreboard objectives remove cl.s.FireResist
scoreboard objectives remove cl.s.SpeedBoost
scoreboard objectives remove cl.s.CureEffects
scoreboard objectives remove cl.s.Satiate
scoreboard objectives remove cl.s.HealRing
scoreboard objectives remove cl.s.GiftHealth
scoreboard objectives remove cl.s.CleanseArea
scoreboard objectives remove cl.s.HolyStrike
scoreboard objectives remove cl.s.HealerBoon
scoreboard objectives remove cl.s.StopUndead

#Remove storage
function classes:uninstall/removespells
function classes:uninstall/removetags

#Set keepInventory (temporary)
gamerule keepInventory false

#Tellraw - DO NOT REMOVE WITHOUT EXPRESS PERMISSION
tellraw @a ["",{"text":"[Classes]","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" by","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Robified","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" \u27a1","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Successfully removed!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}}]

#Disable datapack
datapack disable "file/Classes"
