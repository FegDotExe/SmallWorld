#This function is run as and at the armor stand, when its setupDone==2
execute as @a unless score @s hasStarted matches 1 run function smallworld:playerstart

execute as @a[scores={hasStarted=1}] run scoreboard players add @s playerTimer 1

#Clock
execute as @e[type=player,nbt={"SelectedItem":{"id":"minecraft:clock",tag:{"Smart":1b}}}] run function smallworld:customitems/clock
execute as @e[type=player,nbt={"Inventory":[{"Slot":-106b,"id":"minecraft:clock",tag:{"Smart":1b}}]}] run function smallworld:customitems/clock
#Time totem
execute as @e[type=player,nbt={"SelectedItem":{"id":"minecraft:carrot_on_a_stick",tag:{"TimeTotem":1b}}},scores={clickCarrotStick=1..}] at @s run function smallworld:customitems/timetotem


#Crafting
execute as @a[scores={craftingPower=1..}] run scoreboard players reset @s craftingPower
#Tier one
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~1 ~-1 ~ #smallworld:tierone run scoreboard players add @s craftingPower 1
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~-1 ~-1 ~ #smallworld:tierone run scoreboard players add @s craftingPower 1
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~1 #smallworld:tierone run scoreboard players add @s craftingPower 1
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~-1 #smallworld:tierone run scoreboard players add @s craftingPower 1
#Tier two
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~1 ~-1 ~ #smallworld:tiertwo run scoreboard players add @s craftingPower 2
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~-1 ~-1 ~ #smallworld:tiertwo run scoreboard players add @s craftingPower 2
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~1 #smallworld:tiertwo run scoreboard players add @s craftingPower 2
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~-1 #smallworld:tiertwo run scoreboard players add @s craftingPower 2
#Tier three
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~1 ~-1 ~ #smallworld:tierthree run scoreboard players add @s craftingPower 3
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~-1 ~-1 ~ #smallworld:tierthree run scoreboard players add @s craftingPower 3
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~1 #smallworld:tierthree run scoreboard players add @s craftingPower 3
execute as @e[type=player] at @s if block ~ ~-1 ~ dropper if block ~ ~-1 ~-1 #smallworld:tierthree run scoreboard players add @s craftingPower 3
execute as @e[type=player,scores={craftingPower=0..}] at @s run function smallworld:crafting/main


execute as @a if score @s playerTimer >= @s playerTimerBonus run function smallworld:getbonus

execute as @a[scores={sneakTime=1..}] run scoreboard players reset @s sneakTime
execute as @a[scores={clickCarrotStick=1..}] run scoreboard players reset @s clickCarrotStick

#TODO: add entity egg chest
#TODO: add lapis and redstone to chests
#TODO: add item spawner for item farms
#TODO: add disenchanter
#TODO: add recipe for villagers lol