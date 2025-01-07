execute if score S_x float_emul.std <= S_y float_emul.std run return run function float_emul:private/sub_call_1

function float_emul:private/x_flip
scoreboard players operation __temp__ float_emul.std = x float_emul.std 
scoreboard players operation x float_emul.std = y float_emul.std 
scoreboard players operation y float_emul.std = __temp__ float_emul.std 

function float_emul:private/_sub