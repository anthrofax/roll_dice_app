import 'package:flutter/material.dart';
import 'package:learn_flutter/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 184, 163, 87),
            body: GradientContainer(colors: [Colors.black, Colors.blue],))),
  );
}
