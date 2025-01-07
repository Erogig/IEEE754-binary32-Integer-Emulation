
scoreboard players operation i float_emul.std = x float_emul.std
scoreboard players operation i float_emul.std -= y float_emul.std
scoreboard players operation i float_emul.std /= 2^22 float_emul.const


scoreboard players operation M_x float_emul.std = x float_emul.std
scoreboard players operation M_x float_emul.std %= 2^22 float_emul.const
scoreboard players operation y float_emul.std %= 2^22 float_emul.const
scoreboard players operation M_x float_emul.std += 2^22 float_emul.const
scoreboard players operation y float_emul.std += 2^22 float_emul.const

function float_emul:private/i

scoreboard players operation M_x float_emul.std -= y float_emul.std 
function float_emul:private/k
scoreboard players operation M_x float_emul.std %= 2^22 float_emul.const

scoreboard players operation x float_emul.std /= 2^22 float_emul.const
scoreboard players operation x float_emul.std *= 2^22 float_emul.const

scoreboard players operation x float_emul.std += M_x float_emul.std

execute store result storage float_emul.__temp__:std result int 1 run scoreboard players get x float_emul.std