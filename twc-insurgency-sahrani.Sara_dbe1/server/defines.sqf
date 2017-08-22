//This file defines all of the units used. To change to a new map you mostly only have to change this file.

/*
Known other changes occur in:
server\sys_cache\cacheLoadout.sqf
server\sys_vehicles\VBIED.sqf
*/

civilianType = "C_man_1";

homeEnemy = ["CUP_O_TK_INS_Soldier"];

AA_VEHICLE_TYPE = "CUP_O_ZU23_TK_INS";
AATeams = 3;
AATeam = ["CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AA", "CUP_O_TK_INS_Soldier_AA", "CUP_O_TK_INS_Soldier_AA"];

cacheBoxType = "Box_FIA_Wps_F";
cacheDefenseSquad = configfile >> "CfgGroups" >> "East" >> "CUP_O_TK_MILITIA" >> "Infantry" >> "CUP_O_TK_MILITIA_Group";

smallTownSquad = ["CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_MG"];

townSpawn = ["CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier"];

townSquadWave = ["CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier_MG"];

vehicleList = ["CUP_C_UAZ_Unarmed_TK_CIV", "CUP_C_Skoda_Blue_CIV", "CUP_C_Datsun_Plain", "CUP_C_Ural_Open_Civ_03"];

//Run Jayman's location finder script and add towns here
townMarkerArray = ["Matas", "PARAISO", "Yoro", "Rashidah", "Playa de Palomas", "Chantico", "Balmopan", "Pesto", "Somato", "Cabo Canino", "Bonanza", "Ambergris", "Corinto", "Sierra Madre", "Gulan", "Cedras", "Valle Azul", "Isla Verda", "Calheta de Cedras", "Vallejo", "Tlaloc", "Isla de Libertad", "Estrella", "Puntas Oriental", "Corazol", "Plato de Cayo", "Cayo", "Mercalillo", "Ortego", "Arcadia", "Terra Acorcha", "San Peregrino", "Dolores", "Carmen", "Passo San Andres", "Pacamac", "Calheta Demiseca", "Calha de Cayo", "Geraldo", "Tiberia", "Islas Gatunas", "Modesta", "Trelobada", "Parato", "Calheta Seca", "Valle de Carmen", "Obregan", "Tandag", "Gaula", "Iguana", "BAGANGO", "Cabo Gavio", "Passo Paradiso", "Puntas Occidental", "Valor", "Pesadas", "Eponia", "Terra Marismo", "Bajo Valor", "Passo San Marco", "Hunapu", "San Tomas", "Mataredo", "Alcazar", "Passo Epone", "Isla des Compadres", "Monte Galassi", "Everon", "Benoma", "Isla de Victoria", "Isla de Matey", "Sierra de los Pinos", "Isla del Vassal", "Sierra Masbete", "Cabo Indice", "Isla del Vida", "Cabo de Fidel", "Cabo Juventudo", "Cabo Valiente", "Tres Valles", "Roca del Dror", "Isla del Zorra", "El Gordo", "Ixel", "Cabo Santa Lucia", "Masbete", "Sierra Pita", "Isla de los Tojos", "Pita", "Rahmadi", "Cimas Dobles", "Monte Asharah", "Isla Arimar", "Rocara", "Isla de la Caja", "Parvulo", "Antigua"];
publicVariable "townMarkerArray";

enemyTechnical = ["CUP_O_LR_MG_TKM"];

//Enemy will not spawn in these towns
badTownList = ["Matas", "Cabo Canino", "Playa de Palomas", "Ambergris", "Calheta de Cedras", "San Peregrino", "Plato de Cayo", "Calha de Cayo", "Cabo Gavio", "Terra Acorcha", "Calheta Demiseca", "Calheta Seca", "Islas Gatunas", "Isla Verda", "Isla de Libertad", "Vallejo", "Valle Azul", "Sierra Madre", "Isla Arimar", "Isla de la Caja", "San Tomas", "El Gordo", "Monte Asharah", "Isla del Zorra", "Isla de los Tojos", "Cimas Dobles", "Rocara", "Parvulo", "Bajo Valor", "Valor", "Sierra de los Pinos", "Tres Valles", "Sierra Pita", "Passo san Marco", "Puntas Oriental", "Valle de Carmen", "Terra Marismo", "Ixel", "Passo Espone", "Sierra Masbete", "Roca Del Dror", "Cabo Santa Lucia", "Passo Paradiso", "Isla des Compadres", "Cabo Indice", "Trelobada", "Cabo Juventudo", "Cabo Valiente", "Cabo de Fidel", "Isla de Matey", "Isla del Vida", "Isla del Vassal", "Monte Galassi"];

//Towns specified with a marker
specialTowns = [];