import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HalamanSatu(),
    title: 'Latihan Navigasi',
    routes: <String, WidgetBuilder>{
      '/HalamanSatu': (BuildContext context) => const HalamanSatu(),
      '/HalamanDua': (BuildContext context) => const HalamanDua(),
    },
  ));
}

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[50],
          title: const Center(
            child: Text('Halaman Satu'),
          ),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(
              Icons.android,
              color: Colors.green[300],
              size: 50.0,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/HalamanDua');
            },
          ),
        ));
  }
}

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Center(
          child: Text('Halaman Dua'),
        ),
      ),
      body: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/HalamanSatu');
              },
              icon: const Icon(Icons.music_note,
                  color: Colors.black, size: 50.0))),
    );
  }
}
