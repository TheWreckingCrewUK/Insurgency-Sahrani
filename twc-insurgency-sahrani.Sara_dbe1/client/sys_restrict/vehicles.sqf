/*
Script by [TWC] jayman. Vehicle restriction through event handlers. Should cause literally like no lag
The old one by Sa-Matra relied on a while{true}do{} loop which is shitty.
*/

//Specifying special roles
_specialCases = ["P501","P502","P503","P504","P507","P508","P601","P602","P603","P505"];
if(str player in _specialCases)then{

//BAF Transport Pilot and Crew Chief
	if(str player == "P501" || str player == "P502")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "UK3CB_BAF_Wildcat_AH1_CAS_8A" || typeOf (_this select 2) == "CUP_B_CH47F_GB" || typeOf (_this select 2) == "UK3CB_BAF_Merlin_HC3_32"|| typeOf (_this select 2) == "UK3CB_BAF_Merlin_HC3_18_GPMG"|| typeOf (_this select 2) == "RHS_CH_47F_light" || typeOf (_this select 2) == "CUP_B_C130J_GB" || typeOf (_this select 2) == "CUP_B_C130J_CARGO_GB" || typeOf (_this select 2) == "RHS_C130J")then{
						
					}else{
						hint "You are a BAF Pilot. You may only fly the following aircraft: Wildcat, Merlin, Chinook, C130";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};

//US Transport Pilot and Crew Chief
	if(str player == "P503" || str player == "P504")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "RHS_UH60M_D" || typeOf (_this select 2) == "RHS_CH_47F_light" || typeOf (_this select 2) == "rhsusf_CH53E_USMC_D" || typeOf (_this select 2) == "RHS_UH1Y_d_GS" || typeOf (_this select 2) == "CUP_B_C130J_GB" || typeOf (_this select 2) == "CUP_B_C130J_CARGO_GB" || typeOf (_this select 2) == "RHS_C130J" || typeOf (_this select 2) == "CUP_B_MV22_USMC" )then{
			
					}else{
						hint "You are a US pilot. You may only fly the following aircraft: Venom, Blackhawk, Chinook, Osprey, C130";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};

//BAF Apache Pilot and Gunner
	if(str player == "P507" || str player == "P508")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "UK3CB_BAF_Apache_AH1_CAS")then{
			
					}else{
						hint "You are an Apache Pilot/Gunner. You may only fly/gun the Apache";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};
	
//Attack Jet Pilot
	if(str player == "P505")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "CUP_B_GR9_Mk82_GB" || typeOf (_this select 2) == "RHS_A10" || typeOf (_this select 2) == "CUP_B_F35B_CAS_BAF")then{
			
					}else{
						hint "You are an Attack Jet Pilot. You may only the following aircraft: Harrier, A-10";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};

//Armour Crew	
	if(str player == "P601" || str player == "P602" || str player == "P603")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Tank")then{
					if(typeOf (_this select 2) == "CUP_B_FV510_GB_W_SLAT" || typeOf (_this select 2) == "RHS_M2A3_BUSKIII_wd" || typeOf (_this select 2) == "RHSUSF_M1117_W")then{
			
					}else{
						hint "You are the armour crew. You may only Gun,Drive,Command in Armoured Vehicles";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};
}else{

//Enable Grunts to drive in back
	player addEventHandler ["getInMan",{
		if((_this select 1) != "cargo")then{
			if((_this select 2) isKindOf "Tank" || (_this select 2) isKindOf "Air")then{
				if(typeOf (_this select 2) == "CUP_B_FV432_Bulldog_GB_W" == "RHSUSF_M113_USARMY")then{
				
				}else{
					hint "You are a grunt. You may only be a passenger in helicopters and armour";
					(_this select 0) action ["eject", (_this select 2)];
					(_this select 0) action ["getout", (_this select 2)];
				};
			};
		};
	}];
};