import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  AudioPlayer _audioPlayer;
  AudioCache _audioCache;
  bool isPlaying = false;
  final audioPath = "audio/birthday_song.mp3";

  @override
  void initState() {
    // TODO: implement initState
    _audioPlayer = AudioPlayer();
    _audioCache = AudioCache(fixedPlayer: _audioPlayer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _audioPlayer.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
    // TODO: implement build
    return Container(
      child: !isPlaying
          ? FlatButton.icon(
              onPressed: () {
                _audioCache.play(audioPath);
                setState(() {
                  isPlaying = true;
                });
              },
              icon: Icon(
                Icons.play_arrow,
                size: 32,
              ),
              label: Text("Play"),
              color: Colors.blue[800],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              height: 48,
            )
          : FlatButton.icon(
              onPressed: () {
                _audioPlayer.stop();
                setState(() {
                  isPlaying = false;
                });
              },
              icon: Icon(
                Icons.stop,
                size: 32,
              ),
              label: Text("Stop"),
              color: Colors.blue[800],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              height: 48,
            ),
    );
  }
}
