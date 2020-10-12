schedule function piglin_friend:detectmob 1s
execute unless score canDetectMob piglin_friend matches 1 run scoreboard players operation canDetectMob piglin_friend -= 1 piglin_friend

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wandering_trader, distance = 0..100, limit=1, sort = nearest, tag=!detected] run execute as @e[tag= Jim, limit=1] run say This trader seems to have a lot of interesting trades
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wandering_trader, distance = 0..100, limit=1, sort = nearest, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wandering_trader, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:wandering_trader, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:skeleton_horse, nbt=!{SaddleItem:{}}, distance = 0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say Wow, this horse can...cry???
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:skeleton_horse, nbt=!{SaddleItem:{}}, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:skeleton_horse, nbt=!{SaddleItem:{}}, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:skeleton_horse, distance = 0..100, limit=1, nbt=!{SaddleItem:{}}, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:pillager, distance = 0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say These pillagers are threatening with their crossbows again!!!
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:pillager, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:pillager, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:pillager, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:fox, limit=1, nbt=!{Trusted:[]}, distance=0..100, tag=!detected] run execute as @e[tag= Jim, limit=1] run say Want to become more trustful? You can now!!!
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:fox, nbt=!{Trusted:[]}, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:fox, nbt=!{Trusted:[]}, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:fox, nbt=!{Trusted:[]}, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:parrot, distance = 0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say Isn't that a air plane? but..but..it can dance...
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:parrot, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:parrot, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:parrot, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wolf, nbt=!{Owner:[]}, distance=0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say Doge! Much cute! Empty Owner! Much Lonely
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wolf, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:wolf, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:wolf, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:cat, nbt=!{Owner:[]}, distance=0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say You may want to give this cat more attention
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:cat, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:cat, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:cat, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:vindicator, distance = 0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say I don't think this villager-like creature with his axe is friendly...
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:vindicator, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:vindicator, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:vindicator, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected

execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:evoker, distance = 0..100, limit=1, tag=!detected] run execute as @e[tag= Jim, limit=1] run say This man may summon dangerous butterfly but he also give you a second life
execute if score canDetectMob piglin_friend matches 1 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:evoker, distance = 0..100, limit=1, tag=!detected] run scoreboard players set canDetectMob piglin_friend 60
execute if score canDetectMob piglin_friend matches 60 as @e[tag= Jim, limit=1] at @s if entity @e[type= minecraft:evoker, distance = 0..100, limit=1, sort = nearest, tag=!detected] run tag @e[type= minecraft:evoker, distance = 0..100, limit=1, sort = nearest, tag=!detected] add detected
