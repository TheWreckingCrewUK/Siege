#include "..\..\includes\script_component.hpp"

if (isDedicated) exitWith {DEBUG_LOG("Loadouts do not need to be called on server.")};

//Set faction rank depending on playerside
private _ranks = getArray (missionConfigFile >> "TWC_Siege_playerRanks");
private _faction = switch (getNumber (missionConfigFile >> "TWC_Siege" >> "playerSide")) do {
	case 0: {"NATO_F"};
	case 1: {"OPF_F"};
	case 2: {"IND_F"};
	default {};
};
[_faction, _ranks] call ace_nametags_fnc_setFactionRankIcons;

//Adds the loadouts for the players to select.
private _type = roleDescription player;
if (_type isNotEqualTo "") then {
	_type = (_type splitString "@") select 0;
	
	{
		private _config = configName _x;
		private _role = getText (missionConfigFile >> "CfgRespawnInventory" >> _config >> "role");
		private _name = getText (missionConfigFile >> "CfgRoles" >> _role >> "displayName");
		
		if (_name isEqualTo _type) then {
			[player, _config] call BIS_fnc_addRespawnInventory;
			
			//Set rank according to config.
			private _rank = getText (missionConfigFile >> "CfgRespawnInventory" >> _config >> "rank");
			player setRank _rank;
			
			//Also set special roles if they are
			private _isMedic = getNumber (missionConfigFile >> "CfgRespawnInventory" >> _config >> "medic");
			if (_isMedic isEqualTo 1) then {
				player setUnitTrait ["medic", true];
			};
			
			private _isArmour = getNumber (missionConfigFile >> "CfgRespawnInventory" >> _config >> "armour");
			if (_isArmour isEqualTo 1) then {
				player setVariable ["TWC_Siege_isArmour", true];
			};
			
			private _isHeli = getNumber (missionConfigFile >> "CfgRespawnInventory" >> _config >> "heli");
			if (_isHeli isEqualTo 1) then {
				player setVariable ["TWC_Siege_isHeli", true];
			};
			
			private _isPlane = getNumber (missionConfigFile >> "CfgRespawnInventory" >> _config >> "plane");
			if (_isPlane isEqualTo 1) then {
				player setVariable ["TWC_Siege_isPlane", true];
			};
		};
	} forEach ("true" configClasses (missionConfigFile >> "CfgRespawnInventory"));
} else {
	DEBUG_LOG("Cannot initialise loadout/variables in SP")
};

//Tell the server that the (first) player has been initialised, this is useful for server side handling of things that can only be handled when there is a player object.
["TWC_Siege_playerInit", [player]] call CBA_fnc_serverEvent;