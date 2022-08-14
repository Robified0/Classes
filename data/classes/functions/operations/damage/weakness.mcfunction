# Run the function again to double the effective damage.

#Start damage
scoreboard players operation @s cl.CurrentHealth -= @e[type=marker,tag=cl.r.slowcast,limit=1,sort=nearest] cl.damageRandom

# Will the mob be zero health? If so, kill it, unless it's the ender dragon.
# Ender dragon will just disappear with kill, and not activate animation.
execute if score @s cl.CurrentHealth matches ..0 run kill @s[type=!minecraft:ender_dragon]

# Clear weakness score
scoreboard players reset @s cl.damageWeakness
