import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

void main() {
  runApp(const MaterialApp(
    title: "Fetch JSON Data",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List dataJSON;

  Future<String> ambilData() async {
    http.Response hasil = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts") ,
        headers: {"Accept": "application/json"});

    setState(() {
      dataJSON = json.decode(hasil.body);
    });

    return "";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("List Data JSON"),
        ),
        body: ListView.builder(
            // ignore: unnecessary_null_comparison
            itemCount: dataJSON.length,
            itemBuilder: (context, i) {
              return Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(dataJSON[i]['title'], style: TextStyle(fontSize: 20.0, color: Colors.blue[300]),textAlign: TextAlign.center,),
                    Text(dataJSON[i]['body'], style: const TextStyle(fontSize: 12.0,),textAlign: TextAlign.center,)
                  ],
                ),
              );
            }));
  }
}
