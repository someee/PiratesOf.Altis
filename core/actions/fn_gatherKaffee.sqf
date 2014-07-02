/*
	File: fn_gatherKaffee.sqf
	Author: mysteryx
	
	Description:
	Gathers hopfen
*/
private["_sum"];
_sum = ["kaffee",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Kaffee"],"PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"kaffee",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Kaffee"],"PLAIN"];
	};
};

life_action_gather = false;