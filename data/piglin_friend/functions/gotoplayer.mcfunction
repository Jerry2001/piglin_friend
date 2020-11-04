#Makes the piglin chase a random player every 4 minutes

schedule function piglin_friend:gotoplayer 4800

execute as @e[tag= leader, limit=1] at @s unless block ^ ^ ^ #minecraft:beds run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity @p UUID
execute as @e[tag= leader, limit=1] at @s unless block ^ ^ ^ #minecraft:beds run data modify entity @e[tag=Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 500L