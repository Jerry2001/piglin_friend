#Sets the control of the piglin to the piglin

execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
scoreboard players set controlByVil piglin_friend 1