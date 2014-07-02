/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "hopfen": {"life_inv_hopfen"};
			case "bier": {"life_inv_bier"};
			case "chem": {"life_inv_chem"};
			case "lsd": {"life_inv_lsd"};
			case "getreide": {"life_inv_getreide"};
			case "nudeln": {"life_inv_nudeln"};
			case "whiskey": {"life_inv_whiskey"};
			case "kaffee": {"life_inv_kaffee"};
			case "kaffeep": {"life_inv_kaffeep"};
			case "trauben": {"life_inv_trauben"};
			case "wein": {"life_inv_wein"};
			case "tabak": {"life_inv_tabak"};
			case "zigarren": {"life_inv_zigarren"};
			case "zigaretten": {"life_inv_zigaretten"};
			case "zucker": {"life_inv_zucker"};
			case "zuckerp": {"life_inv_zuckerp"};			
			case "rum": {"life_inv_rum"};
			case "alu": {"life_inv_alu"};
			case "alup": {"life_inv_alup"};
			case "holz": {"life_inv_holz"};
			case "holzp": {"life_inv_holzp"};
			case "schwefel": {"life_inv_schwefel"};
			case "schwefelp": {"life_inv_schwefelp"};
			case "silber": {"life_inv_silber"};
			case "silberp": {"life_inv_silberp"};
			case "silizium": {"life_inv_silizium"};
			case "halbleiter": {"life_inv_halbleiter"};
			case "zinn": {"life_inv_zinn"};
			case "zinnp": {"life_inv_zinnp"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};			
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_hopfen": {"hopfen"};
			case "life_inv_bier": {"bier"};
			case "life_inv_chem": {"chem"};
			case "life_inv_lsd": {"lsd"};
			case "life_inv_getreide": {"getreide"};
			case "life_inv_nudeln": {"nudeln"};
			case "life_inv_whiskey": {"whiskey"};
			case "life_inv_kaffee": {"kaffee"};
			case "life_inv_kaffeep": {"kaffeep"};
			case "life_inv_trauben": {"trauben"};
			case "life_inv_wein": {"wein"};
			case "life_inv_tabak": {"tabak"};
			case "life_inv_zigarren": {"zigarren"};
			case "life_inv_zigaretten": {"zigaretten"};
			case "life_inv_zucker": {"zucker"};
			case "life_inv_zuckerp": {"zuckerp"};
			case "life_inv_rum": {"rum"};	
			case "life_inv_alu": {"alu"};
			case "life_inv_alup": {"alup"};
			case "life_inv_holz": {"holz"};
			case "life_inv_holzp": {"holzp"};
			case "life_inv_schwefel": {"schwefel"};
			case "life_inv_schwefelp": {"schwefelp"};
			case "life_inv_silber": {"silber"};
			case "life_inv_silberp": {"silberp"};
			case "life_inv_silizium": {"silizium"};
			case "life_inv_halbleiter": {"halbleiter"};
			case "life_inv_zinn": {"zinn"};
			case "life_inv_zinnp": {"zinnp"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
		};
	};
};
