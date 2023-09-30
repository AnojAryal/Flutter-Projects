import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {Key? key}) : super(key: key);

  final List<Color> colors;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/dice-2.png',
          width: 250,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding:const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle:const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ])),
    );
  }
}
