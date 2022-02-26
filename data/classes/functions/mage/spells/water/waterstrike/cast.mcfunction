##Executing as player who just right-clicked (mage/system/castspell/waterspell)

#Check for Mana - display error if not enough
execute unless entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/waterstrike=true}] run function classes:main/mana_system/nomana

#Check for Mana - cast spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/waterstrike=true}] run function classes:mage/spells/water/waterstrike/zprivate/setparams

#Punish for casting without knowing the spell
execute if entity @s[scores={cl.Mana=2..},advancements={classes:mage/learnspell/water/waterstrike=false}] run function classes:main/mana_system/mage/noknowledge

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
