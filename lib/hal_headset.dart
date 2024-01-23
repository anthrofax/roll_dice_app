import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(20.0)),
          const Text(
            'Headset',
            style: TextStyle(fontSize: 30.0),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          Image.asset(
            'img/headset.png',
            width: 200.0,
          )
        ],
      ),
    );
  }
}
