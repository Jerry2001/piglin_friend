#Switchs piglin to following mode

scoreboard players set followMode piglin_friend 1
schedule clear piglin_friend:gotoplayer
function piglin_friend:followingpiglin