execute as @s[scores={cl.wand.slot1=200}] run function classes:abilities/spells/torch/select
execute as @s[scores={cl.wand.slot1=201}] run function classes:abilities/spells/bedofcoals/select
execute as @s[scores={cl.wand.slot1=202}] run function classes:abilities/spells/flameburst/select
execute as @s[scores={cl.wand.slot1=203}] run function classes:abilities/spells/fireball/select
execute as @s[scores={cl.wand.slot1=204}] run function classes:abilities/spells/fireshield/select
execute as @s[scores={cl.wand.slot1=300}] run function classes:abilities/spells/waterstrike/select
execute as @s[scores={cl.wand.slot1=301}] run function classes:abilities/spells/iceshard/select
execute as @s[scores={cl.wand.slot1=302}] run function classes:abilities/spells/deepfreeze/select
execute as @s[scores={cl.wand.slot1=303}] run function classes:abilities/spells/snowgolem/select
execute as @s[scores={cl.wand.slot1=304}] run function classes:abilities/spells/waterbreath/select
execute as @s[scores={cl.wand.slot1=305}] run function classes:abilities/spells/dolpgrace/select
execute as @s[scores={cl.wand.slot1=306}] run function classes:abilities/spells/icewalker/select
execute as @s[scores={cl.wand.slot1=307}] run function classes:abilities/spells/extinguish/select
execute as @s[scores={cl.wand.slot1=308}] run function classes:abilities/spells/blizzard/select
execute as @s[scores={cl.wand.slot1=400}] run function classes:abilities/spells/levitate/select
execute as @s[scores={cl.wand.slot1=401}] run function classes:abilities/spells/slowfall/select
execute as @s[scores={cl.wand.slot1=402}] run function classes:abilities/spells/tailwind/select
execute as @s[scores={cl.wand.slot1=403}] run function classes:abilities/spells/bunnyhop/select
execute as @s[scores={cl.wand.slot1=404}] run function classes:abilities/spells/wind/select
execute as @s[scores={cl.wand.slot1=500}] run function classes:abilities/spells/poison/select
execute as @s[scores={cl.wand.slot1=501}] run function classes:abilities/spells/ironflesh/select
execute as @s[scores={cl.wand.slot1=502}] run function classes:abilities/spells/goldflesh/select
execute as @s[scores={cl.wand.slot1=503}] run function classes:abilities/spells/diamondflesh/select
execute as @s[scores={cl.wand.slot1=504}] run function classes:abilities/spells/irongolem/select
execute as @s[scores={cl.wand.slot1=505}] run function classes:abilities/spells/wall/select
execute as @s[scores={cl.wand.slot1=601}] run function classes:abilities/spells/teleport/select
execute as @s[scores={cl.wand.slot1=602}] run function classes:abilities/spells/shield/select
execute as @s[scores={cl.wand.slot1=603}] run function classes:abilities/spells/invisibility/select
execute as @s[scores={cl.wand.slot1=604}] run function classes:abilities/spells/mend/select
execute as @s[scores={cl.wand.slot1=605}] run function classes:abilities/spells/magearmor/select
execute as @s[scores={cl.wand.slot1=606}] run function classes:abilities/spells/magicmissile/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot1=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
