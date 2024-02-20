import 'package:flutter/material.dart';
import 'package:learn_flutter/styled_text.dart';

  // Alignment? startAlignment;
 Alignment startAlignment = Alignment.topLeft;
 Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    // startAlignment = Alignment.topLeft;
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            colors: const [Colors.black, Colors.orange],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
