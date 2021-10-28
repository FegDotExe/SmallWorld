#Executed every game tick as a player who holds a clock in its hand; is used to show how many minutes are left until the next bonus
scoreboard players operation @s playerTimerLeft = @s playerTimerBonus
scoreboard players operation @s playerTimerLeft -= @s playerTimer
scoreboard players operation @s playerTimerLeft /= @e[type=armor_stand,name="SMWmarker",limit=1] constant20
scoreboard players operation @s playerTimerLeft /= @e[type=armor_stand,name="SMWmarker",limit=1] constant60

title @s actionbar [{"score":{"name":"@s","objective":"playerTimerLeft"}},{"text": " minutes until next bonus"}]