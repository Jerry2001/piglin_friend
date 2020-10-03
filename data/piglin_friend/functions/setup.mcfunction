#Runs when the game is loaded and reloaded
#Adds a dummy scoreboard named evoker_board 
#If there is no player named rand in the scoreboard, initialize rand with 0

#execute as @p at @s run summon minecraft:piglin 290 67 -42 {IsImmuneToZombification: 1b, Team: "happy", Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b}

#data get entity @e[type=minecraft:piglin, sort=nearest, limit=1] Brain.memories."minecraft:angry_at"
#data modify entity @e[tag=Jim, limit = 1] Brain.memories."minecraft:angry_at".ttl set value 100000L
#data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity JerryNgo UUID
#function piglin_friend:kill
execute unless entity @e[tag=leader] as @p at @s run summon minecraft:villager ~ ~ ~ {Team: "happy", Tags:[leader], Invisibility:1b, PersistenceRequired: 1b, Invulnerable:1b, Silent:1b}
execute unless entity @e[tag=Jim] as @p at @s run summon minecraft:piglin ~ ~ ~ {Team: "happy", IsImmuneToZombification: 1b, Team: "happy", Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b}
scoreboard objectives add piglin_friend dummy
execute unless score controlByVil piglin_friend matches 0..1 run scoreboard players add controlByVil piglin_friend 1