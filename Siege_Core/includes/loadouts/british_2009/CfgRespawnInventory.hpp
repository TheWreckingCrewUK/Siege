class CfgRespawnInventory {
	//Section
	class Rifleman {
		displayName = "Rifleman";
		icon = "";
		role = "Grenadier";
		rank = "PRIVATE";
		uniformClass = "UK3CB_BAF_U_CombatUniform_DDPM";
		backpack = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM5",
			"UK3CB_BAF_SUSAT_3D",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		items[] = {
			MEDICAL_LOADOUT,
			"ACE_EntrenchingTool",
			"ACRE_PRC343"
		};
		weapons[] = {
			"UK3CB_BAF_L85A2",
			"UK3CB_BAF_L9A1",
			"UK3CB_BAF_AT4_CS_AT_Launcher"
		};
		magazines[] = {
			MAG_8("UK3CB_BAF_556_30Rnd"),
			MAG_5("UK3CB_BAF_556_30Rnd_T"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("CUP_HandGrenade_L109A2_HE"),
			MAG_2("SmokeShell")
		};
	};
	class Grenadier: Rifleman {
		displayName = "Grenadier";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM3",
			"UK3CB_BAF_SUSAT_3D",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L85A2_UGL_HWS",
			"UK3CB_BAF_L9A1"
		};
		magazines[] = {
			MAG_8("UK3CB_BAF_556_30Rnd"),
			MAG_5("UK3CB_BAF_556_30Rnd_T"),
			MAG_10("UK3CB_BAF_1Rnd_HE_Grenade_Shell"),
			MAG_4("1Rnd_Smoke_Grenade_shell"),
			MAG_2("1Rnd_SmokeGreen_Grenade_shell"),
			MAG_2("1Rnd_SmokeRed_Grenade_shell"),
			MAG_2("1Rnd_SmokeBlue_Grenade_shell"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("CUP_HandGrenade_L109A2_HE"),
			MAG_2("SmokeShell")
		};
	};
	class Autorifleman: Rifleman {
		displayName = "Autorifleman";
		role = "Autorifleman";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM7",
			"UK3CB_BAF_SUSAT_3D",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L110A2RIS",
			"UK3CB_BAF_L9A1"
		};
		magazines[] = {
			MAG_3("UK3CB_BAF_556_200Rnd"),
			MAG_2("UK3CB_BAF_556_200Rnd_T"),
			MAG_2("SmokeShell")
		};
	};
	class Marksman_LSW: Rifleman {
		displayName = "Marksman (LSW)";
		role = "Marksman";
		weapons[] = {
			"UK3CB_BAF_L86A2",
			"UK3CB_BAF_L9A1",
			"UK3CB_BAF_AT4_CS_AT_Launcher"
		};
		magazines[] = {
			MAG_8("UK3CB_BAF_556_30Rnd"),
			MAG_5("UK3CB_BAF_556_30Rnd_T"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("CUP_HandGrenade_L109A2_HE"),
			MAG_2("SmokeShell")
		};
	};
	class Marksman_DMR: Marksman_LSW {
		displayName = "Marksman (DMR)";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM5",
			"UK3CB_underbarrel_acc_fgrip_bipod",
			"UK3CB_BAF_TA648_308",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L129A1_Grippod",
			"UK3CB_BAF_L9A1"
		};
		magazines[] = {
			MAG_6("UK3CB_BAF_762_L42A1_20Rnd"),
			MAG_3("UK3CB_BAF_762_L42A1_20Rnd_T"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("CUP_HandGrenade_L109A2_HE"),
			MAG_2("SmokeShell")
		};
	};
	class 2iC: Rifleman {
		displayName = "2iC";
		role = "2iC";
		rank = "CORPORAL";
		backpack = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM9",
			"UK3CB_BAF_SUSAT_3D",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L85A2",
			"UK3CB_BAF_L9A1"
		};
		magazines[] = {
			MAG_12("UK3CB_BAF_556_30Rnd"),
			MAG_7("UK3CB_BAF_556_30Rnd_T"),
			MAG_2("UK3CB_BAF_556_200Rnd"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("CUP_HandGrenade_L109A2_HE"),
			MAG_2("SmokeShell")
		};
	};
	class Section_Commander: Rifleman {
		displayName = "Section Commander";
		role = "Section_Commander";
		rank = "SERGEANT";
		backpack = "UK3CB_BAF_B_Bergen_DDPM_SL_A";
		linkedItems[] = {
			"UK3CB_BAF_H_Mk6_DDPM_A",
			"UK3CB_BAF_V_Osprey_DDPM2",
			"UK3CB_BAF_SUSAT_3D",
			"UK3CB_BAF_HMNVS",
			"ItemMap",
			"ItemcTab",
			"ItemCompass",
			"ItemWatch"
		};
		items[] = {
			MEDICAL_LOADOUT,
			"ACE_EntrenchingTool",
			"ACRE_PRC117F",
			"ACRE_PRC343"
		};
		weapons[] = {
			"UK3CB_BAF_L85A2",
			"UK3CB_BAF_L9A1",
			"ACE_Vector"
		};
	};
	
	class Medic: Rifleman {
		displayName = "Medic";
		role = "Medic";
		medic = 1;
		backpack = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		weapons[] = {
			"UK3CB_BAF_L85A2",
			"UK3CB_BAF_L9A1"
		};
		items[] = {
			MEDICAL_LOADOUT,
			MAG_20(ACE_fieldDressing),
			MAG_20(ACE_quikclot),
			MAG_20(ACE_packingBandage),
			MAG_20(ACE_elasticBandage),
			MAG_10(ACE_morphine),
			MAG_10(ACE_epinephrine),
			MAG_6(ACE_salineIV_500),
			MAG_4(ACE_adenosine),
			MAG_4(ACE_atropine),
			MAG_4(ACE_tourniquet),
			"ACE_personalAidKit",
			"TWC_Item_Medical_SutureKit_25",
			"ACE_EntrenchingTool",
			"ACRE_PRC343"
		};
	};
	
	//Rotary-Wing Pilot
	class Helicopter_Pilot: Rifleman {
		displayName = "Helicopter Pilot";
		role = "Helicopter_Pilot";
		rank = "CAPTAIN";
		heli = 1;
		backpack = "";
		linkedItems[] = {
			"UK3CB_BAF_V_Pilot_DDPM",
			"UK3CB_BAF_H_PilotHelmetHeli_A",
			"CUP_NVG_PVS7",
			"ItemMap",
			"ItemcTab",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L22A2"
		};
		magazines[] = {
			MAG_3("UK3CB_BAF_556_30Rnd"),
			MAG_2("SmokeShell"),
			MAG_2("SmokeShellGreen")
		};
	};
	
	//Armour Crew
	class Armour_Commander: Rifleman {
		displayName = "Armour Commander";
		role = "Armour_Commander";
		rank = "SERGEANT";
		armour = 1;
		backpack = "";
		linkedItems[] = {
			"UK3CB_BAF_V_Osprey_DDPM1",
			"UK3CB_BAF_H_CrewHelmet_A",
			"ItemMap",
			"ItemcTab",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[] = {
			"UK3CB_BAF_L22A2",
			"UK3CB_BAF_L9A1",
			"ACE_Vector"
		};
		magazines[] = {
			MAG_5("UK3CB_BAF_556_30Rnd"),
			MAG_2("UK3CB_BAF_9_13Rnd"),
			MAG_2("SmokeShell"),
			MAG_2("SmokeShellGreen")
		};
	};
	class Armour_Crew: Armour_Commander {
		displayName = "Armour Crew";
		role = "Armour_Crew";
		rank = "PRIVATE";
		weapons[] = {
			"UK3CB_BAF_L22A2",
			"UK3CB_BAF_L9A1"
		};
		linkedItems[] = {
			"UK3CB_BAF_V_Osprey_DDPM1",
			"UK3CB_BAF_H_CrewHelmet_A",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
	};
};