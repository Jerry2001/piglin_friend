schedule function piglin_friend:babyvillager 6s
execute as @e[tag=leader, limit=1] at @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air run data modify entity @s Age set value -100000