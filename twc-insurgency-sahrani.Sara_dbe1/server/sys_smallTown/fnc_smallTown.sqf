/*
* Details
*
* Gives a 50% chance of spawning a squad around the marker and set them to cba defend.
*
* example ["Gospandi"] call twc_smallTown;
*/

params["_marker", "_civnum", "_civradius"];
_random = random 100;
if (_random < 50) then {
	if (isServer) then {
		_groupSpawn = [getMarkerPos _marker, East, smallTownSquad,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		[_groupSpawn, _groupSpawn, 200, 3, True] call CBA_fnc_TaskDefend;
		{
			_x addMPEventHandler ["MPKilled",{
				if (side (_this select 1) == WEST) then{
					InsP_enemyMorale = InsP_enemyMorale + 0.06; publicVariable "InsP_enemyMorale";
				};
			}];
			_x addMagazines ["handGrenade",2];
		}forEach units _groupSpawn;
	};
};

_group = createGroup civilian;
params["_marker", "_civnum", "_civradius"];

for "_i" from 1 to _civnum do {

		_individualCiv = _group createUnit [civilianType, (getMarkerPos _marker), [], _civradius, "NONE"];
		_civHeading = (random 360);
		_individualCiv setFormDir _civHeading;
		_individualCiv setDir _civHeading;
		_westKilled = _individualCiv addMPEventHandler ["MPKilled", {[_this select 0, _this select 1, _intelCache] call InsP_fnc_civKill;}];
		_individualCiv disableAI "AUTOCOMBAT";
		_individualCiv allowFleeing 0;
		_individualCiv forceSpeed 1;
		[_individualCiv, _individualCiv, 100, 2, True] call CBA_fnc_TaskDefend;
		_clothes = 
		[
			"CUP_O_TKI_Khet_Partug_03",
			"CUP_O_TKI_Khet_Partug_05",
			"CUP_O_TKI_Khet_Partug_06",
			"CUP_O_TKI_Khet_Partug_07",
			"CUP_O_TKI_Khet_Partug_02",
			"CUP_O_TKI_Khet_Partug_08"
		] call BIS_fnc_selectRandom;
		_individualCiv forceadduniform _clothes;
		
};