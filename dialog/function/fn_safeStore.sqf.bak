#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_safeStore.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Gateway copy of fn_vehStoreItem but designed for the safe.
*/
private["_ctrl","_num"];
disableSerialization;
_ctrl = ctrlSelData(3503);
_num = ctrlText 3506;

//Error checks
if(!([_num] call fnc_isnumber)) exitWith {hint "Falsches Zahlenformat";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "Du kannst nicht weniger als 1 eingeben!";};
if(_ctrl != "goldbar") exitWith {hint "Es kann nichts anderes als Goldbarren im Tresor gelagert werden."};
if(_num > life_inv_goldbar) exitWith {hint format["Du hast keine %1 Goldbarren",_num];};

//Store it.
if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Konnte Gegenstände aus dem Inventar nicht in den Tresor legen.";};
_safeInfo = life_safeObj getVariable["safe",0];
life_safeObj setVariable["safe",_safeInfo + _num,true];

[life_safeObj] call life_fnc_safeInventory;