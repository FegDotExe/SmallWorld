scoreboard objectives add worldSize dummy
scoreboard objectives add worldSizeTemp dummy

kill @e[type=armor_stand,name="SMWmarker"]
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,CustomName:'{"text":"SMWmarker"}'}

execute as @e[type=armor_stand,name="SMWmarker"] at @s run forceload add ~ ~
execute as @e[type=armor_stand,name="SMWmarker"] at @s run setworldspawn ~ ~ ~
execute as @e[type=armor_stand,name="SMWmarker"] at @s run worldborder center ~ ~

scoreboard players set @e[type=armor_stand,name="SMWmarker"] worldSize 16

scoreboard players set @e[type=armor_stand,name="SMWmarker"] setupDone 1