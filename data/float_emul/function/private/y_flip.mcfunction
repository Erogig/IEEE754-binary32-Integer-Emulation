
execute if score y float_emul.std >= 2^30 float_emul.const run return run scoreboard players operation y float_emul.std -= 2^30 float_emul.const
execute unless score y float_emul.std >= 2^30 float_emul.const run return run scoreboard players operation y float_emul.std += 2^30 float_emul.const