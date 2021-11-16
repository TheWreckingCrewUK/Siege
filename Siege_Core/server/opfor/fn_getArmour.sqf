#include "..\..\includes\script_component.hpp"

private _tanks = getArray (missionConfigfile >> "TWC_Siege" >> "opfor_tanks");
if (count _tanks < 1) exitWith {false};

private _return = if (random 1 > 0.8) then {true} else {false};

_return