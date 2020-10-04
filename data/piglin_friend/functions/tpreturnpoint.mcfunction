schedule function piglin_friend:tpreturnpoint 1200
data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
function piglin_friend:controlbyvil
execute as @e[tag=Jim, limit=1] at @s unless entity @e[type=minecraft:player, distance=0..5] run tp @e[tag=leader] @e[tag=return, limit=1]