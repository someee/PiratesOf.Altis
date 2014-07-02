[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";};
		switch(life_hunger) do {
			case 30: {hint "Du hast lange nichts mehr gegessen.!";};
			case 20: {hint "Du hast lange nichts mehr gegessen, du beginnst zu verhungern.";};
			case 10: {hint "Du bist am verhungern. Finde schnell etwas zu essen";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint "Du bist verdurstet.";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "Du bist verdurstet.";};
			switch(life_thirst) do 
			{
				case 30: {hint "Du hast lange nichts mehr getrunken.";};
				case 20: {hint "Du hast sehr lange nichts mehr getrunken, du beginnst zu dehydrieren!"; player setFatigue 1;};
				case 10: {hint "Du bist am dehydrieren. Finde schnell etwas zu trinken!"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		// medic
		if (backpack player == "B_Kitbag_sgg ") then { _load = 40; };
		// civs
		if (backpack player == "B_AssaultPack_cbr") then { _load = 25; };		
		if (backpack player == "B_TacticalPack_oli") then { _load = 30; };
		if (backpack player == "B_FieldPack_ocamo") then { _load = 35; };
		if (backpack player == "B_Bergen_sgg") then { _load = 40; };
		if (backpack player == "B_Kitbag_cbr") then { _load = 45; };
		if (backpack player == "B_Kitbag_mcamo") then { _load = 45; };
		if (backpack player == "B_Carryall_oli") then { _load = 50; };
		if (backpack player == "B_Carryall_khk") then { _load = 50; };
		// cops
		
		if (backpack player == "B_FieldPack_blk") then { _load = 30; };
		if (backpack player == "B_AssaultPack_blk") then { _load = 35; };
		if (backpack player == "B_Kitbag_mcamo") then { _load = 40; };
		if (backpack player == "B_Bergen_blk") then { _load = 45; };		
		if (backpack player == "B_Carryall_mcamo") then { _load = 50; };
		
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Du schleppst zuviel mit dir rum. Du kannst nur noch gehen bis du etwas aus deinem Rucksack entfernst!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};



[] spawn
{	
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 4);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [0,"textures\uniforms\medic_backpack.paa"];};
		waitUntil {backpack player != _bp};		if(backpack player == "") then 
		{
		life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 4);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};