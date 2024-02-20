import 'package:flutter/material.dart';

void main() {
  runApp(
     const MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 184, 163, 87),
            body: GradientContainer())),
  );
}

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
