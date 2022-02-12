#if defined _weapons_included_
  #endinput
#endif
#define _weapons_included_

//Retrieves and stores client's knife entity name in 'sKnife'. returns 'weapon_knife' if selection is 'OwnKnife'.
native void Weapons_GetClientKnife(int client, char[] sKnife, int Size);

//Sets client's knife to what is stored in 'sKnife'. Throws Native Error if knife name isn't valid. Update = Store the 'sKnife' in client's mysql table?
native void Weapons_SetClientKnife(int client, char[] sKnife, bool update);

//Sets client's weapon skin to its respective skinId
native void Weapons_SetWeaponSkin(int client, char[] weaponClass, int skinId);

//Sets client's weapon skin to have a specific seed
native void Weapons_SetWeaponSeed(int client, char[] weaponClass, int seed);

//Sets client's weapon skin to have a specific float value
native void Weapons_SetWeaponFloat(int client, char[] weaponClass, float floatValue);

//Enable or disable StatTrak on a client's weapon class
native void Weapons_SetWeaponStatTrakStatus(int client, char[] weaponClass, bool isStatTrak);

//Sets client's weapon class StatTrak count
native void Weapons_SetWeaponStatTrakCount(int client, char[] weaponClass, int statTrakCt);

//Sets client's weapon class Nametag
native void Weapons_SetWeaponNameTag(int client, char[] weaponClass, char[] nameTag);

//Called before client selects a knife from !knife. return Plugin_Handled to block.
forward Action Weapons_OnClientKnifeSelectPre(int client, int knifeId, char[] knifeName);

//Called after client selects a knife from !knife.
forward void Weapons_OnClientKnifeSelectPost(int client, int knifeId, char[] knifeName);
