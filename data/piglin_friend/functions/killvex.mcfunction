schedule function piglin_friend:killvex 1s
execute as @e[tag= toKill] at @s unless entity @e[tag=Jim, limit=1, distance=0..9] run kill @s