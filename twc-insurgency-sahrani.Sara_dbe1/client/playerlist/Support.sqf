//made by hartzie edited by Adam[TWC] & Crow [TWC]

_player9 = if(!isNil "p109")then{if(!isPlayer p109)then{"";}else{(name p109);};}else{"";};
_player10 = if(!isNil "p110")then{if(!isPlayer p110)then{"";}else{(name p110);};}else{"";};
_player11 = if(!isNil "p111")then{if(!isPlayer p111)then{"";}else{(name p111);};}else{"";};
_player12 = if(!isNil "p112")then{if(!isPlayer p112)then{"";}else{(name p112);};}else{"";};
_player13 = if(!isNil "p113")then{if(!isPlayer p113)then{"";}else{(name p113);};}else{"";};

g_playerlist = [["Fire Support Team",  
		[_player9, "Team Leader"], 
		[_player10, "Mortarman"], 
		[_player11, "Asst. Mortarman"], 
		[_player12, "Machine Gunner"], 
		[_player13, "Asst. Machine Gunner"]], 
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

