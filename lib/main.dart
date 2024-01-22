import 'package:flutter/material.dart';
import './hal_headset.dart' as Headset;
import './hal_komputer.dart' as Komputer;
import './hal_radio.dart' as Radio;
import './hal_smartphone.dart' as Smartphone;

void main() {
  runApp(const MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text("Daftar Elektronik"),
        bottom:  TabBar(
          controller: controller,
          tabs: const [
            Tab(icon: Icon(Icons.computer), text: 'Computer',),
            Tab(icon: Icon(Icons.headset), text: "Headset",),
            Tab(icon: Icon(Icons.radio), text: 'Radio',),
            Tab(icon: Icon(Icons.smartphone), text: 'Smartphone',),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Komputer.Computer(),
          Headset.Headset(),
          Radio.Radio(),
          Smartphone.Smartphone()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(icon: Icon(Icons.computer),),
            Tab(icon: Icon(Icons.headset),),
            Tab(icon: Icon(Icons.radio),),
            Tab(icon: Icon(Icons.smartphone),)
          ],
        ),
      ),
    );
  }
}
