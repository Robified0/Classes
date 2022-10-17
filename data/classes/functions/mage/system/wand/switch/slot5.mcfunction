execute as @s[scores={cl.wand.slot5=200}] run function classes:mage/spells/fire/torch/select
execute as @s[scores={cl.wand.slot5=201}] run function classes:mage/spells/fire/bedofcoals/select
execute as @s[scores={cl.wand.slot5=202}] run function classes:mage/spells/fire/flameburst/select
execute as @s[scores={cl.wand.slot5=203}] run function classes:mage/spells/fire/fireball/select
execute as @s[scores={cl.wand.slot5=204}] run function classes:mage/spells/fire/fireshield/select
execute as @s[scores={cl.wand.slot5=300}] run function classes:mage/spells/water/waterstrike/select
execute as @s[scores={cl.wand.slot5=301}] run function classes:mage/spells/water/iceshard/select
execute as @s[scores={cl.wand.slot5=302}] run function classes:mage/spells/water/deepfreeze/select
execute as @s[scores={cl.wand.slot5=303}] run function classes:mage/spells/water/snowgolem/select
execute as @s[scores={cl.wand.slot5=304}] run function classes:mage/spells/water/waterbreath/select
execute as @s[scores={cl.wand.slot5=305}] run function classes:mage/spells/water/dolpgrace/select
execute as @s[scores={cl.wand.slot5=306}] run function classes:mage/spells/water/icewalker/select
execute as @s[scores={cl.wand.slot5=307}] run function classes:mage/spells/water/extinguish/select
execute as @s[scores={cl.wand.slot5=308}] run function classes:mage/spells/water/blizzard/select
execute as @s[scores={cl.wand.slot5=400}] run function classes:mage/spells/air/levitate/select
execute as @s[scores={cl.wand.slot5=401}] run function classes:mage/spells/air/slowfall/select
execute as @s[scores={cl.wand.slot5=402}] run function classes:mage/spells/air/tailwind/select
execute as @s[scores={cl.wand.slot5=403}] run function classes:mage/spells/air/bunnyhop/select
execute as @s[scores={cl.wand.slot5=404}] run function classes:mage/spells/air/wind/select
execute as @s[scores={cl.wand.slot5=500}] run function classes:mage/spells/earth/poison/select
execute as @s[scores={cl.wand.slot5=501}] run function classes:mage/spells/earth/ironflesh/select
execute as @s[scores={cl.wand.slot5=502}] run function classes:mage/spells/earth/goldflesh/select
execute as @s[scores={cl.wand.slot5=503}] run function classes:mage/spells/earth/diamondflesh/select
execute as @s[scores={cl.wand.slot5=504}] run function classes:mage/spells/earth/irongolem/select
execute as @s[scores={cl.wand.slot5=505}] run function classes:mage/spells/earth/wall/select
execute as @s[scores={cl.wand.slot5=600}] run function classes:mage/spells/magic/light/select
execute as @s[scores={cl.wand.slot5=601}] run function classes:mage/spells/magic/teleport/select
execute as @s[scores={cl.wand.slot5=602}] run function classes:mage/spells/magic/shield/select
execute as @s[scores={cl.wand.slot5=603}] run function classes:mage/spells/magic/invisibility/select
execute as @s[scores={cl.wand.slot5=604}] run function classes:mage/spells/magic/mend/select
execute as @s[scores={cl.wand.slot5=605}] run function classes:mage/spells/magic/magearmor/select
execute as @s[scores={cl.wand.slot5=606}] run function classes:mage/spells/magic/magicmissile/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot5=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
