if (is_mouse_over(id))
{
    image_index = 1;
    if mouse_check_button_pressed(mb_left)
    {
        url_open( "https://store.steampowered.com/app/633080/Relic_Hunters_Legend/?utm_source=relic-hunters-zero&utm_medium=in-game&utm_campaign=steam-store" );
    }
}
else  image_index = 0;

