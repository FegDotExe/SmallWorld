scoreboard objectives add worldSize dummy
scoreboard objectives add worldSizeTemp dummy
scoreboard objectives add hasStarted dummy

#Timer
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

#Crafting
scoreboard objectives add craftingPower dummy
#Local; is the power of a custom dropper crafter
scoreboard objectives add craftingRecipe dummy
#Local; it's the id of the recipe which is going to be crafted
scoreboard objectives add craftingActive dummy
#Local: if the player has decided to craft the item; global: the amount of items in a slot which is being moved
scoreboard objectives add sneakTime minecraft.custom:sneak_time

#Custom items
scoreboard objectives add clickCarrotStick minecraft.used:carrot_on_a_stick

#Buttons and random triggers
scoreboard objectives add startButton trigger
#Is more than one if a player has pressed the start button
scoreboard objectives add barrierModifier trigger
#Is used in the first tell to modify the barrier

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