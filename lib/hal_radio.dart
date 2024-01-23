import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20.0)),
          Text(
            'Radio',
            style: TextStyle(fontSize: 30.0),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/a7/5e/6f/a75e6f9d421416518c5c5fc5c58e0461.jpg'),
          )
        ],
      ),
    );
  }
}
