#Runs every tick
#If rand is equal to 2, set rand as -1
#Then increases rand by 1.
#execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run data modify entity @e[tag=Jim, limit=1] Silent set value 1b
#execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run data modify entity @e[tag=Jim, limit=1] Silent set value 0b

effect give @e[tag=leader,limit=1] minecraft:invisibility 2 1 true
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run tp @e[tag=Jim] @e[tag=leader, limit=1]
execute if score controlByVil piglin_friend matches 0 run tp @e[tag=leader] @e[tag=Jim, limit=1]
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run data modify entity @e[tag = Jim, limit=1] Rotation set from entity @e[tag= leader, limit=1] Rotation
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run data modify entity @e[tag = Jim, limit=1] Motion set from entity @e[tag= leader, limit=1] Motion

execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" run scoreboard players set controlByVil piglin_friend 0
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" run scoreboard players set controlByVil piglin_friend 1

execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" as @e[tag=Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run scoreboard players set controlByVil piglin_friend 0
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run scoreboard players set controlByVil piglin_friend 1
execute as @e[tag=Jim, limit=1] at @s unless entity @e[tag= return, limit=1, distance=0..160] run function piglin_friend:tpreturnpoint