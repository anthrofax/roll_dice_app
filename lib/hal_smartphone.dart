import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20.0)),
          Text('Phone', style: TextStyle(fontSize: 30.0),),
          Padding(padding: EdgeInsets.all(20.0)),
          Icon(Icons.smartphone, size: 90.0,)
        ],
      ),
    );
  }
}