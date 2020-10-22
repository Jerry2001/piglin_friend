#Global trigger function for players to send the piglin back to his return point

execute run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
function piglin_friend:controlbyvil
tp @e[tag=leader] @e[tag=return, limit=1]