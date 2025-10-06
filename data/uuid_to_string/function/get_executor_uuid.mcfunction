## Copyright (c) 2025 ろろ (https://roro.ro)
## This software is released under the MIT License, see LICENSE.

data modify storage uuid_to_string: UUID set from entity @s UUID
function uuid_to_string:string/to_string
function uuid_to_string:say with storage uuid_to_string: