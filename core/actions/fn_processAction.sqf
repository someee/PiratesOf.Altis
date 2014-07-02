/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1200,"Reinige Oel"];};
	case "diamond": {["diamond","diamondc",1350,"Schleife Diamanten"]};
	case "copper": {["copperore","copper_r",750,"Schmelze Kupfer"]};
	case "iron": {["ironore","iron_r",1120,"Schmelze Eisen"]};
	case "sand": {["sand","glass",650,"Schmelze Sand"]};
	case "salt": {["salt","salt_r",450,"Verarbeite Salz"]};
	case "cocaine": {["cocaine","cocainep",1500,"Extrahiere Kokain"]};
	case "marijuana": {["cannabis","marijuana",500,"Trockhne Marihuana"]};
	case "heroin": {["heroinu","heroinp",1720,"Synthetisiere Schlafmohn"]};
	case "cement": {["rock","cement",350,"Mische Zement"]};
	case "hopfen": {["hopfen","bier",250,"Braue Bier"]};
	case "chem": {["chem","lsd",250,"Produziere LSD"]};
	case "getreide": {["getreide","nudeln",250,"Knete Teig"]};
	case "kaffee": {["kaffee","kaffeepulver",250,"Mahle Kaffee"]};
	case "trauben": {["trauben","wein",250,"Keltere Wein"]};
	case "tabak": {["tabak","zigaretten",250,"Trockne Tabak"]};
	case "zucker": {["zuckerrohr","zucker",250,"Zerkleinere Zuckerrohr"]};
	case "whiskey": {["getreide","whiskey",250,"Ruehre Maische"]};
	case "zigarren": {["tabak","zigarren",250,"Drehe Tabak"]};
	case "rum": {["zuckerrohr","rum",250,"Destilliere Rum"]};
	case "aluminium": {["aluminium","aluminiumbarren",250,"Schmelze Aluminium"]};
	case "holz": {["holz","holzkohle",250,"Verkohle Holz"]};
	case "schwefel": {["schwefel","schwefelpulver",250,"Zerkleinere Schwefel"]};
	case "silber": {["silber","silberbarren",250,"Schmelze Silber"]};
	case "silizium": {["silizium","halbleiter",250,"Produziere Halbleiter"]};
	case "zinn": {["zinn","zinnbarren",250,"Schmelze Zinn"]};
	case "gold": {["gold","goldbarren",250,"Schmelze Gold"]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "Du musst innerhalb von 10 Metern bleiben um zu verarbeiten."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["Du hast %1 zu %2 verarbeitet",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format["Du brauchst $%1 um ohne Lizenz zu verarbeiten!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "Du musst innerhalb von 10 Metern bleiben um zu verarbeiten."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format["Du brauchst $%1 um ohne Lizenz zu verarbeiten!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["Du hast %1 für $%3 zu %2 verarbeitet",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	