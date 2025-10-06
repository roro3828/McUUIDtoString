## Copyright (c) 2025 ろろ (https://roro.ro)
## This software is released under the MIT License, see LICENSE.

# uuid_to_string: UUID にセットされたUUIDを文字列にして uuid_to_string: UUIDStr にセットする

data modify storage uuid_to_string:tmp concat set value {text:"",add:""}

execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[0] 0.00001525878906
function uuid_to_string:string/16bit
execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[0] 1
function uuid_to_string:string/16bit
data modify storage uuid_to_string:tmp concat.add set value "-"
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat


execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[1] 0.00001525878906
function uuid_to_string:string/16bit
data modify storage uuid_to_string:tmp concat.add set value "-"
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat


execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[1] 1
function uuid_to_string:string/16bit
data modify storage uuid_to_string:tmp concat.add set value "-"
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat


execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[2] 0.00001525878906
function uuid_to_string:string/16bit
data modify storage uuid_to_string:tmp concat.add set value "-"
function uuid_to_string:string/concat with storage uuid_to_string:tmp concat


execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[2] 1
function uuid_to_string:string/16bit

execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[3] 0.00001525878906
function uuid_to_string:string/16bit
execute store result score #UUID16bit uuid_to_string.UUID run data get storage uuid_to_string: UUID[3] 1
function uuid_to_string:string/16bit


data modify storage uuid_to_string: UUIDStr set from storage uuid_to_string:tmp concat.text