/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "handcuffs";
_unit say3D "handcuffs";
_unit setVariable["restrained",true,true];
[[_unit, "handcuffs",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 was restrained by %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;