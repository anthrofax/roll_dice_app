import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // StyledText(argText, {super.key}): outputText = argText;
  const StyledText(this.outputText, {super.key});

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
