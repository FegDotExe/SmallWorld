#Executed as a player who right clicked on a totem of time
scoreboard players add @s playerTimer 9600
particle minecraft:enchant ~ ~ ~ 1 1 1 1 100 force @a
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~
item replace entity @s weapon.mainhand with air