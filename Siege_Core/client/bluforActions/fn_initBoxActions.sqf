#include "..\..\includes\script_component.hpp"

//Create ammobox categories
private _action = [
	"TWC_Siege_Actions_spawnInfantryAmmo",
	"Spawn Infantry Ammo",
	"",
	{true},
	{},
	{}
] call ace_interact_menu_fnc_createAction;
[TWC_Siege_SpawnSign2, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [
	"TWC_Siege_Actions_spawnVehicleAmmo",
	"Spawn Vehicle Ammo",
	"",
	{true},
	{},
	{}
] call ace_interact_menu_fnc_createAction;
[TWC_Siege_SpawnSign2, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

//Add the box spawning actions to their subcategories
private _boxes = "true" configClasses (missionConfigFile >> "CfgAmmoboxes");
{
	private _box = configName _x;
	private _name = getText (missionConfigFile >> "CfgAmmoboxes" >> _box >> "displayName");
	private _cost = str getNumber (missionConfigFile >> "CfgAmmoboxes" >> _box >> "cost");
	private _subcategory = getText (missionConfigFile >> "CfgAmmoboxes" >> _box >> "subcategory");
	private _action = [
		"TWC_Siege_Actions_spawnAmmo_" + _box,
		_name + " (" + _cost + ")",
		"",
		{_this call TWC_Siege_bluforActions_fnc_spawnAmmo},
		{_this call TWC_Siege_bluforActions_fnc_canSpawnAmmo},
		{},
		_box
	] call ace_interact_menu_fnc_createAction;
	[TWC_Siege_SpawnSign2, 0, ["ACE_MainActions", _subcategory], _action] call ace_interact_menu_fnc_addActionToObject;
} forEach _boxes;