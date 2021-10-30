#include "..\..\includes\script_component.hpp"

if (isDedicated) exitWith {DEBUG_LOG("BLUFOR Client Handlers do not need to be called on server.")};

//Eventhandlers for updating supply.
["TWC_Siege_Actions_getSupply", {
	TWC_Siege_supplyBLUFOR = _this;
}] call CBA_fnc_addEventHandler;