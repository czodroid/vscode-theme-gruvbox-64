package org.czo.badumtsss;

// Filename: a.java
// Author: Olivier Sirol <czo@free.fr>
// License: GPL-2.0 (http://www.gnu.org/copyleft)
// File Created: 29 May 2024
// Last Modified: Wednesday 29 May 2024, 04:07
// $Id:$
// Edit Time: 0:00:13
// Description:
//
// Copyright: (C) 2024 Olivier Sirol <czo@free.fr>

import android.app.Activity;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.WindowManager;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Do not listen for touch events
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE);

        // Stream at max volume
        // final AudioManager audioManager = (AudioManager) getApplicationContext().getSystemService(Context.AUDIO_SERVICE);
        // final int oldvol = audioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        // audioManager.setStreamVolume(AudioManager.STREAM_MUSIC, audioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC), AudioManager.FLAG_REMOVE_SOUND_AND_VIBRATE);

        final MediaPlayer mediaPlayer = MediaPlayer.create(getApplicationContext(), R.raw.badum);
        mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);

        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                mp.release();
                // audioManager.setStreamVolume(AudioManager.STREAM_MUSIC, oldvol, 0);
            }
        });

        mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
            @Override
            public void onPrepared(MediaPlayer mp) {
                mp.start();
            }
        });

        finish();
    }
}

