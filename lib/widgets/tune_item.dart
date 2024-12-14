import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TuneItem({super.key, required this.Tune});
  // ignore: non_constant_identifier_names
  final TuneModel Tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Tune.playSound();
        },
        child: Container(
          color: Tune.color,
        ),
      ),
    );
  }
}
