import 'package:flutter/material.dart';

class Computer extends StatelessWidget {
  const Computer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(20.0)),
          const Text(
            'Computer',
            style: TextStyle(fontSize: 30.0),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          Image.asset(
            'img/computer.png',
            width: 200.0,
          ),
        ],
      ),
    );
  }
}
