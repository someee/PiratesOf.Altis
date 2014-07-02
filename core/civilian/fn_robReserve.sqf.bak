/*
	File: fn_robReserve.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for robbing the federal reserve.
*/
private["_vault","_funds","_timer","_toFar"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = [_this,1,-1,[0]] call BIS_fnc_param;
_toFar = false;

if(isNull _vault OR _funds == -1) exitWith {}; //Bad data
if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Du musst innerhalb von 10 Metern zum Tresor stehen"};

if(_funds < 50000) exitWith{[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Die Bank ist leer";};

_timer = time + (15 * 60); //Default timer is 10 minutes to rob.
titleText["Breche Tresor auf","PLAIN"];
[[2,"$$$ Die Nationalbank wird ausgeraubt!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[_vault],"life_fnc_bankalarmsound",nil,true] spawn life_fnc_MP;


while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = [(_timer - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
	hintSilent format["Du musst innerhalb von 15m bleiben!\n\nZeit verbleibend:\n %1\n\nDistanz: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	sleep 0.1;
};

switch(true) do
{
	case (_toFar):
	{
		hint "Du hast dich zu weit entfernt, Bankraub fehlgeschlagen!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "Du bist gestorben, Bankraub fehlgeschlagen.";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "Du wurdest getazert, Bankraub fehlgeschlagen!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Du hast erfolgreich $%1 gestohlen\n\nDeine Konten wurden für 10 Minuten gesperrt.",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 600;
			life_use_atm = true;
		};
		life_cash = life_cash + _funds;
		[[_vault,1,_funds],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
};