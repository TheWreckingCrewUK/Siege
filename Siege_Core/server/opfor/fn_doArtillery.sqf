#include "..\..\includes\script_component.hpp"

private _basePos = TWC_Siege_basePos;

private _scale = call TWC_Siege_OPFOR_fnc_getScale;

for "_i" from 1 to ceil (_scale * 3) do {
	_position = [_basePos, 300] call CBA_fnc_randPos;

	[{
		params ["_position", "_roundtype"];
		_roundtype createVehicle _position;
	}, [_position, "ModuleOrdnanceMortar_F"], 5 * _i] call CBA_fnc_waitAndExecute;
};