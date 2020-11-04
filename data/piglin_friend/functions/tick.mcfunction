#Executes every tick to control to main mechanism of the piglin

execute store result score canPickupLoot piglin_friend run data get entity @e[tag= Jim, limit=1] CanPickUpLoot

effect give @e[tag=leader,limit=1] minecraft:invisibility 2 1 true
#data modify entity @e[tag=leader, limit=1] Age set value -2000

#Controls teleportation from piglin to the villager 
execute rotated as @e[tag= leader, limit=1] unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run tp @e[tag=Jim] @e[tag=leader, limit=1]
execute if score controlByVil piglin_friend matches 0 run tp @e[tag=leader] @e[tag=Jim, limit=1]
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run data modify entity @e[tag = Jim, limit=1] Rotation set from entity @e[tag= leader, limit=1] Rotation
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" if score controlByVil piglin_friend matches 1 run data modify entity @e[tag = Jim, limit=1] Motion set from entity @e[tag= leader, limit=1] Motion

#Controls the bartering behavior
execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" run scoreboard players set controlByVil piglin_friend 0
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" run scoreboard players set controlByVil piglin_friend 1

#Controls the chasing behavior
execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" as @e[tag=Jim, limit=1] at @s if entity @e[type=minecraft:player, distance=0..3] run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 1L
execute if data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run scoreboard players set controlByVil piglin_friend 0
execute unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:angry_at".ttl run scoreboard players set controlByVil piglin_friend 1
execute as @e[tag=Jim, limit=1] at @s unless entity @e[tag= return, limit=1, distance=0..160] run function piglin_friend:tpreturnpoint

#Makes the piglin unable to obtain crossbow
execute as @e[tag=Jim, limit=1] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}, distance= 0..3] run data modify entity @e[tag= Jim, limit=1] CanPickUpLoot set value 0b
execute as @e[tag=Jim, limit=1] at @s if score canPickupLoot piglin_friend matches 0 unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}, distance= 0..3] run data modify entity @e[tag= Jim, limit=1] CanPickUpLoot set value 1b

#Controls triggerreturn behavior
execute as @e[type= minecraft:player, scores={pigreturn=1}, limit=1] run function piglin_friend:triggerreturn
execute as @e[type= minecraft:player, scores={pigreturn=1}] run scoreboard players set @s pigreturn 0
scoreboard players enable @a pigreturn

#Makes piglin returns to the return point when there is a boat in radius of 10 blocks
execute as @e[tag= Jim, limit=1] at @s if entity @e[type=boat, distance= 0..10] run function piglin_friend:triggerreturn

#Makes piglin unable to chase players if it is nighttime
execute store result score time piglin_friend run time query daytime
execute if score time piglin_friend >= 12541 piglin_friend unless data entity @e[tag= Jim, limit=1] Brain.memories."minecraft:admiring_item" run function piglin_friend:controlbyvil

#Villager death
execute unless entity @e[tag= Jim, limit=1] if score deathTime piglin_friend matches -1 run function piglin_friend:deathprocedure
execute unless entity @e[tag= Jim, limit=1] unless score deathTime piglin_friend matches 0 run scoreboard players operation deathTime piglin_friend -= 1 piglin_friend
execute if score deathTime piglin_friend matches 0 run function piglin_friend:setup
execute if score deathTime piglin_friend matches 0 run scoreboard players operation deathTime piglin_friend -= 1 piglin_friend