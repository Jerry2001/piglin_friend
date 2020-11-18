execute as @e[tag=leader, limit=1] at @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air run data modify entity @s Age set value -100
data modify entity @e[tag= Jim, limit=1] Invulnerable set value 0b
schedule function piglin_friend:invulnerable 100t