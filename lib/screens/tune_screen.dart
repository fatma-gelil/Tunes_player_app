import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color.fromARGB(255, 222, 187, 199), sound: 'note1.wav'),
    TuneModel(color: Color.fromARGB(255, 224, 156, 179), sound: 'note2.wav'),
    TuneModel(color: Color.fromARGB(255, 214, 127, 156), sound: 'note3.wav'),
    TuneModel(color: Color.fromARGB(255, 185, 78, 113), sound: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 211, 62, 112), sound: 'note5.wav'),
    TuneModel(color: Color.fromARGB(255, 219, 20, 86), sound: 'note6.wav'),
    TuneModel(color: Color.fromARGB(255, 140, 33, 68), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.pink),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(Tune: e),
            )
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
