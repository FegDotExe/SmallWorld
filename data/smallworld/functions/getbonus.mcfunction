#Executed as the player who is going to get the bonus, when its playerTimer>=playerTimerBonus
scoreboard players set @s playerTimer 0
scoreboard players add @s bonusReceived 1

#Set the next max score
scoreboard players operation @s playerTimerBonus = @e[type=armor_stand,name="SMWmarker"] playerTimerOff
scoreboard players operation @s playerTimerBonus *= @s bonusReceived
scoreboard players operation @s playerTimerBonus += @e[type=armor_stand,name="SMWmarker"] playerTimerBonus

execute as @s unless score @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMax matches -1 if score @s playerTimerBonus > @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMax run scoreboard players operation @s playerTimerBonus = @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMax
execute as @s unless score @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMax matches -1 if score @s playerTimerBonus < @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMin run scoreboard players operation @s playerTimerBonus = @e[type=armor_stand,name="SMWmarker",limit=1] playerTimerMin

give @s chest{BlockEntityTag:{LootTable:"smallworld:chests/bonus"},display:{Name:'{"text": "Bonus chest","italic": false,"color": "dark_purple"}',Lore:['{"text":"The one and only","italic":false,"color": "gray"}','{"text":"bonus chest!","italic":false,"color": "gray"}']}}