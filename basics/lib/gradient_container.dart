import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
