#data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity JerryNgo UUID
#function piglin_friend:kill
execute unless entity @e[tag=leader] as @p at @s run summon minecraft:villager ~ ~ ~ {Team: "happy", Tags:[leader], Invisibility:1b, PersistenceRequired: 1b, Invulnerable:1b, Silent:1b, VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:desert"}}
execute unless entity @e[tag=Jim] as @p at @s run summon minecraft:piglin ~ ~ ~ {Team: "happy", IsImmuneToZombification: 1b, Team: "happy", Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b}
scoreboard objectives add piglin_friend dummy
execute unless score controlByVil piglin_friend matches 0..1 run scoreboard players add controlByVil piglin_friend 1

function piglin_friend:gotoplayer