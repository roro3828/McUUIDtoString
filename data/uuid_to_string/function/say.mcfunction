$say My UUID is: $(UUID)
$say UUIDStr is: $(UUIDStr)

$execute unless entity $(UUIDStr) run say test failed
$execute if entity $(UUIDStr) run say test success