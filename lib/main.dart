import 'dart:math';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: const Text('Xylophone Audio Player'),
          centerTitle: true,
        ),*/
        body: SafeArea(child: XylophoneBody()),
      ),
    );
  }
}

class XylophoneBody extends StatefulWidget {
  const XylophoneBody({Key? key}) : super(key: key);

  @override
  State<XylophoneBody> createState() => _XylophoneBodyState();
}

class _XylophoneBodyState extends State<XylophoneBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildKey(1,Colors.red),
        buildKey(2,Colors.orange),
        buildKey(3,Colors.yellow),
        buildKey(4,Colors.green),
        buildKey(5,Colors.teal),
        buildKey(6,Colors.blue),
        buildKey(7,Colors.purple),
      ],
    );
  }

  Widget buildKey(int soundNumber,Color btnColor){
    return Expanded(
      flex: 1,
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(btnColor)),
        child: Container(),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final player=AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
}

/*
class XylophoneBody extends StatefulWidget {
  const XylophoneBody({Key? key}) : super(key: key);

  @override
  State<XylophoneBody> createState() => _XylophoneBodyState();
}

class _XylophoneBodyState extends State<XylophoneBody> {
  int audioNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nouns.take(5).toString(),
            style: const TextStyle(fontSize: 20, color: Colors.amber),
          ),
          IconButton(
            onPressed: () async {
              setState(() {
                audioNumber=Random().nextInt(7)+1;
              });
              final player=AudioPlayer();
              */ /*await player.setSource(AssetSource('note1.wav'));*/ /*
              player.play(AssetSource('note$audioNumber.wav'));
            },
            icon: const Icon(Icons.play_circle_outline),
            tooltip:'click On me to play audio',
          )
        ],
      ),
    );
  }
}*/
