#Run as and at a player which is standing on top of a dropper and has a craftingPower>=4
#Ok to test if slots are empty I should run an unless on slots, like unless dropper{Items:[{Slot:0b}]} runs only if slot 0 is empty

scoreboard players reset @s[scores={craftingRecipe=0..}] craftingRecipe

#Detect recipes
#0:Time clock
execute as @s[scores={craftingPower=4..}] unless block ~ ~-1 ~ dropper{Items:[{Slot:0b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:1b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:2b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:3b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:5b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:6b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:7b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:8b}]} if block ~ ~-1 ~ dropper{Items:[{Slot:4b,id:"minecraft:clock"}]} run scoreboard players set @s craftingRecipe 0
execute as @s[scores={craftingPower=4..7}] unless block ~ ~-1 ~ dropper{Items:[{Slot:0b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:2b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:6b}]} unless block ~ ~-1 ~ dropper{Items:[{Slot:8b}]} if block ~ ~-1 ~ dropper{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:emerald"},{Slot:4b,id:"minecraft:emerald"},{Slot:5b,id:"minecraft:emerald"},{Slot:7b,id:"minecraft:emerald"}]} run scoreboard players set @s craftingRecipe 1

#Particle
execute as @s[scores={craftingPower=4..,craftingRecipe=0..}] at @s run particle minecraft:enchant ~ ~-1 ~ 1 1 1 1 1 force @a 

scoreboard players set @s[scores={sneakTime=1..}] craftingActive 1

#Subtract items
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:0b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:0b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:1b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:1b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:2b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:2b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:3b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:3b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:4b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:4b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:5b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:5b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:6b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:6b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:7b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:7b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result score @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive run data get block ~ ~-1 ~ Items[{Slot:8b}].Count 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] run scoreboard players remove @e[type=armor_stand,name="SMWmarker",limit=1,scores={craftingActive=1..}] craftingActive 1
execute as @s[scores={craftingPower=4..,craftingRecipe=0..,craftingActive=1}] at @s store result block ~ ~-1 ~ Items[{Slot:8b}].Count int 1 run scoreboard players get @e[type=armor_stand,name="SMWmarker",limit=1] craftingActive

#Give results
execute as @s[scores={craftingPower=4..,craftingRecipe=0,craftingActive=1}] run give @s minecraft:clock{Smart:1b,display:{Name:'{"text": "Omniscient clock","italic": false,"color": "dark_purple"}',Lore:['{"text":"Hold this clock","italic":false,"color": "gray"}','{"text":"in your hand to","italic":false,"color": "gray"}','{"text":"see the sands of time!","italic":false,"color": "gray"}']}}
execute as @s[scores={craftingPower=4..,craftingRecipe=1,craftingActive=1}] run give @s minecraft:carrot_on_a_stick{Smart:1b,display:{Name:'{"text": "Totem of time I","italic": false,"color": "dark_purple"}',Lore:['{"text":"A weak totem which","italic":false,"color": "gray"}','{"text":"wields the chains","italic":false,"color": "gray"}','{"text":"of time!","italic":false,"color": "gray"}']},CustomModelData:1,TimeTotem:1b}

scoreboard players set @s craftingActive 0

#TODO: change when more complex crafters begin to be required
execute as @s[scores={craftingPower=..4}] run data merge block ~ ~-1 ~ {CustomName:'{"text":"Basic crafter"}'}
execute as @s[scores={craftingPower=5}] run data merge block ~ ~-1 ~ {CustomName:'{"text":"Basic crafter+"}'}
execute as @s[scores={craftingPower=6..}] run data merge block ~ ~-1 ~ {CustomName:'{"text":"Basic crafter++"}'}