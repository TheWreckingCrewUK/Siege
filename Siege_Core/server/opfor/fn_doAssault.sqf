#include "..\..\includes\script_component.hpp"

params ["_spawnPos"];

private _section = getArray (missionConfigfile >> "TWC_Siege" >> "opfor_section");
private _enemySide = call TWC_Siege_OPFOR_fnc_enemySide;

private _basePos = TWC_Siege_basePos;
private _dir = _spawnPos getDir _basePos;

private _scale = call TWC_Siege_OPFOR_fnc_getScale;

for "_i" from 1 to ceil (_scale) do {
	private _pos = _spawnPos getPos [_i * 100, _dir + 90];
	private _group = [_pos, _enemySide, _section] call BIS_fnc_spawnGroup;
	
	private _wp = _group addWaypoint [_basePos, 50];
	_wp setWaypointType "SAD";
	_wp setWaypointCombatMode "RED";
	_wp setWaypointBehaviour "COMBAT";
};