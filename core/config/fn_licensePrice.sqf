/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "donator": {1};
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "sek": {35000}; //Swat License cost
	case "sek_sniper": {35000};
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {19500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {250000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {30000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "brauer": {12000};
	case "chemie": {12000};
	case "nudeln": {12000};
	case "kaffee": {12000};
	case "wein": {12000};
	case "zigaretten": {12000};
	case "zucker": {12000};
	case "whiskey": {12000};
	case "zigarren": {12000};
	case "rum": {12000};
	case "aluminium": {12000};
	case "holz": {12000};
	case "schwefel": {12000};
	case "silber": {12000};
	case "silizium": {12000};
	case "zinn": {12000};
	case "gold": {12000};
	
};