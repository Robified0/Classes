##################Set up scoreboards######################

#Set up trigger for equipping spells
scoreboard objectives add equipSpell trigger

#Set up other scoreboards
scoreboard objectives add class dummy
scoreboard objectives add loadSpell dummy
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add Mana dummy
scoreboard objectives add ManaRegenSec dummy

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives add slowcast dummy
scoreboard players add dst slowcast 0
scoreboard players add dst_per slowcast 0
scoreboard objectives add slo_id dummy
scoreboard objectives add slo_dst dummy
scoreboard objectives add slo_dst_per dummy

#Mage Spells
scoreboard objectives add spellFirebolt dummy
scoreboard objectives add spellFlameBurst dummy
scoreboard objectives add spellBedofCoals dummy
scoreboard objectives add spellIceShard dummy
scoreboard objectives add spellColdShield dummy
scoreboard objectives add spellDeepFreeze dummy
scoreboard objectives add spellSnowGolem dummy
scoreboard objectives add spellWaterAir dummy
scoreboard objectives add spellDolpGrace dummy
scoreboard objectives add spellLevitate dummy
scoreboard objectives add spellSlowFall dummy
scoreboard objectives add spellFeather dummy
scoreboard objectives add spellBunnyHop dummy
scoreboard objectives add spellPoison dummy
scoreboard objectives add spellIronFlesh dummy

#Healer Spells
scoreboard objectives add spellFirstAid dummy
scoreboard objectives add spellHeal dummy
scoreboard objectives add spellInspire dummy
scoreboard objectives add spellFireResist dummy
scoreboard objectives add spellSpeedBoost dummy
scoreboard objectives add spellCureEffects dummy
scoreboard objectives add spellSatiate dummy
scoreboard objectives add spellHealRing dummy
scoreboard objectives add spellGiftHealth dummy
scoreboard objectives add spellCleanseArea dummy
scoreboard objectives add spellHolyStrike dummy
scoreboard objectives add spellHealerBoon dummy
scoreboard objectives add spellStopUndead dummy
