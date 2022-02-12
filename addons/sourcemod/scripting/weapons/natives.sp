public int Weapons_GetClientKnife_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);
	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}
	if(!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}
	char KnifeName[64];
	GetClientKnife(client, KnifeName, sizeof(KnifeName));
	SetNativeString(2, KnifeName, GetNativeCell(3));
	return 0;
}

public int Weapons_SetClientKnife_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);
	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}
	if(!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}
	char KnifeName[64];
	GetNativeString(2, KnifeName, 64);
	bool update = !!GetNativeCell(3);
	SetClientKnife(client, KnifeName, true, update);
	return 0;
}

public int Weapons_SetWeaponSkin_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);

	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}

	else if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	GetNativeString(2, weaponClass, sizeof(weaponClass));

	int skinId = GetNativeCell(3);

	SetClientWeaponSkin(client, weaponClass, skinId);
	return 0;
}

public int Weapons_SetWeaponSeed_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);
	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}
	else if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	GetNativeString(2, weaponClass, sizeof(weaponClass));

	int seed = GetNativeCell(3);

	SetClientWeaponSeed(client, weaponClass, seed);
	return 0;
}

public int Weapons_SetWeaponFloat_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);

	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}

	else if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	GetNativeString(2, weaponClass, sizeof(weaponClass));

	float floatValue = GetNativeCell(3);

	SetClientWeaponFloat(client, weaponClass, floatValue);
	return 0;
}

public int Weapons_SetWeaponStatTrakStatus_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);

	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}

	if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	GetNativeString(2, weaponClass, sizeof(weaponClass));

	bool isStatTrak = !!GetNativeCell(3);

	SetClientWeaponStatTrakStatus(client, weaponClass, isStatTrak);
	return 0;
}

public int Weapons_SetWeaponStatTrakCount_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);

	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}

	if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	GetNativeString(2, weaponClass, sizeof(weaponClass));

	int statTrakCt = GetNativeCell(3);

	SetClientWeaponStatTrakCount(client, weaponClass, statTrakCt);
	return 0;
}

public int Weapons_SetWeaponStatNameTag_Native(Handle plugin, int numparams)
{
	int client = GetNativeCell(1);

	if (client < 1 || client > MaxClients)
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Invalid client index (%d).", client);
	}

	if (!IsClientInGame(client))
	{
		return ThrowNativeError(SP_ERROR_NATIVE, "Client (%d) is not in game.", client);
	}

	char weaponClass[64];
	char nameTag[128];

	GetNativeString(2, weaponClass, sizeof(weaponClass));
	GetNativeString(3, nameTag, sizeof(nameTag));

	SetClientWeaponNameTag(client, weaponClass, nameTag);
	return 0;
}