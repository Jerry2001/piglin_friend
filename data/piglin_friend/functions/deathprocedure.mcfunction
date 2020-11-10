tp @e[tag=leader] @e[tag=return, limit=1]
data modify entity @e[tag= leader, limit=1] NoAI set value 1
say Piglin will respawn after 5 minutes
scoreboard players set deathTime piglin_friend 100