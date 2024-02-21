import 'package:flutter/material.dart';
import 'package:learn_flutter/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 184, 163, 87),
            body: GradientContainer.purple())),
  );
}
