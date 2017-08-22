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
this forceAddUniform "UK3CB_BAF_U_RolledUniform_MTP";
this addItemToUniform "FirstAidKit";
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_tourniquet";
this addVest "UK3CB_BAF_V_Osprey";
this addItemToVest "ACE_EntrenchingTool";
this addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {this addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {this addItemToVest "UK3CB_BAF_9_17Rnd";};
for "_i" from 1 to 3 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
this addBackpack "UK3CB_BAF_B_Kitbag_MTP";

this addHeadgear "UK3CB_BAF_H_CrewHelmet_A";

comment "Add weapons";
this addWeapon "UK3CB_BAF_L22A2";
this addPrimaryWeaponItem "UK3CB_BAF_SpecterLDS";
this addWeapon "UK3CB_BAF_L131A1";
this addWeapon "ACE_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemcTab";
this linkItem "UK3CB_BAF_HMNVS";