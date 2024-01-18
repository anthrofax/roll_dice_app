import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home:  HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override

  Widget build (BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black38,
          width: 200.0,
          height: 100.0,
          child: Icon(Icons.android, color: Colors.yellow[50], size: 70.0,),
        ),
      ),
    );
  }
}
