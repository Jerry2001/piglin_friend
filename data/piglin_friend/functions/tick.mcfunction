#Runs every tick
#If rand is equal to 2, set rand as -1
#Then increases rand by 1.

#execute as @e[tag=Jim] if entity @e[type=minecraft:player, distance=0..1] run data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at" set value {}
#summon minecraft:villager ~ ~ ~ {VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:desert"}}
effect give @e[tag=leader,limit=1] minecraft:invisibility 2 1 true
tp @e[tag=Jim] @e[tag=leader, limit=1]
data modify entity @e[tag = Jim, limit=1] Rotation set from entity @e[tag= leader, limit=1] Rotation
data modify entity @e[tag = Jim, limit=1] Motion set from entity @e[tag= leader, limit=1] Motion