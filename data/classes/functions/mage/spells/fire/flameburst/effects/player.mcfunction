function classes:main/mana_system/mage/cast

# Summon marker for damage calculation
summon marker ~ ~ ~ {Tags:["cl.r.slowcast","cl.r.flameburst"]}

scoreboard players set @s cl.Cooldown 20
scoreboard players remove @s cl.Mana 4
