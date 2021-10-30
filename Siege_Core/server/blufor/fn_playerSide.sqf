#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Gets the player side from mission config.
*
* Arguments:
* NONE
*
* Return Value:
* Player Side <SIDE>
*
* Example:
* call TWC_Siege_BLUFOR_fnc_playerSide;
*/

private _playerside = getNumber (missionConfigFile >> "TWC_Siege" >> "playerSide");
_playerside = _playerside call BIS_fnc_sideType;
_playerside