schedule function piglin_friend:spawnitem 1s
execute unless score canGiveItem piglin_friend matches 1 run scoreboard players operation canGiveItem piglin_friend -= 1 piglin_friend

execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run execute as @e[tag= Jim, limit=1] run say Hey, have my gifts!!!
execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run execute as @e[tag= Jim, limit=1] run summon minecraft:item ^ ^2 ^3 {Item: {id: "gold_nugget", Count: 6b}}
execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run scoreboard players set canGiveItem piglin_friend 120