///Activate

event_inherited();

active = false;

if (canSummonBoss) || (global.stormPhase == K_STORMPHASE_CLEAR)
{
	active = true;
	
	if (instance_exists_fast(activationClient))
    {
        if (point_distance(x,y,activationClient.x,activationClient.y) <= range) { 
			in_range = true;    
			global.teleporterFound = true;
		}
		
        if (wantToActivate) && (in_range)
        {
			if (canSummonBoss)
			{
				var boss = instance_create_layer(x,y,"Interactive",fx_enemyTeleport);
				
				var bossList = ds_list_create();
				if (!global.bossTurlekSpawned) ds_list_add(bossList,obj_turlekStorm);
				if (!global.bossKamikingSpawned) ds_list_add(bossList,obj_kamikingStorm);
				if (!global.bossKrekSpawned) ds_list_add(bossList,obj_krekStorm);
				if (!global.bossSkeletonSpawned) ds_list_add(bossList,obj_skeletonStorm);
				var randomBoss = irandom(ds_list_size(bossList)-1);
				boss.enemy = ds_list_find_value(bossList,randomBoss);
				ds_list_destroy(bossList);
				
				if (randomBoss == obj_turlekStorm) { global.spawnRotation = 0; global.bossTurlekSpawned = true; }
				else if (randomBoss == obj_krekStorm)  { global.spawnRotation = 1; global.bossKrekSpawned = true; }
				else if (randomBoss == obj_kamikingStorm)  { global.spawnRotation = 2; global.bossKamikingSpawned = true; }
				else if (randomBoss == obj_skeletonStorm) {  global.spawnRotation = 3; global.bossSkeletonSpawned = true; }
				difficulty_update(true);
				
				global.stormPhase = K_STORMPHASE_TIMER;
				canSummonBoss = false;
			}
			if (global.stormPhase == K_STORMPHASE_CLEAR)
			{
				global.currentDifficulty+=1;
				global.level_complete = true;
			}
		}
	}
}