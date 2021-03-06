/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/

if ((twc_ammotime-time) > 0) then {
	hint format ["The spawner is on cooldown currently. %2 seconds remaining.", twc_ammotime_amount, ceil (twc_ammotime-time)];
	waituntil {(twc_ammotime-time) < 0};
	hint "More Ammunition Is Now Available From The Spawner";
	} else {

twc_ammotime=time+twc_ammotime_amount;

_boxClass = "ACE_Box_Ammo";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);


//simple dynamic numbers system. Assign cost of each tier and then assign a tier to an item if you want that item's amount to scale with the player count.
_players = ( count(allPlayers - entities "HeadlessClient_F"));
_low = (_players * 0.3);
_mid = _players;
_high = (_players * 2);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;


//supplies


_box AddMagazineCargoGlobal ["CUP_OG7_M",3];
_box AddMagazineCargoGlobal ["CUP_PG7V_M",2];

_box AddMagazineCargoGlobal ["CUP_10Rnd_762x54_SVD_M",7 + _low];

_box AddMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M",20 + _high];
_box AddMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M",5 + _mid];

_box AddMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",5 + _low];

_box AddMagazineCargoGlobal ["ACE_SpareBarrel",1];

_box addItemCargoGlobal ["ACE_fieldDressing",5 + _mid];
_box addItemCargoGlobal ["ACE_elasticBandage",5 + _mid];
_box addItemCargoGlobal ["ACE_quikclot",5 + _mid];
_box addItemCargoGlobal ["ACE_packingBandage",5 + _mid];
_box addItemCargoGlobal ["ACE_personalAidKit",1];
_box addItemCargoGlobal ["ACE_salineIV_500",4 + _low];
_box addItemCargoGlobal ["ACE_atropine",5];
_box addItemCargoGlobal ["ACE_epinephrine",5 + _low];
_box addItemCargoGlobal ["ACE_morphine",5 + _low];

_box addItemCargoGlobal ["HandGrenade",3 - _low];
_box addItemCargoGlobal ["SmokeShell",2];
_box addItemCargoGlobal ["SmokeShellRed",2];

_box addItemCargoGlobal ["ACRE_PRC148",2 + _mid];
_box addItemCargoGlobal ["ACE_EarPlugs",2 + _mid];
_box addItemCargoGlobal ["CUP_NVG_PVS14",2 + _mid];

[player, _box] call ace_cargo_fnc_startLoadIn;
};
