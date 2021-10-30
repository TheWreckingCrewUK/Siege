#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Initialises the OPFOR FSM and variables.
*
* Arguments:
* NONE
*
* Return Value:
* NONE
*
* Example:
* call TWC_Siege_OPFOR_fnc_init;
*/

[{[] execFSM "Siege_Core\server\OPFOR\commanderLoop.fsm"}, [], 30] call CBA_fnc_waitAndExecute;

private _playerSide = call TWC_Siege_BLUFOR_fnc_playerSide;
private _enemySide = call TWC_Siege_OPFOR_fnc_enemySide;

_playerSide setFriend [_enemySide, 0];
_enemySide setFriend [_playerSide, 0];