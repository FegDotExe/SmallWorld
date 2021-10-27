#A loop to build the correctly sized barrier

worldborder add 1 0
scoreboard players remove @s worldSizeTemp 1
execute as @s[scores={worldSizeTemp=1..}] at @s run function main:barrierloop