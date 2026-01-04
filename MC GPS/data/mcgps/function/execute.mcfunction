###
tellraw @a ["Located Village : [",{"score":{"name":"calc","objective":"x"}},"],[",{"score":{"name":"calc","objective":"z"}},"] - ",{"text":"Teleport There?","bold":true,"color":"#5d36c9","click_event":{"action":"run_command","command":"/trigger mcgps_trigger1 set 1"},"hover_event":{"action":"show_text","value":"Click me to teleport!"}}]
