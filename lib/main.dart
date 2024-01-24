import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:
        Home(data: List<String>.generate(300, (index) => "Ini data ke-${index+1}")),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key, required this.data});

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('List View'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.widgets),
              title: Text(data[index]),
            );
          }),
    );
  }
}
