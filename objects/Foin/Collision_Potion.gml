/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EF633E9
/// @DnDArgument : "code" "itemCount = array_length(inventoryObj.items) $(13_10)inventoryObj.items[itemCount] = "HealthPotion"$(13_10)instance_destroy(other.id)"
itemCount = array_length(inventoryObj.items) 
inventoryObj.items[itemCount] = "HealthPotion"
instance_destroy(other.id)