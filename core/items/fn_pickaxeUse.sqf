/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
if (life_action_gather) exitWith {hint "Du benutzt bereits deine Spitzhacke"};
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val","_dice"];
_dice = round(random 6) + 1;
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = _dice;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = _dice;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = _dice;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = _dice;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = _dice;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = _dice;};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = _dice;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = _dice;};
	case (player distance (getMarkerPos "aluminium_1") < 50): {_mine = "aluminium"; _val = _dice;};
	case (player distance (getMarkerPos "holz_1") < 50): {_mine = "holz"; _val = _dice;};
	case (player distance (getMarkerPos "schwefel_1") < 50): {_mine = "schwefel"; _val = _dice;};
	case (player distance (getMarkerPos "silber_1") < 50): {_mine = "silber"; _val = _dice;};
	case (player distance (getMarkerPos "silizium_1") < 50): {_mine = "silizium"; _val = _dice;};
	case (player distance (getMarkerPos "zinn_1") < 50): {_mine = "zinn"; _val = _dice;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "Du bist in keiner Mine!"};
if(vehicle player != player) exitWith {hint "Du kannst nicht aus deinem Auto heraus abbauen!";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};

delay_pickaxe = true;

life_action_gather = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %2 %1 abgebaut",_itemName,_diff],"PLAIN"];
};

sleep 0.5;
delay_pickaxe = false;
life_action_gather = false;