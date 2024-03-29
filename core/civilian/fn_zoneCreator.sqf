/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_hopfenZones","_getreideZones","_tabakZones","_zuckerZones","_kaffeeZones","_traubenZones","_chemZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_hopfenZones = ["hopfen_1"];
_getreideZones = ["getreide_1"];
_tabakZones = ["tabak_1"];
_zuckerZones = ["zucker_1"];
_kaffeeZones = ["kaffee_1"];
_traubenZones = ["trauben_1"];
_chemZones = ["chem_1"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Gather Apples',life_fnc_gatherApples,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Gather Peaches',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Gather Heroin',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Gather Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Gather Cocaine',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create hopfen zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Hopfen = player addAction['Sammel Hopfen',life_fnc_gatherHopfen,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Hopfen;"];
} foreach _hopfenZones;

//Create getreide zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Getreide = player addAction['Sammel Getreide',life_fnc_gatherGetreide,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Getreide;"];
} foreach _getreideZones;

//Create tabak zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tabak = player addAction['Sammel Tabak',life_fnc_gatherTabak,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Tabak;"];
} foreach _tabakZones;

//Create zucker zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Zucker = player addAction['Sammel Zucker',life_fnc_gatherZucker,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Zucker;"];
} foreach _zuckerZones;

//Create chem zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Chem = player addAction['Sammel Chemikalien',life_fnc_gatherChem,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Chem;"];
} foreach _chemZones;

//Create trauben zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Trauben = player addAction['Sammel Trauben',life_fnc_gatherTrauben,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Trauben;"];
} foreach _traubenZones;

//Create kaffee zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Kaffee = player addAction['Sammel Kaffee',life_fnc_gatherKaffee,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Kaffee;"];
} foreach _kaffeeZones;