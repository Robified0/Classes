execute as @s[scores={cl.wand.slot3=200}] run function classes:abilities/spells/torch/select
execute as @s[scores={cl.wand.slot3=201}] run function classes:abilities/spells/bedofcoals/select
execute as @s[scores={cl.wand.slot3=202}] run function classes:abilities/spells/flameburst/select
execute as @s[scores={cl.wand.slot3=203}] run function classes:abilities/spells/fireball/select
execute as @s[scores={cl.wand.slot3=204}] run function classes:abilities/spells/fireshield/select
execute as @s[scores={cl.wand.slot3=300}] run function classes:abilities/spells/waterstrike/select
execute as @s[scores={cl.wand.slot3=301}] run function classes:abilities/spells/iceshard/select
execute as @s[scores={cl.wand.slot3=302}] run function classes:abilities/spells/deepfreeze/select
execute as @s[scores={cl.wand.slot3=303}] run function classes:abilities/spells/snowgolem/select
execute as @s[scores={cl.wand.slot3=304}] run function classes:abilities/spells/waterbreath/select
execute as @s[scores={cl.wand.slot3=305}] run function classes:abilities/spells/dolpgrace/select
execute as @s[scores={cl.wand.slot3=306}] run function classes:abilities/spells/icewalker/select
execute as @s[scores={cl.wand.slot3=307}] run function classes:abilities/spells/extinguish/select
execute as @s[scores={cl.wand.slot3=308}] run function classes:abilities/spells/blizzard/select
execute as @s[scores={cl.wand.slot3=400}] run function classes:abilities/spells/levitate/select
execute as @s[scores={cl.wand.slot3=401}] run function classes:abilities/spells/slowfall/select
execute as @s[scores={cl.wand.slot3=402}] run function classes:abilities/spells/tailwind/select
execute as @s[scores={cl.wand.slot3=403}] run function classes:abilities/spells/bunnyhop/select
execute as @s[scores={cl.wand.slot3=404}] run function classes:abilities/spells/wind/select
execute as @s[scores={cl.wand.slot3=500}] run function classes:abilities/spells/poison/select
execute as @s[scores={cl.wand.slot3=501}] run function classes:abilities/spells/ironflesh/select
execute as @s[scores={cl.wand.slot3=502}] run function classes:abilities/spells/goldflesh/select
execute as @s[scores={cl.wand.slot3=503}] run function classes:abilities/spells/diamondflesh/select
execute as @s[scores={cl.wand.slot3=504}] run function classes:abilities/spells/irongolem/select
execute as @s[scores={cl.wand.slot3=505}] run function classes:abilities/spells/wall/select
execute as @s[scores={cl.wand.slot3=601}] run function classes:abilities/spells/teleport/select
execute as @s[scores={cl.wand.slot3=602}] run function classes:abilities/spells/shield/select
execute as @s[scores={cl.wand.slot3=603}] run function classes:abilities/spells/invisibility/select
execute as @s[scores={cl.wand.slot3=604}] run function classes:abilities/spells/mend/select
execute as @s[scores={cl.wand.slot3=605}] run function classes:abilities/spells/magearmor/select
execute as @s[scores={cl.wand.slot3=606}] run function classes:abilities/spells/magicmissile/select
execute as @s[scores={cl.wand.slot3=700}] run function classes:abilities/spells/heal/select
execute as @s[scores={cl.wand.slot3=701}] run function classes:abilities/spells/healplosion/select
execute as @s[scores={cl.wand.slot3=702}] run function classes:abilities/spells/purify/select
execute as @s[scores={cl.wand.slot3=703}] run function classes:abilities/spells/prevention/select
execute as @s[scores={cl.wand.slot3=704}] run function classes:abilities/spells/mending/select
execute as @s[scores={cl.wand.slot3=800}] run function classes:abilities/spells/guard/select
execute as @s[scores={cl.wand.slot3=801}] run function classes:abilities/spells/fireresist/select
execute as @s[scores={cl.wand.slot3=802}] run function classes:abilities/spells/speedboost/select
execute as @s[scores={cl.wand.slot3=803}] run function classes:abilities/spells/inspire/select
execute as @s[scores={cl.wand.slot3=804}] run function classes:abilities/spells/vitality/select
execute as @s[scores={cl.wand.slot3=805}] run function classes:abilities/spells/bless/select
execute as @s[scores={cl.wand.slot3=900}] run function classes:abilities/spells/holystrike/select
execute as @s[scores={cl.wand.slot3=901}] run function classes:abilities/spells/stopundead/select
execute as @s[scores={cl.wand.slot3=902}] run function classes:abilities/spells/bolt/select
execute as @s[scores={cl.wand.slot3=903}] run function classes:abilities/spells/light/select


#Check for empty slot
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot3=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
