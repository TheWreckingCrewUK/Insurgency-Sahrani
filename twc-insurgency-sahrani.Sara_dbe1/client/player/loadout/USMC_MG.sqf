comment "Exported from Arsenal by jayman";

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
player forceAddUniform "rhs_uniform_FROG01_d";
player addItemToUniform "ACRE_PRC148";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addVest "rhsusf_spc_mg";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "SmokeShell";
player addItemToVest "rhsusf_100Rnd_762x51";
player addBackpack "rhsusf_assault_eagleaiii_coy";
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
player addHeadgear "rhsusf_mich_helmet_marpatd";

comment "Add weapons";
player addWeapon "rhs_weap_m240B";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "rhsusf_ANPVS_14";