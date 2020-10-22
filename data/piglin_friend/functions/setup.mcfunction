scoreboard players enable @a pigreturn
scoreboard objectives add piglin_friend dummy
team add piglin
scoreboard players set 12541 piglin_friend 12541
function piglin_friend:spawnitem
execute unless entity @e[tag=leader] as @p at @s run summon minecraft:villager ~ ~ ~ {Tags:[leader], PersistenceRequired: 1b, Invulnerable:1b, Silent:1b, VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:desert"}}
execute if score piglinSan piglin_friend matches 1 unless entity @e[tag=Jim] as @e[tag=leader, limit=1] at @s run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification: 1b, Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b, CustomName:"\"Jimmy\"", Attributes:[{Base:0d, Name:"generic.attack_damage"}], ArmorItems:[{Count:1,id:golden_boots, tag:{Damage:0, Enchantments:[{lvl:3, id:"depth_strider"}]}}],ArmorItems: [{}, {}, {}, {id: "minecraft:player_head",Count: 1b,tag: {SkullOwner: {Id: [I; 2060941217, 1483885932, -1178037704, 1507102007],Properties: {textures: [{Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwMTk2OTQ2NjczMCwKICAicHJvZmlsZUlkIiA6ICI3YWQ3NzdhMTU4NzI0ZDZjYjljODkyMzg1OWQ0OGQzNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJKZXJyeU5nbyIsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yYjUxMjk4NDZjYzBhYTYwODYzNmI5ZDFkODNlNTZhNjhlN2RkMWY2NmU5YzkyZWQ4MDdmMGM0ZjdkZmM1MmMwIgogICAgfQogIH0KfQ=="}]}}}}], Inventory: [{id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}], HandItems: [{id: "minecraft:poppy", Count: 1b}, {}]}
execute if score piglinSan piglin_friend matches 0 unless entity @e[tag=Jim] as @e[tag=leader, limit=1] at @s run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification: 1b, Tags:[Jim], PersistenceRequired: 1b, Invulnerable:1b, CustomName:"\"Jimmy\"", Attributes:[{Base:0d, Name:"generic.attack_damage"}], ArmorItems:[{Count:1,id:golden_boots, tag:{Damage:0, Enchantments:[{lvl:3, id:"depth_strider"}]}}], Inventory: [{id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}, {id: "minecraft:dirt", Count: 64b}], HandItems: [{id: "minecraft:poppy", Count: 1b}, {}]}
team join piglin @e[tag= Jim, limit=1]
team join piglin @e[tag= leader, limit=1]
team modify piglin collisionRule never
execute as @e[tag=Jim, limit=1] unless entity @e[tag=return] run function piglin_friend:setreturnpoint 
execute unless score followMode piglin_friend matches 0..1 run scoreboard players set followMode piglin_friend 0
scoreboard players set canDetectMob piglin_friend 1
scoreboard players set 1 piglin_friend 1
scoreboard players set canGiveItem piglin_friend 1
execute unless score piglinSan piglin_friend matches 0..1 run scoreboard players set piglinSan piglin_friend 0
execute unless score controlByVil piglin_friend matches 0..1 run scoreboard players add controlByVil piglin_friend 1
function piglin_friend:tpreturnpoint
function piglin_friend:gotoplayer
function piglin_friend:portalcooldown
function piglin_friend:detectmob
