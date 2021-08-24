import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:relax/soundcard.dart';
import 'package:relax/styles.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with AutomaticKeepAliveClientMixin {
  static AudioPlayer fixedPlayer1 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer2 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer3 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer4 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer5 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer6 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer7 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer8 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer9 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer10 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer11 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer12 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer13 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer14 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer15 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer16 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);

  AudioCache audioCache1 = AudioCache(fixedPlayer: fixedPlayer1);
  AudioCache audioCache2 = AudioCache(fixedPlayer: fixedPlayer2);
  AudioCache audioCache3 = AudioCache(fixedPlayer: fixedPlayer3);
  AudioCache audioCache4 = AudioCache(fixedPlayer: fixedPlayer4);
  AudioCache audioCache5 = AudioCache(fixedPlayer: fixedPlayer5);
  AudioCache audioCache6 = AudioCache(fixedPlayer: fixedPlayer6);
  AudioCache audioCache7 = AudioCache(fixedPlayer: fixedPlayer7);
  AudioCache audioCache8 = AudioCache(fixedPlayer: fixedPlayer8);
  AudioCache audioCache9 = AudioCache(fixedPlayer: fixedPlayer9);
  AudioCache audioCache10 = AudioCache(fixedPlayer: fixedPlayer10);
  AudioCache audioCache11 = AudioCache(fixedPlayer: fixedPlayer11);
  AudioCache audioCache12 = AudioCache(fixedPlayer: fixedPlayer12);
  AudioCache audioCache13 = AudioCache(fixedPlayer: fixedPlayer13);
  AudioCache audioCache14 = AudioCache(fixedPlayer: fixedPlayer14);
  AudioCache audioCache15 = AudioCache(fixedPlayer: fixedPlayer15);
  AudioCache audioCache16 = AudioCache(fixedPlayer: fixedPlayer16);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: kPrimaryBlue,
      child: GridView.count(
        primary: false,
        padding: EdgeInsets.all(15.0),
        crossAxisSpacing: 35.0,
        mainAxisSpacing: 35.0,
        crossAxisCount: 2,
        children: [
          SoundCard(
            assetName: 'rain',
            player: fixedPlayer1,
            audio: audioCache1,
          ),
          SoundCard(
            assetName: 'summernight',
            player: fixedPlayer2,
            audio: audioCache2,
          ),
          SoundCard(
            assetName: 'water',
            player: fixedPlayer3,
            audio: audioCache3,
          ),
          SoundCard(
            assetName: 'forest',
            player: fixedPlayer4,
            audio: audioCache4,
          ),
          SoundCard(
            assetName: 'waterstream',
            player: fixedPlayer5,
            audio: audioCache5,
          ),
          SoundCard(
            assetName: 'seaside',
            player: fixedPlayer6,
            audio: audioCache6,
          ),
          SoundCard(
            assetName: 'wind',
            player: fixedPlayer7,
            audio: audioCache7,
          ),
          SoundCard(
            assetName: 'thunderstorm',
            player: fixedPlayer8,
            audio: audioCache8,
          ),
          SoundCard(
            assetName: 'leaves',
            player: fixedPlayer9,
            audio: audioCache9,
          ),
          SoundCard(
            assetName: 'fireplace',
            player: fixedPlayer10,
            audio: audioCache10,
          ),
          SoundCard(
            assetName: 'brownnoise',
            player: fixedPlayer11,
            audio: audioCache11,
          ),
          SoundCard(
            assetName: 'coffeeshop',
            player: fixedPlayer12,
            audio: audioCache12,
          ),
          SoundCard(
            assetName: 'train',
            player: fixedPlayer13,
            audio: audioCache13,
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
