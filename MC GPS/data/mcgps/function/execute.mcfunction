### !!!FOR YOUR DATAPACK!!!
# Eveything in this file will run at the end of our locate function.
# Here I've made a simple example where the coordinates of our located village will be sent in the chat after it's found.
# Alongside this a clickable text piece to teleport people the village
tellraw @a ["Located Village : [",{"score":{"name":"mcgps_global","objective":"x"}},"],[",{"score":{"name":"mcgps_global","objective":"z"}},"] - ",{"text":"Teleport There?","bold":true,"color":"#5d36c9","click_event":{"action":"run_command","command":"/trigger mcgps_trigger1 set 1"},"hover_event":{"action":"show_text","value":"Click me to teleport!"}}]
