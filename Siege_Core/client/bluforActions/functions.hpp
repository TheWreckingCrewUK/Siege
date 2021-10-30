class TWC_Siege_bluforActions {
	class bluforActions {
		file = "Siege_Core\client\bluforActions";
		tag = "bluforActions";
		class init {
			postInit = 1;
		};
		class initHandlers {
			preInit = 1;
		};
		class initBoxActions		{};
		
		//Vehicle/Ammo Spawning
		class getSupply				{};
		class addDelete				{};
		
		class getAmmoCost			{};
		class canSpawnAmmo			{};
		class spawnAmmo				{};
	};
};