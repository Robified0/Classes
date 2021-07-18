##################Set up scoreboards######################

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
scoreboard objectives add cl.currSpellSel dummy
scoreboard objectives add cl.emptySlot1 dummy
scoreboard objectives add cl.emptySlot2 dummy
scoreboard objectives add cl.emptySlot3 dummy
scoreboard objectives add cl.emptySlot4 dummy
scoreboard objectives add cl.emptySlot5 dummy
scoreboard objectives add cl.Cooldown dummy
scoreboard objectives add cl.Mage.Armor dummy

#Scoreboards for settings
scoreboard objectives add cl.p.setFire dummy
execute unless score #cl.pref cl.p.setFire matches 0 run scoreboard players set #cl.pref cl.p.setFire 1

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
scoreboard objectives add cl.s.WindWard dummy

#Healer Spells
scoreboard objectives add cl.s.FirstAid dummy
scoreboard objectives add cl.s.Heal dummy
scoreboard objectives add cl.s.Inspire dummy
scoreboard objectives add cl.s.FireResist dummy
scoreboard objectives add cl.s.SpeedBoost dummy
scoreboard objectives add cl.s.CureEffects dummy
scoreboard objectives add cl.s.Satiate dummy
scoreboard objectives add cl.s.HealRing dummy
scoreboard objectives add cl.s.GiftHealth dummy
scoreboard objectives add cl.s.CleanseArea dummy
scoreboard objectives add cl.s.HolyStrike dummy
scoreboard objectives add cl.s.HealerBoon dummy
scoreboard objectives add cl.s.StopUndead dummy
