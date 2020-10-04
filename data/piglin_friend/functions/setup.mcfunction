#data modify entity @e[tag= Jim, limit = 1] Brain.memories."minecraft:angry_at".value set from entity JerryNgo UUID
#function piglin_friend:kill
execute unless entity @e[tag=leader] as @p at @s run summon minecraft:villager ~ ~ ~ {Team: "piglin", Tags:[leader], PersistenceRequired: 1b, Invulnerable:1b, Silent:1b, VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:desert"}}
execute unless entity @e[tag=Jim] as @e[tag=leader, limit=1] at @s run summon minecraft:piglin ~ ~ ~ {Team: "piglin", IsImmuneToZombification: 1b, Team: "piglin", Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b, CustomName:"\"Jimmy\"", Attributes:[{Base:0d, Name:"generic.attack_damage"}], ArmorItems:[{Count:1,id:golden_boots, tag:{Damage:0, Enchantments:[{lvl:3, id:"depth_strider"}]}}]}
execute as @e[tag=Jim, limit=1] run function piglin_friend:setreturnpoint 
scoreboard objectives add piglin_friend dummy
execute unless score controlByVil piglin_friend matches 0..1 run scoreboard players add controlByVil piglin_friend 1
function piglin_friend:tpreturnpoint
function piglin_friend:gotoplayer
function piglin_friend:portalcooldown