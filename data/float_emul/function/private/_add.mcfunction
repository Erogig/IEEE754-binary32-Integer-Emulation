
execute if score y float_emul.std >= x float_emul.std run scoreboard players operation y float_emul.std >< x float_emul.std 

scoreboard players operation i float_emul.std = x float_emul.std
scoreboard players operation i float_emul.std -= y float_emul.std
scoreboard players operation i float_emul.std /= 2^22 float_emul.const


scoreboard players operation M_x float_emul.std = x float_emul.std
scoreboard players operation M_x float_emul.std %= 2^22 float_emul.const
scoreboard players operation y float_emul.std %= 2^22 float_emul.const
scoreboard players operation M_x float_emul.std += 2^22 float_emul.const
scoreboard players operation y float_emul.std += 2^22 float_emul.const

function float_emul:private/i

scoreboard players operation M_x float_emul.std += y float_emul.std
execute if score M_x float_emul.std matches 4194304.. run function float_emul:private/exponent_adder

scoreboard players operation M_x float_emul.std %= 2^22 float_emul.const

scoreboard players operation x float_emul.std /= 2^22 float_emul.const
scoreboard players operation x float_emul.std *= 2^22 float_emul.const

scoreboard players operation x float_emul.std += M_x float_emul.std

execute store result storage float_emul.__temp__:std result int 1 run scoreboard players get x float_emul.std