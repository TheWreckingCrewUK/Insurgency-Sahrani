comment "Exported from Arsenal by Adam";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACRE_PRC343_ID_1";
player addVest "UK3CB_BAF_V_Osprey_MG_B";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_SL_L_A";
player addItemToBackpack "ACRE_PRC117F_ID_1";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellBlue";};
player addHeadgear "UK3CB_BAF_H_Mk7_Camo_CESS_D";
player addGoggles "rhs_googles_black";

comment "Add weapons";
player addWeapon "UK3CB_BAF_L85A2_RIS";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
player addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS";
player addWeapon "ACE_VMM3";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "ItemcTab";
player linkItem "rhsusf_ANPVS_14";

comment "Set identity";
player setFace "WhiteHead_09";
player setSpeaker "ACE_NoVoice";
