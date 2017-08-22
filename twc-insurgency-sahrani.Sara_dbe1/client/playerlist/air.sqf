//made by hartzie edited by Adam[TWC]

//BAF Transport pilot and crew cheif
_player1 = if(!isNil "P501")then{if(!isPlayer P501)then{"";}else{(name P501);};}else{"";};
_player2 = if(!isNil "P502")then{if(!isPlayer P502)then{"";}else{(name P502);};}else{"";};
//US Transport pilot and crew cheif
_player3 = if(!isNil "P503")then{if(!isPlayer P503)then{"";}else{(name P503);};}else{"";};
_player4 = if(!isNil "P504")then{if(!isPlayer P504)then{"";}else{(name P504);};}else{"";};
//Attack Jet Pilot
_player5 = if(!isNil "P505")then{if(!isPlayer P505)then{"";}else{(name P505);};}else{"";};
//BAF Apache Pilot and Gunner
_player7 = if(!isNil "P507")then{if(!isPlayer P507)then{"";}else{(name P507);};}else{"";};
_player8 = if(!isNil "P508")then{if(!isPlayer P508)then{"";}else{(name P508);};}else{"";};


g_playerlist = [
	["Air Assets", 
		[["BAF Transport", 
			[_player1, "BAF Transport Pilot"],
			[_player2, "BAF Crew Chief"]],
		["US Transport", 
			[_player3, "US Transport Pilot"],
			[_player4, "US Crew Chief"]],
		["Jet", 
			[_player5, "Attack Jet Pilot"]],
		["BAF Apache", 
			[_player7, "Apache Pilot"],
			[_player8, "Apache Gunner"]]
		]
	]				
];

_bigheadline = "<t color='#CCCC00' size='1.5' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_headline = "<t color='#CCCC00' size='1.2' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_smallheadline = "<t color='#99CCFF' size='1.1' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_itemEmpty = "<t color='#99FFFF' size='1' shadow='1' shadowColor='#000000' align='left'>  Offline</t><br />";
_item = "<t color='#33CC00' size='1' shadow='1' shadowColor='#000000' align='left'>  %1</t><br />";
_text = "";


{
	//systemChat format["debug:%1", _x];
	_text = "";
	_text = _text + format[_bigheadline, _x select 0];
	{
		//systemChat format["debug:%1", _x];
		_text = _text + format[_headline, _x select 0];
		for "_i" from 1 to ((count _x) -1) do {
			_temp2 = _x select _i;
			_text = _text + format [_smallheadline, _temp2 select 1];
			if (_temp2 select 0 == "") then {
				_text = _text + _itemEmpty;
			} else {
				_text = _text + format [_item, _temp2 select 0];
			};
		};
	} forEach (_x select 1);
	hint parseText _text;
	sleep 7;
} forEach g_playerList;