

{
//systemchat "1";
_x addEventHandler ["CuratorObjectPlaced", {

systemchat "placed";

if ((_this select 1) iskindof "StaticMortar") then {
if ((_this select 1) distance idfradar < 3000) then {
(_this select 1) addeventhandler ["fired", 


{if (alarm == 3) then {execVM "siege_core\server\sys_basedefence\IDF_Alarmfire.sqf"};}];

};
};

}

];

} forEach allCurators;