import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 163, 87),
      body: Container(
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
      ),
    )),
  );
}
