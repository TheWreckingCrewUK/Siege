class TWC_Siege_OPFOR {
	class OPFOR {
		file = "Siege_Core\server\opfor";
		tag = "OPFOR";
		//Init
		class init {
			postInit = 1;
		};
		class initHandlers {
			preInit = 1;
		};
		
		//Utility
		class enemySide				{};
		class getScale				{};
		
		//OPFOR FSM
		class direction				{};
		class takeAction			{};
		
		//Action Conditions
		class getArmour				{};
		class getArtillery			{};
		class getAssault			{};
		class getInfiltration		{};
		
		//Actions
		class doArmour				{};
		class doArtillery			{};
		class doAssault				{};
		class doInfiltration		{};
	};
};