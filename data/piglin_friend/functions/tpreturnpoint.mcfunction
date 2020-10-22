schedule function piglin_friend:tpreturnpoint 6000

execute if score followMode piglin_friend matches 0 run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
execute if score followMode piglin_friend matches 0 run function piglin_friend:controlbyvil
execute if score followMode piglin_friend matches 0 as @e[tag=Jim, limit=1] at @s unless entity @e[type=minecraft:player, distance=0..5] run tp @e[tag=leader] @e[tag=return, limit=1]