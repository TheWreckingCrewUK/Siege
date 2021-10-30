TWC_Siege_Finish_score = 0;

//Modify the score when we kill people.
addMissionEventHandler ["EntityKilled", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	
	private _playerside = call TWC_Siege_BLUFOR_playerSide;
	_instigator = _unit getVariable ["ace_medical_lastDamageSource", _instigator];
	if (side _instigator != _playerside) exitWith {DEBUG_LOG(str _unit + " killed by non-players.")};
	
	[1] call TWC_Siege_Finish_fnc_modifyScore;
}];

//Shuts down the mission when there's no more players.
addMissionEventHandler ["HandleDisconnect", {
	params ["_unit", "_id", "_uid", "_name"];
	
	private _playerCount = count (call BIS_fnc_listPlayers);
	if (_playerCount isEqualTo 0) then {
		"Surrender" call BIS_fnc_endMissionServer;
	};
}];