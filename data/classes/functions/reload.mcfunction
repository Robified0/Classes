##################Set up scoreboards######################

#Set up trigger for equipping spells
scoreboard objectives add equipSpell trigger

#Set up other scoreboards
scoreboard objectives add class dummy
scoreboard objectives add loadSpell dummy
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add rightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ReadBook minecraft.used:minecraft.written_book
scoreboard objectives add Mana dummy
scoreboard objectives add ManaRegenSec dummy
scoreboard objectives add currentSpellSel dummy
scoreboard objectives add emptySlot1 dummy
scoreboard objectives add emptySlot2 dummy
scoreboard objectives add emptySlot3 dummy
scoreboard objectives add emptySlot4 dummy
scoreboard objectives add emptySlot5 dummy
scoreboard objectives add cooldown dummy

#Scoreboards for time based spells
scoreboard objectives add summonCount dummy
scoreboard objectives add effColdShield dummy
scoreboard objectives add effDeepFreeze dummy
scoreboard objectives add effSlowFall dummy
scoreboard objectives add effTailWind dummy
scoreboard objectives add effBunnyHop dummy
scoreboard objectives add effStoneFlesh dummy
scoreboard objectives add effIronFlesh dummy
scoreboard objectives add effDiaFlesh dummy
scoreboard objectives add effLight dummy

#Slowcast scoreboards (credit to CloudWolf)
scoreboard objectives add slowcast dummy
scoreboard players add dst slowcast 0
scoreboard players add dst_per slowcast 0
scoreboard objectives add slo_id dummy
scoreboard objectives add slo_dst dummy
scoreboard objectives add slo_dst_per dummy

#Mage Spells
scoreboard objectives add spellTorch dummy
scoreboard objectives add spellFlameBurst dummy
scoreboard objectives add spellFireball dummy
scoreboard objectives add spellBedofCoals dummy
scoreboard objectives add spellWaterStrike dummy
scoreboard objectives add spellIceShard dummy
scoreboard objectives add spellColdShield dummy
scoreboard objectives add spellDeepFreeze dummy
scoreboard objectives add spellSnowGolem dummy
scoreboard objectives add spellWaterAir dummy
scoreboard objectives add spellDolpGrace dummy
scoreboard objectives add spellLevitate dummy
scoreboard objectives add spellSlowFall dummy
scoreboard objectives add spellTailWind dummy
scoreboard objectives add spellBunnyHop dummy
scoreboard objectives add spellPoison dummy
scoreboard objectives add spellStoneFlesh dummy
scoreboard objectives add spellIronFlesh dummy
scoreboard objectives add spellDiaFlesh dummy
scoreboard objectives add spellIronGolem dummy
scoreboard objectives add spellLight dummy
scoreboard objectives add spellTeleport dummy

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
