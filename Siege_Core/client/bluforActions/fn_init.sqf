#include "..\..\includes\script_component.hpp"

if (isDedicated) exitWith {DEBUG_LOG("BLUFOR Client Actions do not need to be called on server.")};

TWC_Siege_supplyBLUFOR = getNumber (missionConfigfile >> "TWC_Siege" >> "bluforSupply");

//Action to check BLUFOR Supply.
private _action = [
	"TWC_Siege_Actions_getSupply",
	"Check Supply",
	"",
	{_this call TWC_Siege_bluforActions_fnc_getSupply},
	{true}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;

//Action to delete boxes and vehicles in base.
TWC_Siege_Actions_delete = [
	"TWC_Siege_Actions_delete",
	"Return to Base",
	"",
	{deleteVehicle _target},
	{alive _target && (_target distance TWC_Siege_SpawnSign2) < 50}
] call ace_interact_menu_fnc_createAction;

//Add actions for all the boxes in config
call TWC_Siege_bluforActions_fnc_initBoxActions;