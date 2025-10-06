# UUID to String
要素数4の整数配列で記述されたUUIDを文字列に変換するデータパックです
## 使い方
文字列に変換したいUUIDを`uuid_to_string: UUID`にセットして`uuid_to_string:string/to_string`を実行するだけ!!  
返還後のUUIDは`uuid_to_string: UUIDStr`に格納されます  
```
data modify storage uuid_to_string: UUID set from entity @s UUID
function uuid_to_string:string/to_string
data get storage uuid_to_string: UUIDStr
```