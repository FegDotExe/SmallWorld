#Functions run when a new player joins the game, run as that player
give @s chest{BlockEntityTag:{LootTable:"smallworld:chests/starter"},display:{Name:'{"text": "Starter chest","italic": false,"color": "dark_purple"}',Lore:['{"text":"The one and only","italic":false,"color": "gray"}','{"text":"chest to get","italic":false,"color": "gray"}','{"text":"you started!","italic":false,"color": "gray"}']}}
scoreboard players set @s hasStarted 1