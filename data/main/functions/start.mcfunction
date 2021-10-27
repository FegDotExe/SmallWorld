#Executed as and at the armor stand
scoreboard players operation @s worldSizeTemp = @s worldSize

worldborder set 1 0
scoreboard players remove @s worldSizeTemp 1
execute as @s[scores={worldSizeTemp=1..}] at @s run function main:barrierloop

scoreboard players set @s setupDone 2