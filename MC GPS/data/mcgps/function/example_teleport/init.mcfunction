scoreboard objectives add mcgps_trigger trigger
scoreboard objectives add mcgps_trigger1 trigger
scoreboard players enable TheFantasticSoap mcgps_trigger
scoreboard players enable TheFantasticSoap mcgps_trigger1

gamerule sendCommandFeedback false
give @a written_book[written_book_content={pages:[[[{"text":"Click me to locate the nearest plains village!","bold":1b,"color":"#3455a2","click_event":{"action":"run_command","command":"/trigger mcgps_trigger set 1"},"hover_event":{"action":"show_text","value":"Click to locate."}}]]],title:"Book Title",author:TheFantasticSoap,generation:0},custom_name=[{"text":"MC GPS","bold":1b,"italic":0b,"color":"green"}],lore=[[{"text":"Welcome to MC GPS - Please check out ","italic":0b},{"text":"https://github.com/thefantasticsoap/MC-GPS ","italic":0b,"color":"yellow"}],[{"text":"For more help!\t\t","italic":0b}]]]
