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
this addVest "rhsgref_TacVest_ERDL";
this addItemToVest "Chemlight_green";
this addItemToVest "HandGrenade";
for "_i" from 1 to 6 do {this addItemToVest "rhsgref_30rnd_556x45_m21";};
for "_i" from 1 to 2 do {this addItemToVest "rhsgref_30rnd_556x45_m21_t";};
for "_i" from 1 to 2 do {this addItemToVest "CUP_7Rnd_45ACP_1911";};
this addBackpack "B_TacticalPack_rgr";
this addHeadgear "rhsgref_helmet_pasgt_erdl";
this addGoggles "rhs_balaclava1_olive";

comment "Add weapons";
this addWeapon "rhs_weap_m21a_pr";
this addPrimaryWeaponItem "UK3CB_BAF_TA31F";
this addWeapon "CUP_hgun_Colt1911";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemcTab";
this linkItem "rhs_1PN138";