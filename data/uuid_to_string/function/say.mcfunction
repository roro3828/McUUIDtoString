## Copyright (c) 2025 ろろ (https://roro.ro)
## This software is released under the MIT License, see LICENSE.

$say My UUID is: $(UUID)
$say UUIDStr is: $(UUIDStr)

$execute unless entity $(UUIDStr) run say test failed
$execute if entity $(UUIDStr) run say test success