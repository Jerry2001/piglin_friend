#data get entity @e[type=minecraft:piglin, sort=nearest, limit=1] Brain.memories."minecraft:angry_at"
schedule function piglin_friend:gotoplayer 600
data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity @p UUID
data modify entity @e[tag=Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 500L