#Spawns random items after every 4 minutes if there is a player in the radius of 3 blocks

schedule function piglin_friend:spawnitem 1s
execute unless score canGiveItem piglin_friend matches 1 run scoreboard players operation canGiveItem piglin_friend -= 1 piglin_friend

execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run execute as @e[tag= Jim, limit=1] run say Hey, have my gifts!!!
execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run execute as @e[tag= Jim, limit=1] run loot spawn ^ ^2 ^3 loot piglin_friend:gameplay/piglin_present
execute if score canGiveItem piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run scoreboard players set canGiveItem piglin_friend 240