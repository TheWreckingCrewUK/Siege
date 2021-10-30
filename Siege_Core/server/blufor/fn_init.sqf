#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Initialises the BLUFOR variables.
*
* Arguments:
* NONE
*
* Return Value:
* NONE
*
* Example:
* call TWC_Siege_BLUFOR_fnc_init;
*/

private _enemySide = call TWC_Siege_OPFOR_fnc_enemySide;

TWC_Siege_supplyBLUFOR = getNumber (missionConfigfile >> "TWC_Siege" >> "bluforSupply");

//Select a random base from predefined base list in the description.ext
private _possibleBases = getArray (missionConfigfile >> "TWC_Siege" >> "bases");
private _base = selectRandom _possibleBases;
TWC_Siege_basePos = getMarkerPos _base;

TWC_Siege_enemiesNearBase = false;

//Initialise a trigger that detects when there's not many enemies near base
private _trigger = createTrigger ["EmptyDetector", TWC_Siege_basePos, false];
_trigger setTriggerActivation [str _enemySide, "PRESENT", true];
_trigger setTriggerStatements [
	"!TWC_Siege_enemiesNearBase && (count thisList) > 6;",
	"TWC_Siege_enemiesNearBase = true;",
	"TWC_Siege_enemiesNearBase = false;"
];

//Adds the possible spawn location and markers it for the players
[missionNamespace, TWC_Siege_basePos, markerText _base] call BIS_fnc_addRespawnPosition;
_base setMarkerTypeLocal "hd_flag";
_base setMarkerColor "colorBLUFOR";

//Set the base spawning objects at the base
TWC_Siege_SpawnPad setPos TWC_Siege_basePos;
TWC_Siege_SpawnSign1 setPos (TWC_Siege_basePos getPos [4, 0]);
TWC_Siege_SpawnSign2 setPos (TWC_Siege_basePos getPos [4, 90]);
TWC_Siege_SpawnSign1 setDir ((TWC_Siege_SpawnSign1 getDir TWC_Siege_SpawnPad) + 180);
TWC_Siege_SpawnSign2 setDir ((TWC_Siege_SpawnSign2 getDir TWC_Siege_SpawnPad) + 180);