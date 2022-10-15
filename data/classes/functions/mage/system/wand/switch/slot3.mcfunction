execute as @s[scores={cl.wand.slot3=200}] run function classes:mage/spells/fire/torch/select
execute as @s[scores={cl.wand.slot3=201}] run function classes:mage/spells/fire/bedofcoals/select
execute as @s[scores={cl.wand.slot3=202}] run function classes:mage/spells/fire/flameburst/select
execute as @s[scores={cl.wand.slot3=204}] run function classes:mage/spells/fire/fireshield/select
execute as @s[scores={cl.wand.slot3=300}] run function classes:mage/spells/water/waterstrike/select
execute as @s[scores={cl.wand.slot3=301}] run function classes:mage/spells/water/iceshard/select
execute as @s[scores={cl.wand.slot3=302}] run function classes:mage/spells/water/deepfreeze/select
execute as @s[scores={cl.wand.slot3=303}] run function classes:mage/spells/water/snowgolem/select
execute as @s[scores={cl.wand.slot3=304}] run function classes:mage/spells/water/waterbreath/select
execute as @s[scores={cl.wand.slot3=305}] run function classes:mage/spells/water/dolpgrace/select
execute as @s[scores={cl.wand.slot3=306}] run function classes:mage/spells/water/icewalker/select
execute as @s[scores={cl.wand.slot3=307}] run function classes:mage/spells/water/extinguish/select
execute as @s[scores={cl.wand.slot3=308}] run function classes:mage/spells/water/blizzard/select
execute as @s[scores={cl.wand.slot3=400}] run function classes:mage/spells/air/levitate/select
execute as @s[scores={cl.wand.slot3=401}] run function classes:mage/spells/air/slowfall/select
execute as @s[scores={cl.wand.slot3=402}] run function classes:mage/spells/air/tailwind/select
execute as @s[scores={cl.wand.slot3=403}] run function classes:mage/spells/air/bunnyhop/select
execute as @s[scores={cl.wand.slot3=500}] run function classes:mage/spells/earth/poison/select
execute as @s[scores={cl.wand.slot3=501}] run function classes:mage/spells/earth/ironflesh/select
execute as @s[scores={cl.wand.slot3=502}] run function classes:mage/spells/earth/goldflesh/select
execute as @s[scores={cl.wand.slot3=503}] run function classes:mage/spells/earth/diamondflesh/select
execute as @s[scores={cl.wand.slot3=504}] run function classes:mage/spells/earth/irongolem/select
execute as @s[scores={cl.wand.slot3=505}] run function classes:mage/spells/earth/wall/select
execute as @s[scores={cl.wand.slot3=600}] run function classes:mage/spells/magic/light/select
execute as @s[scores={cl.wand.slot3=601}] run function classes:mage/spells/magic/teleport/select
execute as @s[scores={cl.wand.slot3=602}] run function classes:mage/spells/magic/shield/select
execute as @s[scores={cl.wand.slot3=603}] run function classes:mage/spells/magic/invisibility/select
execute as @s[scores={cl.wand.slot3=604}] run function classes:mage/spells/magic/mend/select
execute as @s[scores={cl.wand.slot3=605}] run function classes:mage/spells/magic/magearmor/select
execute as @s[scores={cl.wand.slot3=606}] run function classes:mage/spells/magic/magicmissile/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
