#Executed as and at the armor stand
scoreboard players operation @s worldSizeTemp = @s worldSize

worldborder set 1 0
scoreboard players remove @s worldSizeTemp 1
execute as @s[scores={worldSizeTemp=1..}] at @s run function main:barrierloop

#Reset scores
scoreboard players reset @a hasStarted
scoreboard players reset @a playerTimer

scoreboard players set @s setupDone 2