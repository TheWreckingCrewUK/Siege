#include "..\..\includes\script_component.hpp"
/*
* Author: [TWC] Rik
* Modifies the current score and checks whether the conditions for victory are met.
*
* Arguments:
* 0: Score Change <NUMBER>
*
* Return Value:
* NONE
*
* Example:
* [1] call TWC_Siege_Finish_fnc_modifyScore;
*/

params ["_scoreChange"];

private _score = TWC_Siege_Finish_score;

_score = (_score + _scoreChange) min 300;

//Add supply when the score has gone up by 10
if (_scoreChange > 0 && _score % 10 isEqualTo 0) then {
	[10] call TWC_Siege_BLUFOR_fnc_updateSupply
};

if (_score >= 300) then {
	"Victory" call BIS_fnc_endMissionServer;
} else {
	TWC_Siege_Finish_score = _score;
};