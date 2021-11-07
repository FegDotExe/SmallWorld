#The text displayed in the start menu

#Enable triggers
scoreboard players enable @a[scores={setupDone=1}] startButton
scoreboard players enable @a[scores={setupDone=1}] barrierModifier

execute as @s run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#TODO: add timer things
execute as @s run tellraw @a ["",{"text":"Ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerBonus"}}]
execute as @s run tellraw @a ["",{"text":"Offset for each bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerOff"}}]
execute as @s run tellraw @a ["",{"text":"Minimum ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerMin"}}]
execute as @s run tellraw @a ["",{"text":"Maximum ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerMax"}}]
execute as @s run tellraw @a {"text":"\n"}
execute as @s run tellraw @a ["",{"text":"◀","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger barrierModifier set -16"}},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"worldSize"}},{"text":"▶","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger barrierModifier set 16"}}]
execute as @s run tellraw @a {"text":"\n"}
execute as @s run tellraw @a {"text":"START","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger startButton"}}

#Do triggers stuff
execute as @a[sort=random,limit=1] unless score @s barrierModifier matches 0 run scoreboard players operation @e[type=armor_stand,name="SMWmarker",limit=1] worldSize += @s barrierModifier
execute as @a[sort=random,limit=1,scores={startButton=1..}] at @s run execute as @e[type=armor_stand,name="SMWmarker"] at @s run function main:start

#Set scores to limit values
execute as @a[sort=random,limit=1] unless score @s barrierModifier matches 0 run scoreboard players reset @s barrierModifier
scoreboard players set @e[type=armor_stand,name="SMWmarker",scores={worldSize=..15}] worldSize 16