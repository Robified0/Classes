execute as @s[scores={cl.wand.slot1=200}] run function classes:mage/spells/fire/torch/select
execute as @s[scores={cl.wand.slot1=201}] run function classes:mage/spells/fire/bedofcoals/select
execute as @s[scores={cl.wand.slot1=202}] run function classes:mage/spells/fire/flameburst/select
execute as @s[scores={cl.wand.slot1=204}] run function classes:mage/spells/fire/fireshield/select
execute as @s[scores={cl.wand.slot1=300}] run function classes:mage/spells/water/waterstrike/select
execute as @s[scores={cl.wand.slot1=301}] run function classes:mage/spells/water/iceshard/select
execute as @s[scores={cl.wand.slot1=302}] run function classes:mage/spells/water/deepfreeze/select
execute as @s[scores={cl.wand.slot1=303}] run function classes:mage/spells/water/snowgolem/select
execute as @s[scores={cl.wand.slot1=304}] run function classes:mage/spells/water/waterbreath/select
execute as @s[scores={cl.wand.slot1=305}] run function classes:mage/spells/water/dolpgrace/select
execute as @s[scores={cl.wand.slot1=306}] run function classes:mage/spells/water/icewalker/select
execute as @s[scores={cl.wand.slot1=307}] run function classes:mage/spells/water/extinguish/select
execute as @s[scores={cl.wand.slot1=308}] run function classes:mage/spells/water/blizzard/select
execute as @s[scores={cl.wand.slot1=400}] run function classes:mage/spells/air/levitate/select
execute as @s[scores={cl.wand.slot1=401}] run function classes:mage/spells/air/slowfall/select
execute as @s[scores={cl.wand.slot1=402}] run function classes:mage/spells/air/tailwind/select
execute as @s[scores={cl.wand.slot1=403}] run function classes:mage/spells/air/bunnyhop/select
execute as @s[scores={cl.wand.slot1=500}] run function classes:mage/spells/earth/poison/select
execute as @s[scores={cl.wand.slot1=501}] run function classes:mage/spells/earth/ironflesh/select
execute as @s[scores={cl.wand.slot1=502}] run function classes:mage/spells/earth/goldflesh/select
execute as @s[scores={cl.wand.slot1=503}] run function classes:mage/spells/earth/diamondflesh/select
execute as @s[scores={cl.wand.slot1=504}] run function classes:mage/spells/earth/irongolem/select
execute as @s[scores={cl.wand.slot1=600}] run function classes:mage/spells/magic/light/select
execute as @s[scores={cl.wand.slot1=601}] run function classes:mage/spells/magic/teleport/select
execute as @s[scores={cl.wand.slot1=602}] run function classes:mage/spells/magic/shield/select
execute as @s[scores={cl.wand.slot1=603}] run function classes:mage/spells/magic/invisibility/select
execute as @s[scores={cl.wand.slot1=604}] run function classes:mage/spells/magic/mend/select
execute as @s[scores={cl.wand.slot1=605}] run function classes:mage/spells/magic/magearmor/select
execute as @s[scores={cl.wand.slot1=606}] run function classes:mage/spells/magic/magicmissile/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
