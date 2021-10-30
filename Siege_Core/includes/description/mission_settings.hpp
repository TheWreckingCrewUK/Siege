author = "[TWC] Rik";
loadScreen = "";
onLoadMission = "www.thewreckingcrew.eu";

disabledAI = 1;
disableChannels[] = {0,1,2,3,4,6};
enableDebugConsole = 1;
joinUnassigned = 1;

class Header {
	gameType = Coop;
	minPlayers = 1;
	maxPlayers = 60;
};

respawn = "BASE";
respawnDelay = 60;
respawnTemplates[] = {"ace_spectator", "Wave", "Counter", "MenuInventory"};
respawnDialog = true;
respawnOnStart = 1;

corpseManagerMode = 1;
corpseLimit = 30;
corpseRemovalMinTime = 120;
corpseRemovalMaxTime = 1200;

wreckManagerMode = 1;
wreckLimit = 20;
wreckRemovalMinTime = 120;
wreckRemovalMaxTime = 1200;

minPlayerDistance = 200;