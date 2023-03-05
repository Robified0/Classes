##Run by each Rune recipe

##Set Rune # (prevent stacking)
#Reset score if above limit - set to 0 as it will go to 1 below
execute if score $cl.tracker cl.track.RuneNumber matches 999999999 run scoreboard players set $cl.tracker cl.track.RuneNumber 0

#Add one to the score
scoreboard players add $cl.tracker cl.track.RuneNumber 1

#Write current score to the Rune
execute store result block ~ ~ ~ Items.[{Slot:16b}].tag."cl.track.RuneNumber" int 1 run scoreboard players get $cl.tracker cl.track.RuneNumber
