#Gives all trusted fox 1 heart every 10 seconds

schedule function piglin_friend:regeneration 10s

execute as @e[tag= Jim, limit=1] run effect give @s minecraft:regeneration 2 1 true