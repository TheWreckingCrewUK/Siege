/*
* Written by [TWC] jayman
*
* Creates the ammo box with an an event handler. This should decrease lag
* while always keeping the box full. Basically it reloads as soon as you close it
*/
twc_ammotime=0;
publicVariable "twc_ammotime";

twc_ammotime_amount=310-(((count(allPlayers - entities "HeadlessClient_F"))*10)min 180);
publicVariable "twc_ammotime_amount";

_marker = "crate";  // marker used to spawn.
_boxType = "CUP_UK_VehicleBox";  // the type of ammobox used.

// create and fill the box.
crateBox = _boxType createVehicleLocal (getMarkerPos _marker);
crateBox setPosATL (getMarkerPos _marker);
crateBox allowDamage false;

[crateBox] execVM "siege_core\client\sys_player\boxes\main_ammo.sqf";

player addEventHandler ["InventoryClosed", {
	if((_this select 1) == crateBox)then{
		[_this select 1]execVM "siege_core\client\sys_player\boxes\main_ammo.sqf";
	};
}];


	_infaction1 = ["clearbox","Clear Boxes","",{execvm "siege_core\client\sys_player\boxes\clearboxes.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_infaction1,true] call ace_interact_menu_fnc_addActionToClass;
	

	

if((typeOf player) in ["Modern_British_HeliPilot","Modern_USMC_HeliPilot"])then{

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large Charlie Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_action1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small Charlie Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateUSMC.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_anaaction = ["SpawnsmallanaCreate","Spawn Small ANA Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateANA.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_anaaction,true] call ace_interact_menu_fnc_addActionToClass;
	

	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "siege_core\client\sys_player\boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
};

if((typeOf player) in ["twc_ana_commander","twc_ana_subcommander"])then{

	_anaaction = ["SpawnsmallanaCreate","Spawn Small ANA Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateANA.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_anaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_anaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_anaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_anaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_anaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_anaaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_anaaction5,true] call ace_interact_menu_fnc_addActionToClass;	
};



if((typeOf player) in ["Modern_British_Squadleader","Modern_British_2IC","Modern_British_2IC_COIN", "Modern_British_Spotter_coin", "Modern_British_Sniper_coin"])then{

	_armouraction1 = ["spawnl111","Spawn WMIK (GPMG)","",{["UK3CB_BAF_LandRover_WMIK_GPMG_Sand_A"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy > 10) && (twc_maxenemy < 30) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn WMIK (HMG)","",{["UK3CB_BAF_LandRover_WMIK_HMG_Green_B"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 30) && (twc_maxenemy < 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_armouraction1 = ["spawnl111","Spawn WMIK (MK19)","",{["UK3CB_BAF_LandRover_WMIK_GMG_Green_B"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_UKaction6 = ["SpawnmineCreate","Spawn NLAWs","",{execvm "siege_core\client\sys_player\boxes\smallcratenlaw.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction6,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratejav.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tube","",{execvm "siege_core\client\sys_player\boxes\smallcratejav_tube.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 1)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

};



if((typeOf player) in ["Modern_pol_commander","Modern_pol_subcommander", "Modern_pol_commander_d","Modern_pol_subcommander_d"])then{

	_UKaction = ["SpawnsmallUKCreate","Spawn Small Polish Crate","",{execvm "siege_core\client\sys_player\boxes\smallcratepol.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn HMMWV (M2)","",{["CUP_B_HMMWV_M2_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy > 10) && (twc_maxenemy < 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_armouraction1 = ["spawnl111","Spawn HMMWV (MK19)","",{["CUP_B_HMMWV_MK19_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_UKaction6 = ["SpawnmineCreate","Spawn NLAWs","",{execvm "siege_core\client\sys_player\boxes\smallcratenlaw.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction6,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};

if((typeOf player) in ["Modern_ger_commander","Modern_ger_subcommander","Modern_ger_commander_d","Modern_ger_subcommander_d"])then{

	_UKaction = ["SpawnsmallUKCreate","Spawn Small German Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateger.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_UKaction6 = ["SpawnmineCreate","Spawn AT Rockets","",{execvm "siege_core\client\sys_player\boxes\smallcratecgrockets.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction6,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};


if((typeOf player) in ["twc_men_1990_us_w_SquadLeader","twc_men_1990_us_w_teamleader","twc_men_1990_us_d_SquadLeader","twc_men_1990_us_d_teamleader"])then{

	_armouraction1 = ["spawnl111","Spawn HMMWV (M2)","",{["CUP_B_HMMWV_M2_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy > 10) && (twc_maxenemy < 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_armouraction1 = ["spawnl111","Spawn HMMWV (MK19)","",{["CUP_B_HMMWV_MK19_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_usaction = ["SpawnsmallUKCreate","Spawn Small US Crate","",{execvm "siege_core\client\sys_player\boxes\smallCrateUS90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_usaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_usaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_usaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_usaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_usaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_usaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_usaction5,true] call ace_interact_menu_fnc_addActionToClass;

/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
		
};

if((typeOf player) in ["Modern_USMC_Squadleader","Modern_USMC_Teamleader", "Modern_USMC_Squadleader_d","Modern_USMC_Teamleader_d"])then{

	_armouraction1 = ["spawnl111","Spawn HMMWV (M2)","",{["CUP_B_HMMWV_M2_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy > 10) && (twc_maxenemy < 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_armouraction1 = ["spawnl111","Spawn HMMWV (MK19)","",{["CUP_B_HMMWV_MK19_USMC"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratejav.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tube","",{execvm "siege_core\client\sys_player\boxes\smallcratejav_tube.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 1)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_charlieaction = ["SpawnsmallcharlieCreate","Spawn Small Charlie Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateUSMC.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction,true] call ace_interact_menu_fnc_addActionToClass;

	_charlieaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_charlieaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_charlieaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction4,true] call ace_interact_menu_fnc_addActionToClass;

/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	
		
};

if((typeOf player) in ["Modern_Artillery_Commander"])then{

	_artaction = ["SpawnsmallcharlieCreate","Spawn 105mm HE Rounds","",{execvm "siege_core\client\sys_player\boxes\105he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction1 = ["Spawnheartscrateus","Spawn 105mm Smoke Rounds","",{execvm "siege_core\client\sys_player\boxes\105smoke.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_artaction2 = ["SpawnmedCreate","Spawn 105mm Illum Rounds","",{execvm "siege_core\client\sys_player\boxes\105illum.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction3 = ["SpawnrepCreate","Spawn Vehicle Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	

};



if((typeOf player) in ["Modern_British_Quartermaster","Modern_British_FSTForwardObserver","Modern_British_FSTCommander"])then{

	_fstaction1 = ["spawnl111","Spawn L111A1 HMG","",{execvm "siege_core\client\sys_player\boxes\staticL111A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction2 = ["spawnl134","Spawn L134 GMG","",{execvm "siege_core\client\sys_player\boxes\staticL134A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction21 = ["spawnl7","Spawn L7 GPMG","",{execvm "siege_core\client\sys_player\boxes\staticL7.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction21,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_fstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["spawnm6","Spawn M6","",{execvm "siege_core\client\sys_player\boxes\smallMortar.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["spawnm6","Spawn M6 Ammo","",{execvm "siege_core\client\sys_player\boxes\60ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "siege_core\client\sys_player\boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction7 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction6 = ["SpawnmineCreate","Spawn NLAWs","",{execvm "siege_core\client\sys_player\boxes\smallcratenlaw.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction6,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};

if((typeOf player) in ["Modern_British_Quartermaster","1990_British_quartermaster_Desert"])then{
execVM "siege_core\client\zeus\camera.sqf";

	_action2 = ["Zeus","Spectator On","",{execVM "siege_core\client\zeus\spectator_on.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action2] call ace_interact_menu_fnc_addActionToObject;
	_action3 = ["Zeus","Spectator Off","",{execVM "siege_core\client\zeus\spectator_off.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action3] call ace_interact_menu_fnc_addActionToObject;
	_action4 = ["Zeus","Basemode On","",{execVM "siege_core\client\zeus\basemode_on.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action4] call ace_interact_menu_fnc_addActionToObject;
	_action5 = ["Zeus","Basemode Off","",{execVM "siege_core\client\zeus\basemode_off.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action5] call ace_interact_menu_fnc_addActionToObject;
	
	_action6 = ["Zeus","Enemy Siren","",{execVM "siege_core\server\sys_basedefence\INF_Alarm.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action6] call ace_interact_menu_fnc_addActionToObject;
	
	
	_action7 = ["Zeus","IDF Siren","",{{
	[_x, "TWC_sound_idfsiren"] call CBA_fnc_globalSay3d;
} forEach sirenlist;
},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action7] call ace_interact_menu_fnc_addActionToObject;
	
	_action8 = ["Zeus","Clear Siren","",{execVM "siege_core\server\sys_basedefence\INF_Alarmclear.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action8] call ace_interact_menu_fnc_addActionToObject;

};


if((typeOf player) in ["1990_British_quartermaster_Desert"])then{

	_qm90action1 = ["spawnl111","Spawn L111A1 HMG","",{execvm "siege_core\client\sys_player\boxes\staticL111A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_qm90action3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action3,true] call ace_interact_menu_fnc_addActionToClass;

	_qm90action4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action4,true] call ace_interact_menu_fnc_addActionToClass;

};

if((typeOf player) in ["1990_British_mg_assistant_Desert"])then{

	_mgaction = ["Spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_mgaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};

if((typeOf player) in ["1990_British_2IC_Desert","1990_British_SectionCommander_Desert","1990_British_SectionCommander","1990_British_2IC"])then{

	
	_90UKaction = ["Spawnsmall90UKCreate","Spawn Ammo Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_90UKaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_90UKaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90UKaction4,true] call ace_interact_menu_fnc_addActionToClass;

	
	_90charlieaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
		
};

if((typeOf player) in ["1990_RM_British_2IC_Mix","1990_RM_British_SectionCommander_Mix"])then{

	
	_90rmUKaction = ["Spawnsmall90UKCreate","Spawn Ammo Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk90RM.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmUKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_90rmUKaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_90rmUKaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmUKaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_90rmaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmaction2,true] call ace_interact_menu_fnc_addActionToClass;
		
};



if((typeOf player) in ["2000_British_SectionCommander_Desert","2000_British_SectionCommander","2000_British_2IC_Desert","2000_British_2IC"])then{

	_armouraction1 = ["spawnl111","Spawn WMIK (GPMG)","",{["UK3CB_BAF_LandRover_WMIK_GPMG_Sand_A"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy > 1) && (twc_maxenemy < 30) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn WMIK (HMG)","",{["UK3CB_BAF_LandRover_WMIK_HMG_Green_B"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 30) && (twc_maxenemy < 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_armouraction1 = ["spawnl111","Spawn WMIK (MK19)","",{["UK3CB_BAF_LandRover_WMIK_GMG_Green_B"] execvm "siege_core\client\sys_player\vehicles\spawnarmour_inf.sqf"},{(twc_maxenemy >= 70) && (count units group player > 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UK Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Repair Kit","",{execvm "siege_core\client\sys_player\boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	

	
};

if((typeOf player) in ["2000_British_FSTCommander_Desert"])then{

	_fstaction1 = ["spawnl111","Spawn L111A1 HMG","",{execvm "siege_core\client\sys_player\boxes\staticL111A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction2 = ["spawnl134","Spawn L134 GMG","",{execvm "siege_core\client\sys_player\boxes\staticL134A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction21 = ["spawnl7","Spawn L7 GPMG","",{execvm "siege_core\client\sys_player\boxes\staticL7.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction21,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_fstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["spawnm6","Spawn M6","",{execvm "siege_core\client\sys_player\boxes\smallMortar.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["spawnm6","Spawn M6 Ammo","",{execvm "siege_core\client\sys_player\boxes\60ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "siege_core\client\sys_player\boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_fstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UK Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateuk2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};




if((typeOf player) in ["TWC_2000_US_Army_SectionCommander","TWC_2000_US_Army_TeamLeader"])then{


	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn US Crate","",{execvm "siege_core\client\sys_player\boxes\smallcrateUS2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "siege_core\client\sys_player\boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratejav.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tube","",{execvm "siege_core\client\sys_player\boxes\smallcratejav_tube.sqf"},{((count units group player) > 3) && ((missionnamespace getvariable ["twc_javspawned", 0]) == 1)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "siege_core\client\sys_player\boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "siege_core\client\sys_player\boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
/*
	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92launcher.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["SpawnsmallUKCreate","Spawn FIM-92 Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratefim92ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
*/
	_UKaction = ["SpawnsmallUKCreate","Spawn TOW Launcher","",{execvm "siege_core\client\sys_player\boxes\smallcratetowlauncher.sqf"},{(!(missionnamespace getvariable ["twc_towspawned", false]))}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towmissiles","Spawn TOW Missiles","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","Tandem","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_tandem.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction = ["towhe","HE","",{execvm "siege_core\client\sys_player\boxes\smallcratetowammo_he.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "towmissiles"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	

	
};

