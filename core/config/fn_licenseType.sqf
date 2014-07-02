/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "donator": {_var = "license_civ_donator"};
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "sek": {_var = "license_cop_sek"}; //Swat License cost
			case "sek_sniper": {_var = "license_cop_sek_sniper"}; 
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "brauer": {_var = "license_civ_brauer"};
			case "chemie": {_var = "license_civ_chemie"};
			case "nudeln": {_var = "license_civ_nudeln"};
			case "kaffee": {_var = "license_civ_kaffee"};
			case "wein": {_var = "license_civ_wein"};
			case "zigaretten": {_var = "license_civ_zigaretten"};
			case "zucker": {_var = "license_civ_zucker"};
			case "whiskey": {_var = "license_civ_whiskey"};
			case "zigarren": {_var = "license_civ_zigarren"};
			case "rum": {_var = "license_civ_rum"};
			case "aluminium": {_var = "license_civ_aluminium"};
			case "holz": {_var = "license_civ_holz"};
			case "schwefel": {_var = "license_civ_schwefel"};
			case "silber": {_var = "license_civ_silber"};
			case "silizium": {_var = "license_civ_silizium"};
			case "zinn": {_var = "license_civ_zinn"};
			case "gold": {_var = "license_civ_gold"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_donator": {_var = "donator"};
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_brauer": {_var = "brauer"};
			case "license_civ_chemie": {_var = "chemie"};
			case "license_civ_nudeln": {_var = "nudeln"};
			case "license_civ_kaffee": {_var = "kaffee"};
			case "license_civ_wein": {_var = "wein"};
			case "license_civ_zigaretten": {_var = "zigaretten"};
			case "license_civ_zucker": {_var = "zucker"};
			case "license_civ_whiskey": {_var = "whiskey"};
			case "license_civ_zigarren": {_var = "zigarren"};
			case "license_civ_rum": {_var = "rum"};
			case "license_civ_aluminium": {_var = "aluminium"};
			case "license_civ_holz": {_var = "holz"};
			case "license_civ_schwefel": {_var = "schwefel"};
			case "license_civ_silber": {_var = "silber"};
			case "license_civ_silizium": {_var = "silizium"};
			case "license_civ_zinn": {_var = "zinn"};
			case "license_civ_gold": {_var = "gold"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;