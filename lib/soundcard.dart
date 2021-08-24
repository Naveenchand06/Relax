import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'styles.dart';

// ignore: must_be_immutable
class SoundCard extends StatefulWidget {
  final String assetName;
  AudioPlayer player;
  final AudioCache audio;

  SoundCard({
    @required this.assetName,
    @required this.player,
    @required this.audio,
  });

  @override
  _SoundCardState createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard>
    with AutomaticKeepAliveClientMixin {
  // Volume varies from 0 - 100
  double volume = 60.0;
  bool sliderVisible = false;
  bool selectedStatus = false;

  Future playLocal(String name) async {
    if (widget.player.state == AudioPlayerState.PAUSED) {
      widget.player.resume();
    } else {
      widget.player = await widget.audio
          .loop('audio/$name.m4a', volume: 0.6, stayAwake: true);
    }
  }

  Future pauseLocal() async {
    widget.player.pause();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          sliderVisible = !sliderVisible;
          selectedStatus = !selectedStatus;
          if (selectedStatus = true) {
            widget.player.state == AudioPlayerState.PLAYING
                ? pauseLocal()
                : playLocal(widget.assetName);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          boxShadow:
              selectedStatus ? kActiveCardDecoration : kInactiveCardDecoration,
          gradient: LinearGradient(
            begin: Alignment(-1.0, -4.0),
            end: Alignment(1.0, 4.0),
            colors: [
              Color(0xffeec0c6),
              Color(0xff7ee8fa),
              Colors.blue[100],
              Colors.blue[200],
              Colors.blue[300],
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/${widget.assetName}.png',
              height: 60.0,
              width: 60.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Visibility(
              visible: sliderVisible,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2.0,
                  activeTrackColor: Color(0xFF001E3D),
                  inactiveTrackColor: Colors.white,
                  thumbColor: Color(0xFF001E3D),
                  overlayColor: Color(0x29001E3D),
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 5.0,
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 10.0,
                  ),
                ),
                child: Slider(
                  value: volume,
                  min: 0,
                  max: 100,
                  onChanged: (double value) {
                    setState(() {
                      volume = value;
                    });
                    widget.player.setVolume(value / 100);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
