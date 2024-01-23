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
          Image(image: NetworkImage('https://img.freepik.com/free-vector/realistic-front-view-smartphone-mockup-mobile-iphone-purple-frame-with-blank-white-display-vector_90220-959.jpg?size=338&ext=jpg&ga=GA1.1.632798143.1705968000&semt=ais'),)
        ],
      ),
    );
  }
}