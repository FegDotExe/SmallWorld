#This function is run as and at the armor stand, when its setupDone==2
execute as @a unless score @s hasStarted matches 1 run function smallworld:playerstart

execute as @a[scores={hasStarted=1}] run scoreboard players add @s playerTimer 1

#Clock
execute as @e[type=player,nbt={"SelectedItem":{"id":"minecraft:clock"}}] run function smallworld:customitems/clock
execute as @e[type=player,nbt={"Inventory":[{"Slot":-106b,"id":"minecraft:clock"}]}] run function smallworld:customitems/clock

#Crafting
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper run function smallworld:crafting/main

execute as @a if score @s playerTimer >= @s playerTimerBonus run function smallworld:getbonus

#TODO: add entity egg chest
#TODO: add lapis and redstone to chests