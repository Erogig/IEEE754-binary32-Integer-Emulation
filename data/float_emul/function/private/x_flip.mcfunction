
execute if score x float_emul.std >= 2^30 float_emul.const run return run scoreboard players operation y float_emul.std -= 2^30 float_emul.const
execute unless score x float_emul.std >= 2^30 float_emul.const run return run scoreboard players operation y float_emul.std += 2^30 float_emul.const