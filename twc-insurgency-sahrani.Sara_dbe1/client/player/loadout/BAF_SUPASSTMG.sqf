comment "Exported from Arsenal by Crow";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
this addItemToUniform "FirstAidKit";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "Chemlight_green";
this addVest "UK3CB_BAF_V_Osprey_Rifleman_C";
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellGreen";
this addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {this addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {this addItemToVest "UK3CB_BAF_9_17Rnd";};
for "_i" from 1 to 3 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
this addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";
for "_i" from 1 to 3 do {this addItemToBackpack "UK3CB_BAF_762_100Rnd";};
this addHeadgear "UK3CB_BAF_H_Mk7_Camo_B";
this addGoggles "UK3CB_BAF_G_Tactical_Clear";

comment "Add weapons";
this addWeapon "UK3CB_BAF_L85A2_EMAG";
this addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS";
this addWeapon "UK3CB_BAF_L131A1";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "UK3CB_BAF_HMNVS";