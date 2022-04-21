##################Set up scoreboards######################

#Set up other scoreboards
scoreboard objectives remove cl.Class
scoreboard objectives remove cl.loadSpell
scoreboard objectives remove cl.Sneaking
scoreboard objectives remove cl.rightClick
scoreboard objectives remove cl.Mana
scoreboard objectives remove cl.ManaRegenSec
scoreboard objectives remove cl.Cooldown
scoreboard objectives remove cl.Mage.Armor
scoreboard objectives remove cl.Swimming
scoreboard objectives remove cl.Cooldown
scoreboard objectives remove cl.Mage.Armor
scoreboard objectives remove cl.Healer.Armor
scoreboard objectives remove cl.s.Teleport.t
scoreboard objectives remove cl.i.ManaPotion
scoreboard objectives remove cl.i.usedPotion
scoreboard objectives remove cl.t.PotionEff
scoreboard objectives remove cl.t.RangerID

#Remove motion Scoreboards
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

#Scoreboards for settings
scoreboard objectives remove cl.pref.setFire
scoreboard objectives remove cl.pref.wPortal
scoreboard objectives remove cl.pref.wObsidian
scoreboard objectives remove cl.pref.wExtFire

#Scoreboards for time based spells
scoreboard objectives remove cl.summonCount
scoreboard objectives remove cl.e.FireShield
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
scoreboard objectives remove cl.e.Shield
scoreboard objectives remove cl.e.Shield.m
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

#Remove stat tracking
scoreboard objectives remove cl.o.statx100
scoreboard objectives remove cl.o.genAtkDmg
scoreboard objectives remove cl.o.genAtkSpd
scoreboard objectives add cl.o.maxHealth dummy
scoreboard objectives add cl.o.health health

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives remove cl.slowcast
scoreboard players remove dst cl.slowcast 0
scoreboard players remove dst_per cl.slowcast 0
scoreboard objectives remove cl.slo_id
scoreboard objectives remove cl.slo_dst
scoreboard objectives remove cl.slo_dst_per

#Remove Custom mob spawning scoreboard.
scoreboard objectives remove cl.customMob

#Remove storage and tags
function classes:uninstall/removetags

#Tellraw - DO NOT REMOVE WITHOUT EXPRESS PERMISSION
tellraw @a ["",{"text":"[Classes]","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" by","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Robified","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/KingArvis/Classes"},"hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" \u27a1","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}},{"text":" Successfully removed!","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"An RPG datapack! Click for more!","color":"dark_aqua"}}}]

#Disable datapack
datapack disable "file/Classes"
