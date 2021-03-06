/*
* Author: [TWC] Bosenator
* IED Factory Objective spawner.
*
* Arguments:
* <NONE>
*
* Return Value:
* <NONE>
*
* Example:
* <TBD>
*
* Public: No
*/
params ["_objType"];

private _IEDFactory_spawnFactory = compile preprocessFileLineNumbers "Insurgency_Core\server\sys_objectives\IEDFactory\IEDFactory_spawnBuilding.sqf";

missionNamespace setVariable ["IEDFactoryLastCompleted", time, false];

// Find location that's at least a km from last position and is in the opening
// Store that position, once found as last position

private _searches = 0;
private _inNeedOfPos = true;
private _lastPos = missionNamespace getVariable ["IEDFactoryLastPosition", [0, 0, 0]];
private _minDistanceFromLast = (worldSize / 10) max 500;

// cap at 5 place searches, after 5 attempts we'll give up and make it close to the last pos
while {_inNeedOfPos && _searches < 5} do {
	private _tryPos = [[(worldSize / 2), (worldSize / 2), 0], 0, (worldSize / 2), 30, 0, 0.2, 0, [], [[0, 0, 0], [0, 0, 0]]] call BIS_fnc_findSafePos;
	
	call {
		// findsafepos failed, no need to do other checks here
		if (_tryPos isEqualTo [0, 0, 0]) exitWith {};
		// never settle for being near players, ignore attempt
		if ([_tryPos, 1000] call twc_fnc_posNearPlayers) exitWith { _searches = _searches - 1; };
		// needs to be after the above checks
		if ((_tryPos distance2d _lastPos) <= _minDistanceFromLast) exitWith {}; 
		
		// hurrah, we found a spot!
		missionNamespace setVariable ["IEDFactoryLastPosition", _tryPos, false];
		_lastPos = _tryPos; // recycled variable for use later
		_inNeedOfPos = false;
	};
	
	_searches = _searches + 1;
};

// Set that it's alive
missionNamespace setVariable ["IEDFactoryIsAlive", true, false];

// Spawn the IED Factory
private _size = floor (random (2));
[_size] call _IEDFactory_spawnFactory;

// Commence IED production and placing them around the map (make it interruptable)
missionNamespace setVariable ["IEDFactoryIsFunctional", true, false];
[120, true] call twc_fnc_startIEDPlantLoop;

// Create map marker & non-location specific task, about the general area it's suspected to be in (3km area? calculation based on map size?)

// Add EventHandlers to spawned defenders to track killed
// Once all killed, consider it cleared (award points as mentioned in #36)
// Set timed execute (cba) to check after a time duration, if it hasn't been destroyed, re-occupy and restart production

// Add EventHandlers to spawned "caches"/"equipment" whatever to track destroyed
// Once all destroyed, consider it completed (award points and other bonuses as mentioned in #36)
// Remove all previous map markers related to this IED factory, and create new perm marker noting its completion

// set a function to periodically check there's no players in range, once they've fucked off, remove all remaining elements of it (except for the completed marker)
// vollah

