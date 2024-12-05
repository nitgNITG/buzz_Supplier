// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import 'package:just_audio/just_audio.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future playSound() async {
  AssetsAudioPlayer.newPlayer().open(
    Audio.network(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/buzzer-supplier-0i7udo/assets/xihesmlr9crk/Sound2.mp3"),
    autoStart: true,
    playInBackground: PlayInBackground.enabled,
  );
}
