#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Determines the scaling to the amount of players and time.
*
* Arguments:
* NONE
*
* Return Value:
* Scale Factor <NUMBER>
*
* Example:
* call TWC_Siege_OPFOR_fnc_scaling;
*/

private _time = CBA_missionTime;

//Get all the players online
private _headlessClients = entities "HeadlessClient_F";
private _humanPlayers = allPlayers - _headlessClients;

//Scale goes up by 1 one for each half hour, by 1 for each 2 players
private _scale = (CBA_missionTime / 1800) * (0.5 * count _humanPlayers);

_scale