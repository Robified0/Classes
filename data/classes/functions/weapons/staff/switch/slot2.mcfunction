execute as @s[scores={cl.wand.slot2=200}] run function classes:abilities/spells/torch/select
execute as @s[scores={cl.wand.slot2=201}] run function classes:abilities/spells/bedofcoals/select
execute as @s[scores={cl.wand.slot2=202}] run function classes:abilities/spells/flameburst/select
execute as @s[scores={cl.wand.slot2=203}] run function classes:abilities/spells/fireball/select
execute as @s[scores={cl.wand.slot2=204}] run function classes:abilities/spells/fireshield/select
execute as @s[scores={cl.wand.slot2=300}] run function classes:abilities/spells/waterstrike/select
execute as @s[scores={cl.wand.slot2=301}] run function classes:abilities/spells/iceshard/select
execute as @s[scores={cl.wand.slot2=302}] run function classes:abilities/spells/deepfreeze/select
execute as @s[scores={cl.wand.slot2=303}] run function classes:abilities/spells/snowgolem/select
execute as @s[scores={cl.wand.slot2=304}] run function classes:abilities/spells/waterbreath/select
execute as @s[scores={cl.wand.slot2=305}] run function classes:abilities/spells/dolpgrace/select
execute as @s[scores={cl.wand.slot2=306}] run function classes:abilities/spells/icewalker/select
execute as @s[scores={cl.wand.slot2=307}] run function classes:abilities/spells/extinguish/select
execute as @s[scores={cl.wand.slot2=308}] run function classes:abilities/spells/blizzard/select
execute as @s[scores={cl.wand.slot2=400}] run function classes:abilities/spells/levitate/select
execute as @s[scores={cl.wand.slot2=401}] run function classes:abilities/spells/slowfall/select
execute as @s[scores={cl.wand.slot2=402}] run function classes:abilities/spells/tailwind/select
execute as @s[scores={cl.wand.slot2=403}] run function classes:abilities/spells/bunnyhop/select
execute as @s[scores={cl.wand.slot2=404}] run function classes:abilities/spells/wind/select
execute as @s[scores={cl.wand.slot2=500}] run function classes:abilities/spells/poison/select
execute as @s[scores={cl.wand.slot2=501}] run function classes:abilities/spells/ironflesh/select
execute as @s[scores={cl.wand.slot2=502}] run function classes:abilities/spells/goldflesh/select
execute as @s[scores={cl.wand.slot2=503}] run function classes:abilities/spells/diamondflesh/select
execute as @s[scores={cl.wand.slot2=504}] run function classes:abilities/spells/irongolem/select
execute as @s[scores={cl.wand.slot2=505}] run function classes:abilities/spells/wall/select
execute as @s[scores={cl.wand.slot2=601}] run function classes:abilities/spells/teleport/select
execute as @s[scores={cl.wand.slot2=602}] run function classes:abilities/spells/shield/select
execute as @s[scores={cl.wand.slot2=603}] run function classes:abilities/spells/invisibility/select
execute as @s[scores={cl.wand.slot2=604}] run function classes:abilities/spells/mend/select
execute as @s[scores={cl.wand.slot2=605}] run function classes:abilities/spells/magearmor/select
execute as @s[scores={cl.wand.slot2=606}] run function classes:abilities/spells/magicmissile/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot2=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
