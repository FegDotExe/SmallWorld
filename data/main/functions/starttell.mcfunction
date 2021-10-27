#The text displayed in the start menu

execute as @s run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @s run tellraw @a ["",{"score":{"name":"@e[type=armor_stand,name='SMWmarker']","objective":"worldSize"}}]
execute as @s run tellraw @a {"text":"\n"}
execute as @s run tellraw @a {"text":"START","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,name='SMWmarker'] at @s run function main:start"}}