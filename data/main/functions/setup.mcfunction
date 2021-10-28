scoreboard objectives add worldSize dummy
scoreboard objectives add worldSizeTemp dummy
scoreboard objectives add hasStarted dummy

scoreboard objectives add playerTimer dummy
#Local; A timer which determines how many ticks the player has played
scoreboard objectives add bonusReceived dummy
#Local; Determines how many times a player has received a bonus in order to calculate its offset
scoreboard objectives add playerTimerBonus dummy
#Global: The amount of ticks after which a chest should be given to a player, without offset; Local: the amount of ticks etc but with offset and min/max applied
scoreboard objectives add playerTimerOff dummy
#Global; A timer offset, added each time
scoreboard objectives add playerTimerMax dummy
#Global; The maximum value the timer can get to; set to -1 in order to not have a value
scoreboard objectives add playerTimerMin dummy
#Global; The minimum value the timer can get to; set to -1 in order to not have a value
scoreboard objectives add playerTimerLeft dummy
#Local; it's the time left until next bonus, in minutes, calculated in smallworld:customitems/clock
scoreboard objectives add constant20 dummy
scoreboard objectives add constant60 dummy

kill @e[type=armor_stand,name="SMWmarker"]
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,CustomName:'{"text":"SMWmarker"}'}

execute as @e[type=armor_stand,name="SMWmarker"] at @s align xyz run forceload add ~ ~
execute as @e[type=armor_stand,name="SMWmarker"] at @s align xyz run setworldspawn ~ ~ ~
execute as @e[type=armor_stand,name="SMWmarker"] at @s align xyz run worldborder center ~ ~

#Set scores
scoreboard players set @e[type=armor_stand,name="SMWmarker"] worldSize 16
scoreboard players set @e[type=armor_stand,name="SMWmarker"] playerTimerBonus 72000
scoreboard players set @e[type=armor_stand,name="SMWmarker"] playerTimerOff 3000
scoreboard players set @e[type=armor_stand,name="SMWmarker"] playerTimerMax -1
scoreboard players set @e[type=armor_stand,name="SMWmarker"] playerTimerMin -1

scoreboard players set @e[type=armor_stand,name="SMWmarker"] constant20 20
scoreboard players set @e[type=armor_stand,name="SMWmarker"] constant60 60

scoreboard players set @e[type=armor_stand,name="SMWmarker"] setupDone 1