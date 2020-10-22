#Switchs piglin to wandering mode 
#In wandering mode, the piglin will not go further than 160 blocks from the return point

scoreboard players set followMode piglin_friend 0
schedule clear piglin_friend:followingpiglin
function piglin_friend:gotoplayer
function piglin_friend:setreturnpoint