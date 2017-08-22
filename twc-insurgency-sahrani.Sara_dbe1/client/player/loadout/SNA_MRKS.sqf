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
this forceAddUniform "rhsgref_uniform_ERDL";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_quikclot";};
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
this addItemToUniform "ACE_tourniquet";
this addItemToUniform "ACRE_PRC152";
this addItemToUniform "ACE_MapTools";
this addItemToUniform "ACE_Clacker";
this addVest "rhsgref_TacVest_ERDL";
this addItemToVest "Chemlight_green";
this addItemToVest "HandGrenade";
for "_i" from 1 to 3 do {this addItemToVest "CUP_18Rnd_9x19_Phantom";};
for "_i" from 1 to 8 do {this addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
this addBackpack "B_TacticalPack_rgr";
this addItemToBackpack "ACE_EntrenchingTool";
this addHeadgear "rhsgref_helmet_pasgt_erdl_rhino";
this addGoggles "rhs_balaclava1_olive";

comment "Add weapons";
this addWeapon "rhs_weap_svdp";
this addPrimaryWeaponItem "rhs_acc_pso1m21";
this addWeapon "CUP_hgun_Phantom";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemcTab";
this linkItem "rhs_1PN138";