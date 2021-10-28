#The text displayed in the start menu

execute as @s run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
#TODO: add timer things
execute as @s run tellraw @a ["",{"text":"Ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerBonus"}}]
execute as @s run tellraw @a ["",{"text":"Offset for each bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerOff"}}]
execute as @s run tellraw @a ["",{"text":"Minimum ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerMin"}}]
execute as @s run tellraw @a ["",{"text":"Maximum ticks for bonus: "},{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"playerTimerMax"}}]
execute as @s run tellraw @a {"text":"\n"}
execute as @s run tellraw @a ["",{"score":{"name":"@e[type=armor_stand,name='SMWmarker',limit=1]","objective":"worldSize"}}]
execute as @s run tellraw @a {"text":"\n"}
execute as @s run tellraw @a {"text":"START","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,name='SMWmarker'] at @s run function main:start"}}

#Set scores to limit values
