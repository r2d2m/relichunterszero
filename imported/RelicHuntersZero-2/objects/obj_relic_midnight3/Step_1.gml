///Activation
event_inherited();

if (global.relic_midnight3)
{
    active = true;
}

//Destroy if full Relic is unlocked already
if (global.relic_midnight_beer) instance_destroy();

