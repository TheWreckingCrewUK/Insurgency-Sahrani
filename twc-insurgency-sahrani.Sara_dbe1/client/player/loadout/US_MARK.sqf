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
this forceAddUniform "rhs_uniform_cu_ocp";
this addItemToUniform "FirstAidKit";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACRE_PRC148";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_tourniquet";
this addItemToUniform "Chemlight_green";
this addVest "rhsusf_spcs_ocp";
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellGreen";
this addItemToVest "Chemlight_green";
this addItemToVest "HandGrenade";
this addBackpack "rhsusf_assault_eagleaiii_ocp";
this addHeadgear "rhsusf_ach_helmet_camo_ocp";
this addGoggles "G_Bandanna_khk";

comment "Add weapons";
this addWeapon "rhs_weap_m14ebrri";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
this addPrimaryWeaponItem "ACE_optic_SOS_PIP";
this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
this addWeapon "rhsusf_weap_m1911a1";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemMicroDAGR";
this linkItem "rhsusf_ANPVS_14";