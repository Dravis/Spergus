/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EF633E9
/// @DnDArgument : "code" "itemCount = array_length(inventoryObj.items)$(13_10)$(13_10)if other.sprite_index == s_healthPotion$(13_10){$(13_10)	inventoryObj.items[itemCount] = "HealthPotion"$(13_10)}$(13_10) $(13_10)instance_destroy(other.id)"
itemCount = array_length(inventoryObj.items)

if other.sprite_index == s_healthPotion
{
	inventoryObj.items[itemCount] = "HealthPotion"
}
 
instance_destroy(other.id)