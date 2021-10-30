#include "..\..\includes\script_component.hpp"

params ["_spawnPos"];

private _tanks = getArray (missionConfigfile >> "TWC_Siege" >> "opfor_tanks");
private _tankType = selectRandom _tanks;

private _enemySide = call TWC_Siege_OPFOR_fnc_enemySide;

private _group = createGroup [_enemySide, true];
private _spawnDirection = _spawnPos getDir TWC_Siege_basePos;

private _scale = call TWC_Siege_OPFOR_fnc_getScale;

for "_i" from 1 to ceil (_scale * 0.2) do {
	private _vehicleArray = [_spawnPos, _spawnDirection, _tankType, _enemySide] call BIS_fnc_spawnVehicle;
	_vehicleArray params ["_vehicle", "_crew", "_crewGroup"];
	_crew join _group;
};

private _basePos = TWC_Siege_basePos;

private _wp = _group addWaypoint [_basePos, 50];
_wp setWaypointType "SAD";
_wp setWaypointCombatMode "RED";
_wp setWaypointBehaviour "COMBAT";