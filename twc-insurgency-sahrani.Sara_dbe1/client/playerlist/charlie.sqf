//made by hartzie edited by Adam[TWC] & Crow [TWC]

_player23 = if(!isNil "p401")then{if(!isPlayer p401)then{"";}else{(name p401);};}else{"";};
_player24 = if(!isNil "p402")then{if(!isPlayer p402)then{"";}else{(name p402);};}else{"";};
_player25 = if(!isNil "p403")then{if(!isPlayer p403)then{"";}else{(name p403);};}else{"";};
_player26 = if(!isNil "p404")then{if(!isPlayer p404)then{"";}else{(name p404);};}else{"";};
_player27 = if(!isNil "p405")then{if(!isPlayer p405)then{"";}else{(name p405);};}else{"";};
_player28 = if(!isNil "p406")then{if(!isPlayer p406)then{"";}else{(name p406);};}else{"";};
_player29 = if(!isNil "p407")then{if(!isPlayer p407)then{"";}else{(name p407);};}else{"";};
_player30 = if(!isNil "p408")then{if(!isPlayer p408)then{"";}else{(name p408);};}else{"";};

g_playerlist = [["Charlie - SNA", 
	["Charlie", 
		[_player23, "Section Leader"], 
		[_player24, "Rifleman (ACOG)"], 
		[_player25, "Grenadier"], 
		[_player26, "Automatic Rifleman"]], 
	["Delta", 
		[_player27, "2iC"], 
		[_player28, "Machine Gunner"], 
		[_player29, "Marksman"], 
		[_player30, "Medic"]]
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

