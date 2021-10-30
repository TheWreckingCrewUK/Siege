class Medical_Supply {
	displayName = "Medical Resupply";
	type = "ACE_medicalSupplyCrate";
	subcategory = "TWC_Siege_Actions_spawnInfantryAmmo";
	size = 1;
	cost = 5;
	class Weapons {};
	class Magazines {};
	class Items {
		ADD(ACE_fieldDressing, 12);
		ADD(ACE_elasticBandage, 12);
		ADD(ACE_quikclot, 12);
		ADD(ACE_packingBandage, 12);
		
		ADD(ACE_morphine, 12);
		ADD(ACE_epinephrine, 12);
		ADD(ACE_atropine, 2);
		ADD(ACE_adenosine, 2);
		
		ADD(ACE_salineIV_500, 12);
		ADD(ACE_salineIV_250, 2);
		ADD(ACE_tourniquet, 4);
		ADD(ACE_bodyBag, 6);
		ADD(TWC_Item_Medical_SutureKit_25, 1);
	};
};

class EOD {
	displayName = "EOD Equipment";
	type = "Box_NATO_Equip_F";
	subcategory = "TWC_Siege_Actions_spawnInfantryAmmo";
	size = 1;
	cost = 2;
	class Weapons {
		ADD(ACE_VMM3, 5);
	};
	class Magazines {};
	class Items {
		ADD(ACE_DefusalKit, 5);
	};
};

//Vehicles
class Wheel {
	displayName = "Spare Wheel";
	type = "ACE_Wheel";
	subcategory = "TWC_Siege_Actions_spawnVehicleAmmo";
	size = 1;
	cost = 1;
	class Weapons {};
	class Magazines {};
	class Items {};
};
class Vehicle_Ammo {
	displayName = "Vehicle Ammo";
	type = "CUP_BOX_US_ARMY_WpsSpecial_F";
	subcategory = "TWC_Siege_Actions_spawnVehicleAmmo";
	size = 3;
	cost = 5;
	vehicleSupply = 100;
	class Weapons {};
	class Magazines {};
	class Items {
		ADD(ToolKit, 1);
	};
};
class 50cal {
	displayName = ".50cal Ammo";
	type = "Box_NATO_Ammo_F";
	subcategory = "TWC_Siege_Actions_spawnVehicleAmmo";
	size = 1;
	cost = 5;
	class Weapons {};
	class Magazines {
		ADD(UK3CB_BAF_127_100Rnd, 6);
	};
	class Items {};
};
class 40mm {
	displayName = "40mm Ammo";
	type = "Box_NATO_Ammo_F";
	subcategory = "TWC_Siege_Actions_spawnVehicleAmmo";
	size = 1;
	cost = 5;
	class Weapons {};
	class Magazines {
		ADD(UK3CB_BAF_32Rnd_40mm_G_Box, 6);
	};
	class Items {};
};
class 762mm {
	displayName = "7.62mm Ammo";
	type = "Box_NATO_Ammo_F";
	subcategory = "TWC_Siege_Actions_spawnVehicleAmmo";
	size = 1;
	cost = 5;
	class Weapons {};
	class Magazines {
		ADD(UK3CB_BAF_762_200Rnd_T, 6);
	};
	class Items {};
};