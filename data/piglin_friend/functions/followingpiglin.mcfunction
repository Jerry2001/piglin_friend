#Switchs to following mode of piglin
#Piglin will either chase or teleport to the player depends on the distance 

schedule function piglin_friend:followingpiglin 1s

execute as @e[tag= Jim, limit=1] at @s unless block ^ ^ ^ #minecraft:beds unless entity @e[type=minecraft:player, distance=0..15] run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity @p UUID
execute as @e[tag= Jim, limit=1] at @s unless block ^ ^ ^ #minecraft:beds unless entity @e[type=minecraft:player, distance=0..15] run data modify entity @e[tag=Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 500L
execute as @e[tag= Jim, limit=1] at @s unless block ^ ^ ^ #minecraft:beds unless entity @e[type=minecraft:player, distance=0..40] run tp @s @p
