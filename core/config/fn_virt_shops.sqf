/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","holzkohle","trauben"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainep","heroinp","marijuana","lsd"]]};
	case "oil": {["Oel Haendler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas Haendler",["glass"]]};
	case "iron": {["Altis Metall Haendler",["iron_r","copper_r"]]};
	case "diamond": {["Diamanten Haendler",["diamond","diamondc"]]};
	case "salt": {["Salz Haendler",["salt_r"]]};
	case "cop": {["Polizei Haendler",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zement Haendler",["cement"]]};
	case "getraenke": {["Getraenkehandel",["bier","wein"]]};
	case "tabak": {["Tabakhaus",["zigaretten","zigarren","tabak"]]};
	case "speisen": {["Feinkosthandel",["nudeln"]]};
	case "kaffee": {["Kaffeehaus",["kaffeepulver","zucker"]]};
	case "alkohol": {["Pirats Spirituosen",["whiskey","rum"]]};
	case "aluminium": {["Aluminiumhandel",["aluminiumbarren"]]};
	case "schwefel": {["Schwefelhaftes",["schwefelpulver"]]};
	case "edelmetall": {["Glanzvolle Metalle",["silberbarren","goldbarren"]]};
	case "zinn": {["Zinnhandel",["zinnbarren"]]};
	case "elektro": {["Halbe Leiter",["halbleiter"]]};
};