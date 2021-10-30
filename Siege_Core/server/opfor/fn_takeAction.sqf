#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Decide whether the players should get some more action.
*
* Arguments:
* NONE
*
* Return Value:
* Take Action <BOOL>
*
* Example:
* call TWC_Siege_OPFOR_fnc_takeAction;
*/

private _enemySide = call TWC_Siege_OPFOR_fnc_enemySide;
private _enemyCount = {side _x isEqualTo _enemySide} count allUnits;

private _scaleFactor = call TWC_Siege_OPFOR_fnc_getScale;

!TWC_Siege_enemiesNearBase && (_enemyCount < ceil _scaleFactor * 20);