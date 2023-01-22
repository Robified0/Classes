execute as @s[scores={cl.wand.slot4=200}] run function classes:abilities/spells/torch/select
execute as @s[scores={cl.wand.slot4=201}] run function classes:abilities/spells/bedofcoals/select
execute as @s[scores={cl.wand.slot4=202}] run function classes:abilities/spells/flameburst/select
execute as @s[scores={cl.wand.slot4=203}] run function classes:abilities/spells/fireball/select
execute as @s[scores={cl.wand.slot4=204}] run function classes:abilities/spells/fireshield/select
execute as @s[scores={cl.wand.slot4=300}] run function classes:abilities/spells/waterstrike/select
execute as @s[scores={cl.wand.slot4=301}] run function classes:abilities/spells/iceshard/select
execute as @s[scores={cl.wand.slot4=302}] run function classes:abilities/spells/deepfreeze/select
execute as @s[scores={cl.wand.slot4=303}] run function classes:abilities/spells/snowgolem/select
execute as @s[scores={cl.wand.slot4=304}] run function classes:abilities/spells/waterbreath/select
execute as @s[scores={cl.wand.slot4=305}] run function classes:abilities/spells/dolpgrace/select
execute as @s[scores={cl.wand.slot4=306}] run function classes:abilities/spells/icewalker/select
execute as @s[scores={cl.wand.slot4=307}] run function classes:abilities/spells/extinguish/select
execute as @s[scores={cl.wand.slot4=308}] run function classes:abilities/spells/blizzard/select
execute as @s[scores={cl.wand.slot4=400}] run function classes:abilities/spells/levitate/select
execute as @s[scores={cl.wand.slot4=401}] run function classes:abilities/spells/slowfall/select
execute as @s[scores={cl.wand.slot4=402}] run function classes:abilities/spells/tailwind/select
execute as @s[scores={cl.wand.slot4=403}] run function classes:abilities/spells/bunnyhop/select
execute as @s[scores={cl.wand.slot4=404}] run function classes:abilities/spells/wind/select
execute as @s[scores={cl.wand.slot4=500}] run function classes:abilities/spells/poison/select
execute as @s[scores={cl.wand.slot4=501}] run function classes:abilities/spells/ironflesh/select
execute as @s[scores={cl.wand.slot4=502}] run function classes:abilities/spells/goldflesh/select
execute as @s[scores={cl.wand.slot4=503}] run function classes:abilities/spells/diamondflesh/select
execute as @s[scores={cl.wand.slot4=504}] run function classes:abilities/spells/irongolem/select
execute as @s[scores={cl.wand.slot4=505}] run function classes:abilities/spells/wall/select
execute as @s[scores={cl.wand.slot4=601}] run function classes:abilities/spells/teleport/select
execute as @s[scores={cl.wand.slot4=602}] run function classes:abilities/spells/shield/select
execute as @s[scores={cl.wand.slot4=603}] run function classes:abilities/spells/invisibility/select
execute as @s[scores={cl.wand.slot4=604}] run function classes:abilities/spells/mend/select
execute as @s[scores={cl.wand.slot4=605}] run function classes:abilities/spells/magearmor/select
execute as @s[scores={cl.wand.slot4=606}] run function classes:abilities/spells/magicmissile/select
execute as @s[scores={cl.wand.slot4=700}] run function classes:abilities/spells/heal/select
execute as @s[scores={cl.wand.slot4=701}] run function classes:abilities/spells/healplosion/select
execute as @s[scores={cl.wand.slot4=702}] run function classes:abilities/spells/purify/select
execute as @s[scores={cl.wand.slot4=703}] run function classes:abilities/spells/prevention/select
execute as @s[scores={cl.wand.slot4=704}] run function classes:abilities/spells/mending/select
execute as @s[scores={cl.wand.slot4=800}] run function classes:abilities/spells/guard/select
execute as @s[scores={cl.wand.slot4=801}] run function classes:abilities/spells/fireresist/select
execute as @s[scores={cl.wand.slot4=802}] run function classes:abilities/spells/speedboost/select
execute as @s[scores={cl.wand.slot4=803}] run function classes:abilities/spells/inspire/select
execute as @s[scores={cl.wand.slot4=804}] run function classes:abilities/spells/vitality/select
execute as @s[scores={cl.wand.slot4=805}] run function classes:abilities/spells/bless/select
execute as @s[scores={cl.wand.slot4=900}] run function classes:abilities/spells/holystrike/select
execute as @s[scores={cl.wand.slot4=901}] run function classes:abilities/spells/stopundead/select
execute as @s[scores={cl.wand.slot4=902}] run function classes:abilities/spells/bolt/select
execute as @s[scores={cl.wand.slot4=903}] run function classes:abilities/spells/light/select

#Check for empty slot
execute unless entity @s[scores={cl.wand.slot4=1..}] run title @s times 20 100 20
execute unless entity @s[scores={cl.wand.slot4=1..}] run title @s subtitle {"text":" ","color":"red"}
execute unless entity @s[scores={cl.wand.slot4=1..}] run title @s title {"text":"You have no spells equipped!","color":"red"}
