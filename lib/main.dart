import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: const Text('Xylophone Audio Player'),
          centerTitle: true,
        ),
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
    return Center(
      child: Row(
        children: [
          Text(
            nouns.take(5).toString(),
            style: const TextStyle(fontSize: 20, color: Colors.amber),
          ),
          IconButton(
            onPressed: () async {
              final player=AudioPlayer();
              await player.setSource(AssetSource('note1.wav'));
              /*player.play(AssetSource('note1.wav'));*/
            },
            icon: const Icon(Icons.play_circle_outline),
            tooltip:'click On me to play audio',
          )
        ],
      ),
    );
  }
}
