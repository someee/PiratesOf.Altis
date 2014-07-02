/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Roh�l"};
	case "life_inv_oilp": {"Raffiniertes �l"};
	case "life_inv_heroinu": {"Schlafmohn"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Kaninchenfleisch"};
	case "life_inv_salema": {"Salema"};
	case "life_inv_ornate": {"Ornate"};
	case "life_inv_mackerel": {"Mackerel"};
	case "life_inv_tuna": {"Thunfisch"};
	case "life_inv_mullet": {"Mullet"};
	case "life_inv_catshark": {"Katzenhai"};
	case "life_inv_turtle": {"Schildkr�tenfleisch"};
	case "life_inv_fishingpoles": {"Angelrute"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkr�tensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer Kanister"};
	case "life_inv_fuelF": {"Voller Kanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Raffiniertes Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Rohdiamant"};
	case "life_inv_diamondr": {"Geschliffener Diamant"};
	case "life_inv_tbacon": {"Speck"};
	case "life_inv_redgull": {"Piratenpower"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirisch"};
	case "life_inv_coke": {"Kokabl�tter"};
	case "life_inv_cokep": {"Kokain"};
	case "life_inv_spikeStrip": {"Nagelbrett"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_hopfen": {"Hopfen"};
	case "life_inv_bier": {"Bier"};
	case "life_inv_chem": {"Chemikalien"};
	case "life_inv_lsd": {"LSD"};
	case "life_inv_getreide": {"Getreide"};
	case "life_inv_nudeln": {"Nudeln"};
	case "life_inv_whiskey": {"Whiskey"};
	case "life_inv_kaffee": {"Kaffeebohnen"};
	case "life_inv_kaffeep": {"Kaffeepulver"};
	case "life_inv_trauben": {"Trauben"};
	case "life_inv_wein": {"Wein"};
	case "life_inv_tabak": {"Tabak"};
	case "life_inv_zigaretten": {"Zigaretten"};
	case "life_inv_zigarren": {"Zigarren"};
	case "life_inv_zucker": {"Zuckerrohr"};
	case "life_inv_zuckerp": {"Zucker"};
	case "life_inv_rum": {"Rum"};
	case "life_inv_alu": {"Aluminiumerz"};
	case "life_inv_alup": {"Aluminiumbarren"};
	case "life_inv_holz": {"Holz"};
	case "life_inv_holzp": {"Holzkohle"};
	case "life_inv_schwefel": {"Schwefel"};
	case "life_inv_schwefelp": {"Schwefelpulver"};
	case "life_inv_silber": {"Silbererz"};
	case "life_inv_silberp": {"Silberbarren"};
	case "life_inv_silizium": {"Siliziumerz"};
	case "life_inv_halbleiter": {"Halbleiter"};
	case "life_inv_zinn": {"Zinnerz"};
	case "life_inv_zinnp": {"Zinnbarren"};
	case "life_inv_blastingcharge": {"Sprengladung"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Bombenentsch�rfer"};
	
	//License Block
	case "license_civ_donator": {"Donator-Status"};
	case "license_civ_driver": {"PKW-Fuehrerschein"};
	case "license_civ_air": {"Pilotenschein"};
	case "license_civ_heroin": {"Heroinverarbeitung"};
	case "license_civ_gang": {"Ganglizenz"};
	case "license_civ_oil": {"Oelreinigung"};
	case "license_civ_dive": {"Tauchlizenz"};
	case "license_civ_boat": {"Bootslizenz"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Pilotenschein"};
	case "license_cop_sek": {"SEK-Ausbildung"};
	case "license_cop_sek_sniper": {"Scharfsch�tzenausbildung"};
	case "license_cop_cg": {"Kuestenwache"};
	case "license_civ_rebel": {"Rebellenlizenz"};
	case "license_civ_truck": {"LKW-Fuehrerschein"};
	case "license_civ_diamond": {"Diamantenschleifer"};
	case "license_civ_copper": {"Kupferschmelzer"};
	case "license_civ_iron": {"Eisenschmelzer"};
	case "license_civ_sand": {"Sandschmelzer"};
	case "license_civ_salt": {"Salzverarbeitung"};
	case "license_civ_coke": {"Kokainverarbeitung"};
	case "license_civ_marijuana": {"Marihuanaverarbeitung"};
	case "license_civ_cement": {"Zementmischer"};
	case "license_med_air": {"Pilotenschein"};
	case "license_civ_brauer": {"Bierbrauer"};
	case "license_civ_chemie": {"Chemikalienverarbeitung"};
	case "license_civ_nudeln": {"Getreideverarbeitung"};
	case "license_civ_kaffee": {"Kaffeeverarbeitung"};
	case "license_civ_wein": {"Weinkeltern"};
	case "license_civ_zigaretten": {"Zigarettendreher"};
	case "license_civ_zucker": {"Zuckerverarbeitung"};
	case "license_civ_whiskey": {"Whiskeydestillierer"};
	case "license_civ_zigarren": {"Zigarrendreher"};
	case "license_civ_rum": {"Rumbrenner"};
	case "license_civ_aluminium": {"Aliuminiumschmelzer"};
	case "license_civ_holz": {"Holzverarbeitung"};
	case "license_civ_schwefel": {"Schwefelverarbeitung"};
	case "license_civ_silizium": {"Siliziumverarbeitung"};
	case "license_civ_zinn": {"Zinnschmelzer"};
	case "license_civ_gold": {"Goldschmelzer"};
	case "license_civ_silber": {"Silberschmelzer"}
};
