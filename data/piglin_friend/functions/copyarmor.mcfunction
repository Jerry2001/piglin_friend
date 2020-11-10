schedule function piglin_friend:copyarmor 5s

execute if score deathTime piglin_friend matches -1 run data modify entity @e[tag= leader, limit=1] ArmorItems set from entity @e[tag= Jim, limit=1] ArmorItems
