/// @description Remember the state of the game

//Stop the music
audio_stop_sound(snd_bonusmusic)

//Clear the state of the game if all cards were flipped
if count = 18
    ds_map_clear(global.cardgame)

//Otherwise
else
{

    //Remember the number of cards flipped
    ds_map_replace(global.cardgame,"COUNT",count)

    //For all cards
    with obj_card
    {

        //Remember cards that are flipped
        if sprite_index = spr_cardgame_cards
            ds_map_replace(global.cardgame,string(id),1)

    }

}

