#include "iwa_10.h"

EvtScript N(EVS_SetupMusic) = {
    EVT_CALL(SetMusicTrack, 0, SONG_MT_RUGGED, 0, 8)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PushSong) = {
    EVT_CALL(StopSound, SOUND_80000009)
    EVT_CALL(PushSong, SONG_NEW_PARTNER, 0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PopSong) = {
    EVT_CALL(FadeOutMusic, 0, 500)
    EVT_WAIT(15)
    EVT_CALL(PopSong)
    EVT_CALL(PlaySoundAtF, SOUND_80000009, SOUND_SPACE_MODE_1, -560, 0, -233)
    EVT_RETURN
    EVT_END
};
