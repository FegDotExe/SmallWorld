scoreboard objectives add setupDone dummy

#If the armor stand exists, all null scores are set to 1
execute as @e[type=armor_stand,name="SMWmarker"] run execute as @a unless score @s setupDone matches 2 run scoreboard players operation @s setupDone = @e[type=armor_stand,name="SMWmarker",limit=1] setupDone

execute as @e[type=player,limit=1,sort=random] unless score @s setupDone matches 1..2 as @s at @s run function main:setup
#TODO: add a tellraw to start the game
execute as @e[type=player,limit=1,scores={setupDone=1}] run execute as @e[type=armor_stand,name="SMWmarker"] at @s run function main:starttell