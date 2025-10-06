## Copyright (c) 2025 ろろ (https://roro.ro)
## This software is released under the MIT License, see LICENSE.

#UUID16bitにセットされている16bitの値を16進数に変換する

execute if score #UUID16bit uuid_to_string.UUID matches ..-1 run scoreboard players operation #UUID16bit uuid_to_string.UUID += #-2147483648 uuid_to_string.Number
scoreboard players operation #UUID16bit uuid_to_string.UUID %= #65536 uuid_to_string.Number

execute store result storage uuid_to_string:tmp 8bit int 0.00390625 run scoreboard players get #UUID16bit uuid_to_string.UUID
scoreboard players operation #UUID16bit uuid_to_string.UUID *= #256 uuid_to_string.Number
scoreboard players operation #UUID16bit uuid_to_string.UUID %= #65536 uuid_to_string.Number
function uuid_to_string:string/tohex with storage uuid_to_string:tmp
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat

execute store result storage uuid_to_string:tmp 8bit int 0.00390625 run scoreboard players get #UUID16bit uuid_to_string.UUID
function uuid_to_string:string/tohex with storage uuid_to_string:tmp
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat