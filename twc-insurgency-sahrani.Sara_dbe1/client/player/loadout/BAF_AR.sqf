comment "Exported from Arsenal by Crow";

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
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
player addItemToUniform "ACRE_PRC343_ID_2";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addVest "UK3CB_BAF_V_Osprey_MG_A";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_556_200Rnd";};
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_200Rnd_T";};
player addHeadgear "UK3CB_BAF_H_Mk7_Scrim_A";

comment "Add weapons";
player addWeapon "UK3CB_BAF_L110A2";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
player addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "rhsusf_ANPVS_14";
