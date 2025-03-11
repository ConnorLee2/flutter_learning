import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colours;
  const GradientContainer(this.colours, {super.key});

  const GradientContainer.purple({super.key})
      : colours = const [Colors.deepPurple, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment, end: endAlignment, colors: colours),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
