#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Fetches a direction for the attack to come from.
*
* Arguments:
* 0: Base Position <ARRAY>
*
* Return Value:
* Spawn Position <ARRAY>
*
* Example:
* [_basePos] call TWC_Siege_OPFOR_fnc_direction;
*/

params ["_basePos"];

private _spawnDistance = getNumber (missionConfigFile >> "TWC_Siege" >> "spawnDistance");

private _spawnPos = [[[_basePos, _spawnDistance]], ["water"]] call BIS_fnc_randomPos;

_spawnPos