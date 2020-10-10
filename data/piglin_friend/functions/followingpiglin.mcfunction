#data get entity @e[type=minecraft:piglin, sort=nearest, limit=1] Brain.memories."minecraft:angry_at"
schedule function piglin_friend:followingpiglin 1s
execute as @e[tag= Jim, limit=1] at @s unless entity @e[type=minecraft:player, distance=0..15] run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity @p UUID
execute as @e[tag= Jim, limit=1] at @s unless entity @e[type=minecraft:player, distance=0..15] run data modify entity @e[tag=Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 500L
execute as @e[tag= Jim, limit=1] at @s unless entity @e[type=minecraft:player, distance=0..40] run tp @s @p