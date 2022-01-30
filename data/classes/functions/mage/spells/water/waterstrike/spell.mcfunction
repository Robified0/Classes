#Not Enough Mana
execute unless entity @s[scores={cl.Mana=1..}] run function classes:main/mana_system/nomana

### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set dst_per cl.slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players set dst cl.slowcast 48

#Cast if there is enough Mana.
execute if entity @s[scores={cl.Mana=1..}] at @s positioned ~ ~1.45 ~ run function classes:mage/spells/water/waterstrike/start

#Modify item (for spell versioning)
#Water Strike (only fire extinguish on)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 0 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/onlyextinguish

#Water Strike (only breaking portals is on)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 0 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/onlyportals

#Water Strike (only lava convert is on)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 1 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/onlylava

#Water Strike (fire extinguish and lava convert)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 1 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/extandlava

#Water Strike (fire extinguish and breaking portals)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 0 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/extandportals

#Water Strike (breaking portals and lava convert)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 1 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/portalsandlava

#Water Strike (fire extinguish, breaking portals, lava convert on)
execute if score #cl.pref cl.p.wExtFire matches 1 if score #cl.pref cl.p.wPortal matches 1 if score #cl.pref cl.p.wObsidian matches 1 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/extportlava

#Water Strike (all pref off)
execute if score #cl.pref cl.p.wExtFire matches 0 if score #cl.pref cl.p.wPortal matches 0 if score #cl.pref cl.p.wObsidian matches 0 run item modify entity @s weapon.mainhand classes:mage/spells/water/waterstrike/alloff
