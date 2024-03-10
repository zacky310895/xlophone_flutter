import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: RawMaterialButton(
        fillColor: color,
        onPressed: () => playSound(soundNumber!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.red, soundNumber: 1),
                  buildKey(color: Colors.yellow, soundNumber: 2),
                  buildKey(color: Colors.green, soundNumber: 3),
                  buildKey(color: Colors.blue, soundNumber: 4),
                  buildKey(color: Colors.pink, soundNumber: 5),
                  buildKey(color: Colors.purple, soundNumber: 6),
                  buildKey(color: Colors.white, soundNumber: 7),
                ],
              ),
            )));
  }
}
// coba dei
