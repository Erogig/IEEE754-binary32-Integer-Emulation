

execute store result score x float_emul.std run data get storage float_emul.__temp__:std x
execute store result score y float_emul.std run data get storage float_emul.__temp__:std y

execute if score x float_emul.std = y float_emul.std run return run data modify storage float_emul.__temp__:std result set value 0

scoreboard players operation S_x float_emul.std = x float_emul.std
scoreboard players operation S_y float_emul.std = y float_emul.std

scoreboard players operation S_x float_emul.std /= 2^30 float_emul.const 
scoreboard players operation S_y float_emul.std /= 2^30 float_emul.const 

execute unless score S_x float_emul.std = S_y float_emul.std run return run function float_emul:private/sub_nested_add_call

function float_emul:private/_sub

